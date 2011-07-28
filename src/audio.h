/* vim: set sw=2 ts=2 expandtab: */

#ifndef AUDIO_H
#define AUDIO_H

#include <stdint.h>

extern void audio_init (const char *music);
extern void audio_quit ();

extern void audio_music_play (uint32_t track);
extern void audio_music_stop ();
extern void audio_music_mute ();
extern void audio_music_unmute ();

extern void audio_sound_play (const uint8_t *raw, uint32_t len, int32_t loop);
extern void audio_sound_stop ();
extern void audio_sound_mute ();
extern void audio_sound_unmute ();

#endif
