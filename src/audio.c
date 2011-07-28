/* vim: set sw=2 ts=2 expandtab: */

#ifdef HAVE_CONFIG_H
#include <config.h>
#endif

#include "audio.h"

#include <stdbool.h>

#include <SDL.h>
#include <SDL_mixer.h>

#include "assert.h"
#include "util.h"

static bool initialized = false;
static char *music_root = NULL;
static Mix_Music *music = NULL;
static int32_t music_track = 0;
static bool music_is_muted = false;
static bool sound_is_muted = false;

void
finish_channel (int channel)
{
  ASSERT (0 <= channel);

  Mix_Chunk * const chunk = Mix_GetChunk (channel);
  ASSERT (NULL != chunk);

  if (0 == chunk->allocated)
    {
      free (chunk->abuf);
    }

  Mix_FreeChunk (chunk);
}

void
audio_init (const char *music)
{
#ifdef NOAUDIO
  return;
#endif

  if (true == initialized)
    {
      LOG_FATAL ("already initialized");
    }

  ASSERT (NULL != music);

  int ret = SDL_InitSubSystem (SDL_INIT_AUDIO);
  ASSERT (0 == ret);

  ret = Mix_OpenAudio (22000, AUDIO_S16SYS, 2, 4096);
  ASSERT (0 == ret);

  /* I think 16 is fully enough. */
  Mix_AllocateChannels (16);

  Mix_ChannelFinished (&finish_channel);

  music_root = strdup (music);
  ASSERT (NULL != music_root);

  music = NULL;
  music_track = 0;

  initialized = true;
}

void
audio_quit ()
{
#ifdef NOAUDIO
  return;
#endif

  if (false == initialized)
    {
      LOG_FATAL ("not initialized");
    }

  free (music_root);

  audio_music_stop ();
  audio_sound_stop ();

  Mix_CloseAudio ();
  SDL_QuitSubSystem (SDL_INIT_AUDIO);

  initialized = false;
}

void
audio_music_play (uint32_t track)
{
#ifdef NOAUDIO
  return;
#endif

  if (false == initialized)
    {
      LOG_FATAL ("not initialized");
    }

  ASSERT (0 < track && 19 > track);

  if (track == music_track)
    {
      return;
    }

  audio_music_stop ();

  /* 1: FILEPATH_SEPARATOR
   * 5: "music"
   * 2: track number
   * 4: ".ogg"
   * 1: '\0'
   */
  const size_t file_path_size = sizeof (char) * 
      (strlen (music_root) + 1 + 5 + 2 + 4 + 1);
  char * const file_path = xmalloc (file_path_size);
  xsnprintf (file_path, file_path_size, "%s%ctrack%02"PRId8".ogg",
             music_root, FILEPATH_SEPARATOR, track);

  music = Mix_LoadMUS (file_path);
  if (NULL == music)
    {
      return;
    }

  Mix_VolumeMusic (music_is_muted ? 0 : MIX_MAX_VOLUME);

  const int ret = Mix_PlayMusic (music, -1);
  if (0 != ret)
    {
      Mix_FreeMusic (music);
      music = NULL;

      return;
    }

  music_track = track;
}

void
audio_music_stop ()
{
#ifdef NOAUDIO
  return;
#endif

  if (false == initialized)
    {
      LOG_FATAL ("not initialized");
    }

  if (NULL != music)
    {
      Mix_HaltMusic ();

      Mix_FreeMusic (music);
      music = NULL;
    }

  music_track = 0;
}

void
audio_music_mute ()
{
#ifdef NOAUDIO
  return;
#endif

  if (false == initialized)
    {
      LOG_FATAL ("not initialized");
    }

  music_is_muted = true;

  Mix_VolumeMusic (0);
}

void
audio_music_unmute ()
{
#ifdef NOAUDIO
  return;
#endif

  if (false == initialized)
    {
      LOG_FATAL ("not initialized");
    }

  music_is_muted = false;

  Mix_VolumeMusic (MIX_MAX_VOLUME);
}

void
audio_sound_play (const uint8_t *raw, uint32_t len, int32_t loop)
{
#ifdef NOAUDIO
  return;
#endif

  if (false == initialized)
    {
      LOG_FATAL ("not initialized");
    }

  ASSERT (NULL != raw);
  ASSERT (0 < len);

  /* The raw data is assumed as unsigned 8-bit mono. 
   * So it should be converted to signed 16-bit stereo.
   *
   * reference
   * http://www.dsprelated.com/showmessage/52896/1.php
   */
  int16_t * const converted = xmalloc (2 * 2 * len);
  size_t i = 0;
  for (i = 0; len > i; i++)
    {
      converted[2 * i] = ((int16_t) raw[i] - 128) << 8;
      converted[2 * i + 1] = converted[2 * i];
    }

  Mix_Chunk * const chunk = Mix_QuickLoad_RAW ((Uint8 *) converted,
                                               2 * 2 * len);
  ASSERT (NULL != chunk);

  Mix_VolumeChunk (chunk, sound_is_muted ? 0 : MIX_MAX_VOLUME);

  const int ret = Mix_PlayChannel (-1, chunk, (0 == loop) ? 0 : -1);
  if (-1 == ret)
    {
      if (0 == chunk->allocated)
        {
          free (chunk->abuf);
        }

      Mix_FreeChunk (chunk);
    }
}

void
audio_sound_stop ()
{
#ifdef  NOAUDIO
  return;
#endif

  if (false == initialized)
    {
      LOG_FATAL ("not initialized");
    }

  Mix_HaltChannel (-1); 
}

void
audio_sound_mute ()
{
#ifdef NOAUDIO
  return;
#endif

  if (false == initialized)
    {
      LOG_FATAL ("not initialized");
    }

  sound_is_muted = true;

  Mix_Volume (-1, 0);
}

void
audio_sound_unmute ()
{
#ifdef NOAUDIO
  return;
#endif

  if (false == initialized)
    {
      LOG_FATAL ("not initialized");
    }

  sound_is_muted = false;

  Mix_Volume (-1, MIX_MAX_VOLUME);
}
