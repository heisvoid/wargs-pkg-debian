/* vim: set sw=2 ts=2 expandtab: */

#ifdef HAVE_CONFIG_H
#include <config.h>
#endif

#include "game.h"

#include <SDL.h>

#include "conf.h"
#include "assert.h"
#include "video.h"
#include "mouse.h"
#include "filepath.h"
#include "keyboard.h"
#include "util.h"
#include "audio.h"
#include "exit.h"

enum
{
  FPS_LOW = 40,
  FPS_HIGH = 3 * FPS_LOW
};

static bool initialized = false;
static uint32_t fps = FPS_LOW;
static bool pit_isr_is_installed = false;
static bool pit_isr_0_is_installed = false;
static bool keyboard_isr_is_installed = false;
static bool mouse_isr_is_installed = false;

void
game_cfg_setup ()
{
  extern int8_t game_cfg_speed;

  game_cfg_speed = (true == conf_get_fast () ? 1 : 0);
}

static void
game_set_fps (uint32_t n)
{
  ASSERT (0 < n);

  fps = n;
}

void
game_set_fps_low ()
{
  game_set_fps (FPS_LOW);
}

void
game_set_fps_high ()
{
  game_set_fps (FPS_HIGH);
}

void
game_set_fps_hicom ()
{
  game_set_fps (23);
}

void
game_set_fps_softmax ()
{
  game_set_fps (13);
}

static void
handle_events ()
{
  SDL_Event event;

  while (1 == SDL_PollEvent (&event))
    {
      switch (event.type)
        {
        case SDL_KEYDOWN:
        case SDL_KEYUP:
          if (keyboard_isr_is_installed)
            {
              keyboard_handle_event (&event.key);
            }
          break;
        case SDL_MOUSEBUTTONDOWN:
        case SDL_MOUSEBUTTONUP:
        case SDL_MOUSEMOTION:
          if (mouse_isr_is_installed)
            {
              mouse_handle_event (&event);
            }
          break;
        case SDL_QUIT:
          {
            enum
            {
              EXIT_STATUS = 10
            };

            exit_write (EXIT_STATUS);
            game_quit ();

            exit (EXIT_STATUS);
          }
        default:
          break;
        }
    }
}

static void
update_pit_isr ()
{
  if (pit_isr_is_installed)
    {
      asm volatile ("call pit_isr");
    }

  if (pit_isr_0_is_installed)
    {
#ifdef COMBATII
      asm volatile ("call pit_isr_0");
#endif
    }
}

void
game_update ()
{
  if (false == initialized)
    {
      LOG_FATAL ("not initialized");
    }

  static uint32_t last_frame_ticks = 0;

  update_pit_isr ();
  handle_events ();

  if (0 < last_frame_ticks)
    {
      enum
      {
        DELAY_CHUNK = 5
      };

      int32_t delay = 1000 / fps - (SDL_GetTicks () - last_frame_ticks);
      while (0 < delay)
        {
          const uint32_t t = SDL_GetTicks ();

          update_pit_isr ();
          handle_events ();

          SDL_Delay (DELAY_CHUNK);

          delay -= (SDL_GetTicks () - t);
        }
    }

  video_update ();

  last_frame_ticks = SDL_GetTicks ();
}

void
game_init (const char *name)
{
  if (true == initialized)
    {
      LOG_FATAL ("already initialized");
    }

  conf_init ();

  log_set_name (name);
  log_set_verbose (conf_get_verbose ());

  filepath_init (conf_get_root ());
  video_init (conf_get_ratio (), conf_get_center ());
  keyboard_init ();

  char * const music_root = xmalloc (PATH_MAX);
  xsnprintf (music_root, PATH_MAX, "%s%cmusic", conf_get_root (),
             FILEPATH_SEPARATOR);
  audio_init (music_root);
  free (music_root);

  if (false == conf_get_music ())
    {
      audio_music_mute ();
    }
  if (false == conf_get_sound ())
    {
      audio_sound_mute ();
    }

  mouse_init ();

  pit_isr_is_installed = false;

  if (conf_get_fast ())
    {
      game_set_fps_high ();
    }
  else
    {
      game_set_fps_low ();
    }

  exit_clean ();

  initialized = true;
}

void
game_quit ()
{
  if (false == initialized)
    {
      LOG_FATAL ("not initialized");
    }

  mouse_quit ();
  audio_quit ();
  keyboard_quit ();
  video_quit ();
  filepath_quit ();
  conf_quit ();

  initialized = false;
}

void
game_install_pit_isr ()
{
  if (false == initialized)
    {
      LOG_FATAL ("not initialized");
    }

  pit_isr_is_installed = true;
}

void
game_uninstall_pit_isr ()
{
  if (false == initialized)
    {
      LOG_FATAL ("not initialized");
    }

  pit_isr_is_installed = false;
}

void
game_install_pit_isr_0 ()
{
#ifdef COMBATII
  if (false == initialized)
    {
      LOG_FATAL ("not initialized");
    }

  pit_isr_0_is_installed = true;
#endif
}

void
game_uninstall_pit_isr_0 ()
{
#ifdef COMBATII
  if (false == initialized)
    {
      LOG_FATAL ("not initialized");
    }

  pit_isr_0_is_installed = false;
#endif
}

void
game_install_keyboard_isr ()
{
  if (false == initialized)
    {
      LOG_FATAL ("not initialized");
    }

  keyboard_isr_is_installed = true;
}

void
game_uninstall_keyboard_isr ()
{
  if (false == initialized)
    {
      LOG_FATAL ("not initialized");
    }

  keyboard_isr_is_installed = false;
}

void
game_install_mouse_isr ()
{
  if (false == initialized)
    {
      LOG_FATAL ("not initialized");
    }

  mouse_isr_is_installed = true;
}

void
game_copy (int x, int y, const int8_t *src, int8_t *dst)
{
  ASSERT (NULL != src);
  ASSERT (NULL != dst);

  const uint16_t src_width = *((uint16_t *) src);
  const uint16_t src_height = *(((uint16_t *) src) + 1);

  src += 4;

  int src_y = 0;
  for (src_y = 0; src_y < src_height; src_y++)
    {
      const int dst_y = y + src_y;
      if (0 > dst_y || VIDEO_HEIGHT <= dst_y)
        {
          continue;
        }

      int src_x = 0;
      for (src_x = 0; src_x < src_width; src_x++)
        {
          const int dst_x = x + src_x;
          if (0 <= dst_x && VIDEO_WIDTH > dst_x)
            {
              const int8_t data = *(src + src_x + src_width * src_y);
              *(dst + dst_x + VIDEO_WIDTH * dst_y) = data;
            }
        }
    }
}

void
game_copy_ff (int x, int y, const int8_t *src, int8_t *dst)
{
  ASSERT (NULL != src);
  ASSERT (NULL != dst);

  const uint16_t src_width = *((uint16_t *) src);
  const uint16_t src_height = *(((uint16_t *) src) + 1);

  src += 4;

  int src_y = 0;
  for (src_y = 0; src_y < src_height; src_y++)
    {
      const int dst_y = y + src_y;
      if (0 > dst_y || VIDEO_HEIGHT <= dst_y)
        {
          continue;
        }

      int src_x = 0;
      for (src_x = 0; src_x < src_width; src_x++)
        {
          const int dst_x = x + src_x;
          if (0 <= dst_x && VIDEO_WIDTH > dst_x)
            {
              const int8_t data = *(src + src_x + src_width * src_y);
              if (-1 != data)
                {
                  *(dst + dst_x + VIDEO_WIDTH * dst_y) = data;
                }
            }
        }
    }
}
