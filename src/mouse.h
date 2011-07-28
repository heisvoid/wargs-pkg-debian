/* vim: set sw=2 ts=2 expandtab: */

#ifndef MOUSE_H
#define MOUSE_H

#include <SDL.h>

extern void mouse_init ();
extern void mouse_quit ();

extern void mouse_handle_event (const SDL_Event *event);

#endif
