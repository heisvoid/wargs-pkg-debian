/* vim: set sw=2 ts=2 expandtab: */

#ifdef HAVE_CONFIG_H
#include <config.h>
#endif

#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/wait.h>
#include <string.h>

#include "conf.h"
#include "filepath.h"
#include "assert.h"
#include "util.h"

static const char * const default_ttl = PACKAGE"-ttl";
static const char * const default_chp = PACKAGE"-chp";
static const char * const default_combatii = PACKAGE"-combatii";
static const char * const default_pack = PACKAGE"-pack";

enum spawn_type
{
  SPAWN_TTL,
  SPAWN_CHP,
  SPAWN_COMBATII,
  SPAWN_PACK
};

static int child_exit_status = 0;

#define SPAWN(type, ...)                                                \
    {                                                                   \
      const char *exe_ = NULL;                                          \
      const char *exe_path_ = NULL;                                     \
      switch (type)                                                     \
        {                                                               \
        case SPAWN_TTL:                                                 \
          exe_ = default_ttl;                                           \
          exe_path_ = conf_get_ttl ();                                  \
          break;                                                        \
        case SPAWN_CHP:                                                 \
          exe_ = default_chp;                                           \
          exe_path_ = conf_get_chp ();                                  \
          break;                                                        \
        case SPAWN_COMBATII:                                            \
          exe_ = default_combatii;                                      \
          exe_path_ = conf_get_combatii ();                             \
          break;                                                        \
        case SPAWN_PACK:                                                \
          exe_ = default_pack;                                          \
          exe_path_ = conf_get_pack ();                                 \
          break;                                                        \
        default:                                                        \
          LOG_FATAL ("unexpected spawn error");                         \
        }                                                               \
                                                                        \
      const pid_t child_pid_ = fork ();                                 \
      ASSERT (-1 != child_pid_);                                        \
                                                                        \
      if (0 == child_pid_)                                              \
        {                                                               \
          int ret_ = 0;                                                 \
                                                                        \
          if (NULL != exe_path_)                                        \
            {                                                           \
              ret_ = execl (exe_path_, exe_path_, ##__VA_ARGS__, NULL); \
            }                                                           \
          else                                                          \
            {                                                           \
              ret_ = execlp (exe_, exe_, ##__VA_ARGS__, NULL);          \
            }                                                           \
                                                                        \
            abort ();                                                   \
        }                                                               \
                                                                        \
      int status_ = 0;                                                  \
      const pid_t pid_ = wait (&status_);                               \
      ASSERT (pid_ == child_pid_);                                      \
                                                                        \
      if (!WIFEXITED (status_))                                         \
        {                                                               \
          LOG_FATAL ("failed to run: %s",                               \
                     (NULL != exe_path_) ? exe_path_ : exe_);           \
        }                                                               \
                                                                        \
      child_exit_status = WEXITSTATUS (status_);                        \
    }

static bool
does_file_exist (const char *path)
{
  ASSERT (NULL != path);

  struct stat fs;
  const int ret = stat (path, &fs);
  if (0 != ret)
    {
      return false;
    }

  return S_ISREG (fs.st_mode);
}

enum
{
  /* 8: max length of dos file name
   * 1: a dot
   * 3: max length of dos file extension name
   * 1: '\0'
   */
  DOLLAR_SIZE = 8 + 1 + 3 + 1
};

static char dollar[DOLLAR_SIZE];

static void
read_dollar ()
{
  const char * const dollar_file_path = filepath_transform ("$");

  FILE * const dollar_file = fopen (dollar_file_path, "rb");
  ASSERT (NULL != dollar_file);

  free ((void *) dollar_file_path);

  char * const ret = fgets (dollar, DOLLAR_SIZE, dollar_file);
  ASSERT (ret == dollar);
  
  fclose (dollar_file);
}

int
main ()
{
  conf_init ();
  filepath_init (conf_get_root ());

  const char * const file_list[] = {"ending", "menu", "gameover", "load1",
      "load2", "load3", "load4", "load5", NULL};

  char * const dos_path = xmalloc (PATH_MAX);

  size_t i = 0;
  for (i = 0; NULL != file_list[i]; i++)
    {
      xsnprintf (dos_path, PATH_MAX, "cstldata\\%s", file_list[i]);

      const char * const native_path = filepath_transform (dos_path);

      if (does_file_exist (native_path))
        {
          const int ret = unlink (native_path);
          ASSERT (0 == ret);
        }

      free ((void *) native_path);
    }

  free (dos_path);

  const char * const dollar_file_path = filepath_transform ("$");
  const char * const load_file_path = filepath_transform ("LOAD");

  while (true)
    {
      SPAWN (SPAWN_TTL);
      if (10 == child_exit_status)
        {
          break;
        }

      if (false == does_file_exist (dollar_file_path))
        {
          break;
        }

      bool end = false;

      while (true)
        {
          do
            {
              unlink (dollar_file_path);

              SPAWN (SPAWN_COMBATII);
            }
          while (255 != child_exit_status && 10 != child_exit_status);

          if (10 == child_exit_status)
            {
              end = true;

              break;
            }

          read_dollar ();
          if (0 == strcmp ("EXIT", dollar))
            {
              break;
            }

          unlink (dollar_file_path);

          SPAWN (SPAWN_CHP, "p");
          if (10 == child_exit_status)
            {
              end = true;

              break;
            }

          if (does_file_exist (load_file_path))
            {
              break;
            }

          read_dollar ();
          if (0 == strcmp ("EXIT", dollar))
            {
              break;
            }

          unlink (dollar_file_path);

          const char * const dot = strchr (dollar, '.');
          if (NULL != dot && 0 == strcasecmp (dot, ".sce"))
            {
              SPAWN (SPAWN_COMBATII, dollar);
              if (10 == child_exit_status)
                {
                  end = true;

                  break;
                }

              if (255 == child_exit_status)
                {
                  read_dollar ();
                  if (0 == strcmp ("EXIT", dollar))
                    {
                      break;
                    }
                }
            }
          else
            {
              SPAWN (SPAWN_PACK, "SM", dollar);
              if (10 == child_exit_status)
                {
                  end = true;

                  break;
                }
            }
        }

      if (true == end)
        {
          break;
        }
    }

  free ((void *) load_file_path);
  free ((void *) dollar_file_path);

  filepath_quit ();
  conf_quit ();

  return 0;
}
