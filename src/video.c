/* vim: set sw=2 ts=2 expandtab: */

#ifdef HAVE_CONFIG_H
#include <config.h>
#endif

#include "video.h"

#include <SDL.h>

#include "assert.h"
#include "util.h"

enum
{
  PALETTE_LEN = 256
};

static bool initialized = false;
static uint8_t ratio = 1;
static SDL_Surface *surface = NULL;
static SDL_Color palette[PALETTE_LEN];

void *video_buffer = NULL;

/* The followings are used to get/set palette colors */
uint8_t palette_index = 0;
uint8_t palette_r = 0;
uint8_t palette_g = 0;
uint8_t palette_b = 0;

void
video_init (uint8_t r, bool center)
{
  if (true == initialized)
    {
      LOG_ERROR ("already initialized");

      return;
    }

  ratio = (2 > r) ? 1 : r;

  if (true == center)
    {
      putenv ("SDL_VIDEO_CENTERED=1");
    }

  int ret = SDL_Init (SDL_INIT_VIDEO);
  ASSERT (0 == ret);

  surface = SDL_SetVideoMode (VIDEO_WIDTH * ratio, VIDEO_HEIGHT * ratio,
                              8, SDL_SWSURFACE);
  ASSERT (NULL != surface);

  SDL_WM_SetCaption (PACKAGE_NAME, NULL);

  if (1 < ratio)
    {
      video_buffer = xmalloc (VIDEO_WIDTH * VIDEO_HEIGHT);
    }
  else
    {
      video_buffer = surface->pixels;
    }

  memset (palette, 0, sizeof (SDL_Color) * PALETTE_LEN);

  initialized = true;
}

void
video_quit ()
{
  if (false == initialized)
    {
      LOG_ERROR ("not initialized");

      return;
    }

  if (1 < ratio)
    {
      free (video_buffer);
    }

  SDL_Quit ();

  initialized = false;
}

void
video_set_palette ()
{
  if (false == initialized)
    {
      LOG_FATAL ("not initialized");
    }

  ASSERT (64 > palette_r);
  ASSERT (64 > palette_g);
  ASSERT (64 > palette_b);

  SDL_Color *color = xmalloc (sizeof (SDL_Color));
  color->r = palette_r << 2;
  color->g = palette_g << 2;
  color->b = palette_b << 2;

  const int ret = SDL_SetPalette (surface, SDL_LOGPAL, color, palette_index, 1);
  ASSERT (1 == ret);

  palette[palette_index].r = color->r;
  palette[palette_index].g = color->g;
  palette[palette_index].b = color->b;

  free (color);
}

void
video_update ()
{
  if (false == initialized)
    {
      LOG_FATAL ("not initialized");
    }

  if (1 < ratio)
    {
      int y = 0;
      for (y = 0; VIDEO_HEIGHT > y; y++)
        {
          int x = 0;
          for (x = 0; VIDEO_WIDTH > x; x++)
            {
              const uint8_t color =
                  ((uint8_t *) video_buffer)[VIDEO_WIDTH * y + x];

              int j = 0;
              for (j = 0; ratio > j; j++)
                {
                  int i = 0;
                  for (i = 0; ratio > i; i++)
                    {
                      const int offset = VIDEO_WIDTH * ratio
                        * (ratio * y + j) + ratio * x + i;
                      ((uint8_t *) surface->pixels)[offset] = color;
                    }
                }
            }
        }
    }

  SDL_Flip (surface);
}

uint8_t
video_get_ratio ()
{
  if (false == initialized)
    {
      LOG_FATAL ("not initialized");
    }

  return ratio;
}

void
video_get_palette ()
{
  if (false == initialized)
    {
      LOG_FATAL ("not initialized");
    }

  palette_r = (palette[palette_index].r >> 2) & 0x3f;
  palette_g = (palette[palette_index].g >> 2) & 0x3f;
  palette_b = (palette[palette_index].b >> 2) & 0x3f;
}
