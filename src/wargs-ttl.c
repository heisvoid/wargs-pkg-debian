/* vim: set sw=2 ts=2 expandtab: */

#include <string.h>
#include <stdlib.h>

#include "game.h"

int
main (int argc, char *argv[])
{
  char *process_name = NULL;

  const char * const argv0 = strdup (argv[0]);
  if (NULL != argv0)
    {
      process_name = basename (argv0);
    }

  game_init (process_name);

  free ((void *) argv0);

  int ret = 0;
  asm volatile ("call ttl" : "=a" (ret));

  game_quit ();

  return ret;
}
