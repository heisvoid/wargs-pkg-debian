/* vim: set sw=2 ts=2 expandtab: */

#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include <string.h>
#include <time.h>
#include <errno.h>
#include <glob.h>

#include "assert.h"
#include "filepath.h"
#include "keyboard.h"
#include "util.h"
#include "exit.h"

static FILE *talk_file = NULL;

int
dos_open (const char *path, int flags)
{
  ASSERT (NULL != path);

  enum
  {
    DOS_O_RDONLY      = 0x000,
    DOS_O_WRONLY      = 0x001,
    DOS_O_RDWR        = 0x002,
    DOS_O_APPEND      = 0x010,
    DOS_O_CREAT       = 0x020,
    DOS_O_TRUNC       = 0x040,
    DOS_O_NOINHERIT   = 0x080,
    DOS_O_TEXT        = 0x100,
    DOS_O_BINARY      = 0x200,
    DOS_O_EXCL        = 0x400
  };

#ifndef O_BINARY
#define O_BINARY 0
#endif

  static const int flag_mappings[][2] = {
    {DOS_O_RDONLY,      O_RDONLY},
    {DOS_O_WRONLY,      O_WRONLY},
    {DOS_O_RDWR,        O_RDWR},
    {DOS_O_APPEND,      O_APPEND},
    {DOS_O_CREAT,       O_CREAT},
    {DOS_O_TRUNC,       O_TRUNC},
    {DOS_O_NOINHERIT,   0},
    {DOS_O_TEXT,        0},
    {DOS_O_BINARY,      O_BINARY},
    {DOS_O_EXCL,        O_EXCL},
    {-1,                -1}
  };

  int native_flags = 0;
  size_t i = 0;
  for (i = 0; -1 != flag_mappings[i][0]; i++)
    {
      if (0 != (flag_mappings[i][0] & flags))
        {
          native_flags |= flag_mappings[i][1];
        }
    }

  const char * const native_path = filepath_transform (path);

  const int ret = open (native_path, native_flags);

  free ((void *) native_path);

  return ret;
}

int
dos_read (int fd, void *buf, unsigned int len)
{
  ASSERT (2 < fd);
  ASSERT (NULL != buf);

  ssize_t read_len = 0;
  while (read_len < len)
    {
      const ssize_t ret = read (fd, buf + read_len, len - read_len);
      ASSERT (0 <= ret);

      if (0 == ret)
        {
          /* EOF */
          break;
        }

      read_len += ret;
    }

  return read_len;
}

int
dos_close (int fd)
{
  if (2 < fd)
    {
      const int ret = close (fd);
      ASSERT (0 == ret);
    }

  return 0;
}

void *
dos_malloc (size_t size)
{
  ASSERT (0 < size);

  void *p = malloc (size);
  ASSERT (NULL != p);

  return p;
}

FILE *
dos_fopen (const char *path, const char *mode)
{
  ASSERT (NULL != path);
  ASSERT (NULL != mode);

  const char * const native_path = filepath_transform (path);

  FILE * const file = fopen (native_path, mode);

  char * const tmp = strdup (native_path);
  const char * const bn = basename (tmp);
  if (0 == strcmp ("talk.tbl", bn))
    {
      talk_file = file;
    }

  free ((void *) native_path);

  return file;
}

void
dos_free (void *p)
{
  ASSERT (NULL != p);

  free (p);
}

struct dos_registers
{
  uint32_t eax;
  uint32_t ebx;
  uint32_t ecx;
  uint32_t edx;
  uint32_t esi;
  uint32_t edi;
  uint32_t eflags;
} __attribute__ ((packed));

