/* vim: set sw=2 ts=2 expandtab: */

#ifndef EXIT_H
#define EXIT_H

#include <stdbool.h>

extern void exit_write (int status);
extern void exit_clear ();
extern bool exit_exists ();

#endif
