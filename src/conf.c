/* vim: set sw=2 ts=2 expandtab: */

#ifdef HAVE_CONFIG_H
#include <config.h>
#endif /* HAVE_CONFIG_H */

#include "conf.h"

#include <stdlib.h>
#include <string.h>

#include <libconfig.h>

#include "assert.h"
#include "util.h"

static const char * const option_root = "root";
static const char * const option_fast = "fast";
static const char * const option_music = "music";
static const char * const option_sound = "sound";
static const char * const option_ratio = "ratio";
static const char * const option_center = "center";
static const char * const option_verbose = "verbose";
static const char * const option_ttl = "ttl";
static const char * const option_combatii = "combatii";
static const char * const option_chp = "chp";
static const char * const option_pack = "pack";

static bool initialized = false;
static char *conf_file_path = NULL;
static config_t conf;

void
conf_init ()
{
  if (true == initialized)
    {
      LOG_ERROR ("already initialized");

      return;
    }

#ifdef __unix__
  const char *home = getenv ("HOME");
  ASSERT (NULL != home);

  const size_t conf_file_path_size = sizeof (char)
      * (strlen (home) + 1 + 1 + strlen (PACKAGE) + 5 + 1);
  conf_file_path = xmalloc (conf_file_path_size);
  xsnprintf (conf_file_path, conf_file_path_size, "%s%c.%s.conf",
             home, FILEPATH_SEPARATOR, PACKAGE);
#else /* not __unix__ */
#error "unsupported platform"
#endif /* not __unix__ */

  config_init (&conf);

  if (CONFIG_TRUE != config_read_file (&conf, conf_file_path))
    {
      LOG_FATAL ("cannot read config file");
    }

  initialized = true;
}

void
conf_quit ()
{
  if (false == initialized)
    {
      LOG_ERROR ("not initialized");

      return;
    }

  config_destroy (&conf);
  free (conf_file_path);

  initialized = false;
}

void
conf_save ()
{
  ASSERT (true == initialized);

  const int ret = config_write_file (&conf, conf_file_path);
  ASSERT (CONFIG_TRUE == ret);
}

static const char *
get_char (const char *option)
{
  ASSERT (true == initialized);

  const char *val = NULL;
  if (CONFIG_TRUE != config_lookup_string (&conf, option, &val))
    {
      return NULL;
    }

  return val;
}

static bool
get_bool (const char *option)
{
  ASSERT (true == initialized);

  ASSERT (NULL != option);

  int val = 0;
  if (CONFIG_TRUE != config_lookup_bool (&conf, option, &val))
    {
      return false;
    }

  return 0 != val;
}

static void
set_bool (const char *option, bool val)
{
  ASSERT (true == initialized);

  ASSERT (NULL != option);

  config_setting_t *setting = config_lookup (&conf, option);
  if (NULL == setting)
    {
      config_setting_t *root_setting = config_root_setting (&conf);
      setting = config_setting_add (root_setting, option, CONFIG_TYPE_BOOL);
      ASSERT (NULL != setting);
    }

  const int ret = config_setting_set_bool (setting, (true == val) ? 1 : 0);
  ASSERT (CONFIG_TRUE == ret);
}

const char *
conf_get_root ()
{
  const char * root = get_char (option_root);
  if (NULL == root)
    {
      LOG_FATAL ("cannot get option %", option_root);
    }

  return root;
}

bool
conf_get_fast ()
{
  return get_bool (option_fast);
}

void
conf_set_fast (int val)
{
  set_bool (option_fast, 0 != val);
}

bool
conf_get_music ()
{
  return get_bool (option_music);
}

void
conf_set_music (int val)
{
  set_bool (option_music, 0 != val);
}

bool
conf_get_sound ()
{
  return get_bool (option_sound);
}

void
conf_set_sound (int val)
{
  set_bool (option_sound, 0 != val);
}

uint8_t
conf_get_ratio ()
{
  ASSERT (true == initialized);

  long int val = 0;
  if (CONFIG_TRUE != config_lookup_int (&conf, option_ratio, &val))
    {
      return 1;
    }

  if (1 > val)
    {
      val = 1;
    }
  else if (UINT8_MAX < val)
    {
      val = UINT8_MAX;
    }

  return val;
}

bool
conf_get_center ()
{
  return get_bool (option_center);
}

bool
conf_get_verbose ()
{
  return get_bool (option_verbose);
}

const char *
conf_get_ttl ()
{
  return get_char (option_ttl);
}

const char *
conf_get_combatii ()
{
  return get_char (option_combatii);
}

const char *
conf_get_chp ()
{
  return get_char (option_chp);
}

const char *
conf_get_pack ()
{
  return get_char (option_pack);
}
