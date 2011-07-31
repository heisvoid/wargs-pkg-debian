/* vim: set sw=2 ts=2 expandtab: */

#include "log.h"

#include <string.h>
#include <libgen.h>
#include <stdio.h>
#include <stdarg.h>
#include <stdlib.h>
#include <unistd.h>

#include "util.h"
#include "filepath.h"

static const char *name = NULL;
static bool verbose = false;

void
log_set_name (const char *n)
{
  if (NULL != name)
    {
      free ((void *) name);
      name = NULL;
    }

  if (NULL != n)
    {
      name = strdup (n);
    }
}

void
log_set_verbose (bool v)
{
  verbose = v;
}

#define LOG_COMMON()                                          \
    {                                                         \
       if (NULL == file || 1 > line || NULL == format)        \
        {                                                     \
          return;                                             \
        }                                                     \
                                                              \
      const char * const file_name = xbasename (file);        \
      if (NULL == file_name)                                  \
        {                                                     \
          return;                                             \
        }                                                     \
                                                              \
      if (NULL != name)                                       \
        {                                                     \
          fprintf (stderr, "%s: ", name);                     \
        }                                                     \
                                                              \
      fprintf (stderr, "%s: %d: ", file_name, line);          \
                                                              \
      va_list ap;                                             \
      va_start (ap, format);                                  \
      vfprintf (stderr, format, ap);                          \
      va_end (ap);                                            \
                                                              \
      fprintf (stderr, "\n");                                 \
    }

void
log_error (const char *file, int line, const char *format, ...)
{
  LOG_COMMON ();
}

void
log_fatal (const char *file, int line, const char *format, ...)
{
  LOG_COMMON ();

  abort ();
}

void
log_wrapper (const char *format, ...)
{
  if (NULL == format || false == verbose)
    {
      return;
    }

  if (NULL != name)
    {
      printf("%s: ", name);
    }

  va_list ap;
  va_start (ap, format);
  vprintf (format, ap);
  va_end (ap);

  fflush (stdout);
}
