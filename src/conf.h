/* vim: set sw=2 ts=2 expandtab: */

#ifndef CONF_H
#define CONF_H

#include <stdbool.h>
#include <stdint.h>

extern void conf_init ();
extern void conf_quit ();
extern void conf_save ();

extern const char *conf_get_root ();

extern bool conf_get_fast ();
extern void conf_set_fast (int val);

extern bool conf_get_music ();
extern void conf_set_music (int val);

extern bool conf_get_sound ();
extern void conf_set_sound (int val);

extern uint8_t conf_get_ratio ();
extern bool conf_get_center ();
extern bool conf_get_verbose ();

extern const char *conf_get_ttl ();
extern const char *conf_get_combatii ();
extern const char *conf_get_chp ();
extern const char *conf_get_pack ();

#endif