static void
print_interrupt_info (int n, const struct dos_registers *regs)
{
  printf ("dos interrupt via int386/int386x ()\n"
          "  int: 0x%02"PRIx8"\n"
          "  eax: 0x%08"PRIx32"\n"
          "  ebx: 0x%08"PRIx32"\n"
          "  ecx: 0x%08"PRIx32"\n"
          "  edx: 0x%08"PRIx32"\n"
          "  esi: 0x%08"PRIx32"\n"
          "  edi: 0x%08"PRIx32"\n"
          "  eflags: 0x%08"PRIx32"\n",
          n, regs->eax, regs->ebx, regs->ecx, regs->edx, regs->esi,
          regs->edi, regs->eflags);

  if (0x31 == n && 0x0300 == (0xffff & regs->eax))
    {
      /* simulate real mode interrupt */

      struct dpmi_real_mode_call_structure
      {
        uint32_t edi;
        uint32_t esi;
        uint32_t ebp;
        uint32_t reserved;
        uint32_t ebx;
        uint32_t edx;
        uint32_t ecx;
        uint32_t eax;
        uint16_t flags;
        uint16_t es;
        uint16_t ds;
        uint16_t fs;
        uint16_t gs;
        uint16_t ip;
        uint16_t cs;
        uint16_t sp;
        uint16_t ss;
      } __attribute__ ((packed));

      const struct dpmi_real_mode_call_structure * const s =
          (const struct dpmi_real_mode_call_structure * const) regs->edi;

      printf ("\n");
      printf ("  dpmi real mode call structure\n"
              "    edi: 0x%08"PRIx32"\n"
              "    esi: 0x%08"PRIx32"\n"
              "    ebp: 0x%08"PRIx32"\n"
              "    reserved: 0x%08"PRIx32"\n"
              "    ebx: 0x%08"PRIx32"\n"
              "    edx: 0x%08"PRIx32"\n"
              "    ecx: 0x%08"PRIx32"\n"
              "    eax: 0x%08"PRIx32"\n"
              "    flags: 0x%04"PRIx16"\n"
              "    es: 0x%04"PRIx16"\n"
              "    ds: 0x%04"PRIx16"\n"
              "    fs: 0x%04"PRIx16"\n"
              "    gs: 0x%04"PRIx16"\n"
              "    ip: 0x%04"PRIx16"\n"
              "    cs: 0x%04"PRIx16"\n"
              "    sp: 0x%04"PRIx16"\n"
              "    ss: 0x%04"PRIx16"\n",
              s->edi, s->esi, s->ebp, s->reserved, s->ebx, s->edx,
              s->ecx, s->eax, s->flags, s->es, s->ds, s->fs, s->gs,
              s->ip, s->cs, s->sp, s->ss);
    }
}

int __attribute__ ((noreturn))
dos_int386 (int n, const struct dos_registers *in, struct dos_registers *out)
{
  print_interrupt_info (n, in);

  abort ();
}

int __attribute__ ((noreturn))
dos_int386x (int n, const struct dos_registers *in, struct dos_registers *out,
             void *s)
{
  print_interrupt_info (n, in);

  abort ();
}

void *
dos_memset (void *s, int c, size_t n)
{
  ASSERT (NULL != s);
  ASSERT (0 < n);

  return memset (s, c, n);
}

long int
dos_ftell (FILE *f)
{
  ASSERT (NULL != f);

  const long int offset = ftell (f);
  ASSERT (-1 != offset);

  return offset;
}

int
dos_fseek (FILE *f, long int offset, int whence)
{
  ASSERT (NULL != f);

  const int ret = fseek (f, offset, whence);
  ASSERT (0 == ret);

  return ret;
}

size_t
dos_fread (void *buf, size_t size, size_t nmemb, FILE *f)
{
  ASSERT (NULL != buf);
  ASSERT (0 < size);
  ASSERT (0 < nmemb);
  ASSERT (NULL != f);

  size_t total_read = 0;
  while (nmemb > total_read)
    {
      const size_t r = fread (buf + total_read * size, size,
                              nmemb - total_read, f);
      if (nmemb - total_read > r)
        {
          if (0 != ferror (f))
            {
              LOG_FATAL ("fread error");
            }

          if (0 != feof (f))
            {
              total_read += r;           

              break;
            }
        }

      total_read += r;
    }

  return total_read;
}

