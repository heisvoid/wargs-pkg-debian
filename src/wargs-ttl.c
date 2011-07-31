/* vim: set sw=2 ts=2 expandtab: */

#include <string.h>
#include <stdlib.h>

#include "game.h"
#include "util.h"

int
main (int argc, char *argv[])
{
  const char * const process_name = xbasename (argv[0]);
  game_init (process_name);

  int ret = 0;
  asm volatile ("call ttl" : "=a" (ret));

  game_quit ();

  return ret;
}
