/* vim: set sw=2 ts=2 expandtab: */

#ifndef VIDEO_H
#define VIDEO_H

#include <stdint.h>
#include <stdbool.h>

enum
{
  VIDEO_WIDTH = 320,
  VIDEO_HEIGHT = 200
};

extern void video_init (uint8_t r, bool center);
extern void video_quit ();
extern void video_update ();

extern uint8_t video_get_ratio ();

#endif