int
dos_fgetc (FILE *f)
{
  ASSERT (NULL != f);

  int c = fgetc (f);

  if (NULL != talk_file && talk_file == f && 0x0d == c)
    {
      /* When talk.tbl is read, carriage return ('\r')
       * followed by line feed ('\n') is skipped.
       */
      c = fgetc (f);
      ASSERT (0x0a == c);
    }

  return c;
}

int
dos_unlink (const char *path)
{
  ASSERT (NULL != path);

  const char * const native_path = filepath_transform (path);
  const int ret = unlink (native_path);
  free ((void *) native_path);

  return ret;
}

off_t
dos_lseek (int fd, off_t offset, int whence)
{
  ASSERT (2 < fd);

  const off_t ret = lseek (fd, offset, whence);
  ASSERT ((off_t) -1 != ret);

  return ret;
}

int
dos_creat (const char *path, int mode)
{
  ASSERT (NULL != path);

  const char * const native_path = filepath_transform (path);

  const int fd = creat (native_path, S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH);
  ASSERT (-1 != fd);

  free ((void *) native_path);

  return fd;
}

int
dos_write (int fd, const void *buf, unsigned int len)
{
  ASSERT (2 < fd);
  ASSERT (NULL != buf);

  int total_written = 0;
  while (total_written < len)
    {
      const ssize_t written = write (fd, ((int8_t *) buf) + total_written,
                                     len - total_written);
      if (0 > written)
        {
          const int e = errno;
          ASSERT (EFAULT == e);

          break;
        }

      total_written += written;
    }

  return total_written;
}

char *
dos_strstr (const char *haystack, const char *needle)
{
  ASSERT (NULL != haystack);
  ASSERT (NULL != needle);

  return strstr (haystack, needle);
}

int
dos_vsprintf (char *buf, const char *format, va_list *ap)
{
  ASSERT (NULL != buf);
  ASSERT (NULL != format);
  ASSERT (NULL != ap);

  const int ret = vsprintf (buf, format, *ap);
  ASSERT (0 <= ret);

  return ret;
}

time_t
dos_mktime (struct tm *tm)
{
  ASSERT (NULL != tm);

  const time_t t = mktime (tm);
  ASSERT ((time_t) -1 != t);

  return t;
}

int
dos_getch ()
{
  return keyboard_get_ascii ();
}

off_t
dos_tell (int fd)
{
  const off_t offset = lseek (fd, 0, SEEK_CUR);
  ASSERT ((off_t) -1 != offset);

  return offset;
}

int
dos_strcmp (const char *s1, const char *s2)
{
  ASSERT (NULL != s1);
  ASSERT (NULL != s2);

  return strcmp (s1, s2);
}

char *
dos_strrchr (const char *s, int c)
{
  ASSERT (NULL != s);

  return strrchr (s, c);
}

int
dos_fclose (FILE *f)
{
  int ret = 0;

  if (NULL != f)
    {
      ret = fclose (f);
      ASSERT (0 == ret);

      if (talk_file == f)
        {
          talk_file = NULL;
        }
    }

  return ret;
}

void *
dos_memmove (void *dst, const void *src, size_t len)
{
  ASSERT (NULL != dst);
  ASSERT (NULL != src);

  return memmove (dst, src, len);
}

int
dos_fputc (int c, FILE *f)
{
  ASSERT (NULL != f);

  const int ret = fputc (c, f);
  ASSERT (EOF != ret);

  return ret;
}

static glob_t *glob_buf = NULL;
static size_t glob_index = 0;

