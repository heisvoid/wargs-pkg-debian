/* vim: set sw=2 ts=2 expandtab: */

#include "util.h"

#include <stdio.h>
#include <stdarg.h>
#include <stdlib.h>
#include <string.h>

#include "assert.h"
#include "filepath.h"

void
xsnprintf (char *str, size_t size, const char *format, ...)
{
  ASSERT (NULL != str);
  ASSERT (0 < size);
  ASSERT (NULL != format);

  va_list ap;
  va_start (ap, format);

  const int ret = vsnprintf (str, size, format, ap);
  ASSERT (0 <= ret && ret < size);

  va_end (ap);
}

void *
xmalloc (size_t size)
{
  ASSERT (0 < size);

  void * const m = malloc (size);
  ASSERT (NULL != m);

  return m;
}

void *
xcalloc (size_t nmemb, size_t size)
{
  ASSERT (0 < nmemb);
  ASSERT (0 < size);

  void * const m = calloc (nmemb, size);
  ASSERT (NULL != m);

  return m;
}

const char *
xbasename (const char *path)
{
  ASSERT (NULL != path);

#ifndef _WIN32
  ASSERT (PATH_MAX > strlen (path));

  static char tmp[PATH_MAX];
  
  strncpy (tmp, path, PATH_MAX);
  tmp[PATH_MAX - 1] = '\0';

  return basename (tmp);
#else /* _WIN32 */
  static char file_name[_MAX_FNAME];
  static char file_ext[_MAX_EXT];
  
  _splitpath (path, NULL, NULL, file_name, file_ext);
  
  file_name[_MAX_FNAME - 1] = '\0';
  file_ext[_MAX_FNAME - 1] = '\0';

  static char bn[_MAX_FNAME + _MAX_EXT];
  strcpy (bn, file_name);
  strcpy (bn + strlen (file_name), file_ext);

  return bn;
#endif /* _WIN32 */
}
