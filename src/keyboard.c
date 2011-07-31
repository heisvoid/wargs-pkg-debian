/* vim: set sw=2 ts=2 expandtab: */

#include "keyboard.h"

#include <stdbool.h>

#include <SDL.h>

#include "assert.h"
#include "list.h"
#include "util.h"

enum
{
  KEYBOARD_BUFFER_LEN = 1
};

struct key
{
  struct list_elem elem;

  SDLKey sym;
};

static bool initialized = false;
static struct list keyboard_buffer;

void
keyboard_init ()
{
  if (true == initialized)
    {
      LOG_FATAL ("already initialized");
    }

  list_init (&keyboard_buffer);

  initialized = true;
}

void
keyboard_quit ()
{
  if (false == initialized)
    {
      LOG_FATAL ("not initialized");
    }

  while (false == list_empty (&keyboard_buffer))
    {
      struct key *key = list_entry (list_pop_front (&keyboard_buffer),
                                    struct key, elem);
      free (key);
    }

  initialized = false;
}

int
sym_to_ascii (SDLKey sym)
{
  switch (sym)
    {
    case SDLK_ESCAPE: return 0x1b;
    case SDLK_RETURN: return 0x0d;
    case SDLK_SPACE: return 0x20;
    default: return 0x00;
    }
}

int
keyboard_get_ascii ()
{
  if (false == initialized)
    {
      LOG_FATAL ("not initialized");
    }

  if (list_empty (&keyboard_buffer))
    {
      return 0x00;
    }

  struct key *key = list_entry (list_pop_front (&keyboard_buffer),
                                struct key, elem);

  return sym_to_ascii (key->sym);
}

static uint8_t
sym_to_scan_code (SDLKey sym)
{
  switch (sym)
    {
    case SDLK_ESCAPE: return 0x01;
    case SDLK_RETURN: return 0x1c;
    case SDLK_SPACE: return 0x39;
    default: return 0x00;
    }
}

void
keyboard_handle_event (const SDL_KeyboardEvent *event)
{
  if (false == initialized)
    {
      LOG_FATAL ("not initialized");
    }

  ASSERT (NULL != event);

  if (SDL_KEYDOWN == event->type)
    {
      if (KEYBOARD_BUFFER_LEN == list_len (&keyboard_buffer))
        {
          list_pop_front (&keyboard_buffer);
        }

      struct key *key = xmalloc (sizeof (struct key));
      key->sym = event->keysym.sym;
      list_push_back (&keyboard_buffer, &key->elem);
    }

  uint8_t scan_code = sym_to_scan_code (event->keysym.sym);
  if (SDL_KEYUP == event->type)
    {
      scan_code += 0x80;
    }

  asm volatile ("call keyboard_isr" : : "a" (scan_code));
}

int
keyboard_has_input ()
{
  return list_empty (&keyboard_buffer) ? 0 : 1;
}
