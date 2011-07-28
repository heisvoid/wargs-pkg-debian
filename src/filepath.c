/* vim: set sw=2 ts=2 expandtab: */

#ifdef HAVE_CONFIG_H
#include <config.h>
#endif /* HAVE_CONFIG_H */

#include "filepath.h"

#include <stdbool.h>
#include <string.h>
#include <stdlib.h>
#include <ctype.h>

#include "util.h"
#include "assert.h"

static bool initialized = false;
static char *root = NULL;

void
filepath_init (const char *path)
{
  if (true == initialized)
    {
      LOG_ERROR ("already initialized");

      return;
    }

  ASSERT (NULL != path && 0 < strlen (path));

  root = xmalloc (sizeof (char) * (1 + strlen (path)));
  strcpy (root, path);

  initialized = true;
}

void
filepath_quit ()
{
  if (false == initialized)
    {
      LOG_ERROR ("not initialized");

      return;
    }

  free (root);
  root = NULL;

  initialized = false;
}

char *
filepath_transform (const char *path)
{
  ASSERT (true == initialized);

  ASSERT (NULL != path && 0 < strlen (path));

  char * const tmp_path = xmalloc (sizeof (char) * (1 + strlen (path)));
  strcpy (tmp_path, path);

  size_t i = 0;
  for (i = 0; 0 != tmp_path[i]; i++)
    {
      if (isspace (tmp_path[i]))
        {
          tmp_path[i] = '\0';
        }

      tmp_path[i] = tolower (tmp_path[i]);
    }

  const char * const colon = strchr (tmp_path, ':');
  if (NULL != colon)
    {
      memmove (tmp_path, 1 + colon, 1 + strlen (1 + colon));
    }

  if ('\\' == *tmp_path)
    {
      memmove (tmp_path, 1 + tmp_path, 1 + strlen (1 + tmp_path));
    }

  if (0 == strncmp (tmp_path, ".\\", 2))
    {
      memmove (tmp_path, 2 + tmp_path, 1 + strlen (2 + tmp_path));
    }

  if (0 == strncmp (tmp_path, "genesis2\\", 9))
    {
      memmove (tmp_path, 9 + tmp_path, 1 + strlen (9 + tmp_path));
    }

  if ('\\' != FILEPATH_SEPARATOR)
    {
      for (i = 0; 0 != tmp_path[i]; i++)
        {
          if ('\\' == tmp_path[i])
            {
              tmp_path[i] = FILEPATH_SEPARATOR;
            }
        }
    }

  const size_t native_path_size = sizeof (char)
      * (strlen (root) + 1 + strlen (tmp_path) + 1);
  char * const native_path = xmalloc (native_path_size);
  xsnprintf (native_path, native_path_size,
             "%s%c%s", root, FILEPATH_SEPARATOR, tmp_path);

  free (tmp_path);

  return native_path;
}
