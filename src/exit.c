/* vim: set sw=2 ts=2 expandtab: */

#include "exit.h"

#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>

#include "filepath.h"
#include "assert.h"

void
exit_write (int status)
{
  const char * const native_path = filepath_transform ("exit");
  FILE * const f = fopen(native_path, "wb+");
  ASSERT (NULL != f);

  free ((void *) native_path);

  const size_t written = fwrite (&status, sizeof (int), 1, f);
  ASSERT (1 == written);

  const int ret = fclose (f);
  ASSERT (0 == ret);
}

void
exit_clear ()
{
  const char * const native_path = filepath_transform ("exit");
  unlink (native_path);
  free ((void *) native_path);
}

bool
exit_exists ()
{
  const char * const native_path = filepath_transform ("exit");

  struct stat fs;
  const int ret = stat (native_path, &fs);

  free ((void *) native_path);

  if (0 != ret)
    {
      return false;
    }

  if (!S_ISREG(fs.st_mode))
    {
      return false;
    }

  return true;
}