static void
fill_dta (const char *file_path, int8_t *dta)
{
  ASSERT (NULL != file_path);
  ASSERT (NULL != dta);

  struct stat fs;
  const int ret = stat (file_path, &fs);
  ASSERT (0 == ret);

  /* dos file attribute
   * bit 0: read only file
   * bit 1: hidden file
   * bit 2: system file
   * bit 3: volume label
   * bit 4: sub-directory
   * bit 5: archive
   * bit 6: reserved
   * bit 7: reserved
   *
   * reference
   * http://www.computerhope.com/attribhl.htm
   * http://www.xxcopy.com/xxcopy06.htm
   * http://www.pcguide.com/ref/hdd/file/fatAttributes-c.html
   */

  *(dta + 0x15) = 0;
  if (0 == (S_IWUSR && fs.st_mode))
    {
      *(dta + 0x15) |= 0x01;
    }
  if (S_ISDIR (fs.st_mode))
    {
      *(dta + 0x15) |= 0x10;
    }
  
  const struct tm * const t = localtime (&fs.st_mtime);

  *(int16_t *)(dta + 0x16) = 0;
  *(int16_t *)(dta + 0x16) |= ((t->tm_hour << 11)
                               | (t->tm_min << 5)
                               | (t->tm_sec / 2));

  *(int16_t *)(dta + 0x18) = 0;
  *(int16_t *)(dta + 0x18) |= (((80 + t->tm_year) << 9)
                               | ((1 + t->tm_mon) << 5)
                               | t->tm_mday);

  *(int32_t *)(dta + 0x1a) = fs.st_size;

  char * const tmp = strdup (file_path);
  ASSERT (NULL != tmp);

  const char * const bn = basename (tmp);
  ASSERT (13 > strlen (bn));

  strcpy ((char *) (dta + 0x1e), bn);

  free (tmp);
}

int
dos_findfirst (const char *file_spec, int attr_mask, int8_t *dta)
{
  ASSERT (NULL != file_spec);
  ASSERT (NULL != dta);

  const char *native_file_spec = NULL;
  if (0 == strcmp ("*.*", file_spec))
    {
      native_file_spec = filepath_transform ("*");
    }
  else
    {
      native_file_spec = filepath_transform (file_spec);
    }

  if (NULL != glob_buf)
    {
      globfree (glob_buf);
      free (glob_buf);
    }
  
  glob_buf = xmalloc (sizeof (glob_t));
  glob_index = 1;

  const int ret = glob (native_file_spec, 0, NULL, glob_buf);
  if (GLOB_NOMATCH == ret)
    {
      /* file not found.
       * http://www.delorie.com/djgpp/doc/rbinter/it/80/16.html
       */
      return 2;
    }

  ASSERT (0 == ret);
  ASSERT (0 <  glob_buf->gl_pathc);

  fill_dta (glob_buf->gl_pathv[0], dta);

  free ((void *) native_file_spec);

  return 0;
}

int
dos_findnext (int8_t *dta)
{
  ASSERT (NULL != dta);

  if (NULL == glob_buf)
    {
      LOG_FATAL ("firdfirst should be called");
    }

  if (glob_buf->gl_pathc <= glob_index)
    {
      return 2;
    }

  fill_dta (glob_buf->gl_pathv[glob_index], dta);

  glob_index++;

  return 0;
}

void *
dos_memcpy (void *dst, const void *src, size_t len)
{
  ASSERT (NULL != dst);
  ASSERT (NULL != src);
  ASSERT (0 < len);

  return memcpy (dst, src, len);
}

char *
dos_strcat (char *dst, const char *src)
{
  ASSERT (NULL != dst);
  ASSERT (NULL != src);

  return strcat (dst, src);
}

size_t
dos_strlen (const char *s)
{
  ASSERT (NULL != s);

  return strlen (s);
}

char *
dos_strcpy (char *dst, const char *src)
{
  ASSERT (NULL != dst);
  ASSERT (NULL != src);

  return strcpy (dst, src);
}

void
dos_exit (int status)
{
  exit_write (status);

  exit (status);
}
