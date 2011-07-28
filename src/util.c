/* vim: set sw=2 ts=2 expandtab: */

#include "util.h"

#include <stdio.h>
#include <stdarg.h>
#include <stdlib.h>

#include "assert.h"

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
