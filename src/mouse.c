/* vim: set sw=2 ts=2 expandtab: */

#include "mouse.h"

#include <stdbool.h>

#include "log.h"
#include "assert.h"
#include "video.h"

static bool initialized = false;

/* The followings are returned variables from mouse_get_state () */
uint16_t mouse_state_button = 0;
uint16_t mouse_state_x = 0;
uint16_t mouse_state_y = 0;

void
mouse_init ()
{
  if (true == initialized)
    {
      LOG_FATAL ("already initialized");
    }

  SDL_ShowCursor (SDL_DISABLE);

  initialized = true;
}

void
mouse_quit ()
{
  if (false == initialized)
  {
    LOG_FATAL ("not initialized");
  }

  initialized = false;
}

void
mouse_handle_event (const SDL_Event *event)
{
  if (false == initialized)
    {
      LOG_FATAL ("not initialized");
    }

  ASSERT (NULL != event);

  uint16_t mouse_isr_ax = 0; /* condition mask */
  uint16_t mouse_isr_bx = 0; /* button state */
  uint16_t mouse_isr_cx = 0; /* cursor column: 2 * x */
  uint16_t mouse_isr_dx = 0; /* cursor row */

  uint16_t x = 0;
  uint16_t y = 0;

  switch (event->type)
    {
    case SDL_MOUSEBUTTONDOWN:
      {
        const SDL_MouseButtonEvent * const ev = &event->button;
        switch (ev->button)
          {
          case SDL_BUTTON_LEFT:
            mouse_isr_ax |= (1 << 1);
            mouse_isr_bx |= (1 << 0);
            break;
          case SDL_BUTTON_RIGHT:
            mouse_isr_ax |= (1 << 3);
            mouse_isr_bx |= (1 << 1);
            break;
          default:
            break;
          }

        x = ev->x;
        y = ev->y;       
      }
      break;
    case SDL_MOUSEBUTTONUP:
      {
        const SDL_MouseButtonEvent * const ev = &event->button;
        switch (ev->button)
          {
          case SDL_BUTTON_LEFT:
            mouse_isr_ax |= (1 << 2);
            break;
          case SDL_BUTTON_RIGHT:
            mouse_isr_ax |= (1 << 4);
            break;
          default:
            break;
          }

        x = ev->x;
        y = ev->y;
      }
      break;
    case SDL_MOUSEMOTION:
      mouse_isr_ax |= (1 << 0);
      x = event->motion.x;
      y = event->motion.y;

      break;
    default:
      LOG_FATAL ("invalid event type");
    }

  mouse_isr_cx = x / video_get_ratio () * 2;
  mouse_isr_dx = y / video_get_ratio ();

  asm volatile ("call mouse_isr"
                : /* no output */
                : "a" (mouse_isr_ax), "b" (mouse_isr_bx),
                  "c" (mouse_isr_cx), "d" (mouse_isr_dx));
}

void
mouse_get_state ()
{
  if (false == initialized)
    {
      LOG_FATAL ("not initialized");
    }

  SDL_PumpEvents ();

  int x = 0;
  int y = 0;
  const uint8_t button_state = SDL_GetMouseState (&x, &y);

  if (1 < video_get_ratio ())
    {
      x /= video_get_ratio ();
      y /= video_get_ratio ();
    }

  mouse_state_x = x * 2;
  mouse_state_y = y;

  mouse_state_button = 0;
  if (SDL_BUTTON (SDL_BUTTON_LEFT) & button_state)
    {
      mouse_state_button |= 1;
    }
  if (SDL_BUTTON (SDL_BUTTON_RIGHT) & button_state)
    {
      mouse_state_button |= 2;
    }
}

void
mouse_set_position (uint32_t x, uint32_t y)
{
  x &= 0xffff;
  y &= 0xffff;

  ASSERT (VIDEO_WIDTH > x);
  ASSERT (VIDEO_HEIGHT > y);

  if (1 < video_get_ratio ())
    {
      x *= video_get_ratio ();
      y *= video_get_ratio ();
    }

  SDL_WarpMouse (x, y);
}
