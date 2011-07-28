/* vim: set sw=2 ts=2 expandtab: */

#include "exit.h"

#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>

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
exit_clean ()
{
  const char * const native_path = filepath_transform ("exit");
  unlink (native_path);
  free ((void *) native_path);
}
