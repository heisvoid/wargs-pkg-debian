/* vim: set sw=2 ts=2 expandtab: */

#ifndef UTIL_H
#define UTIL_H

#include <stddef.h>

extern void xsnprintf (char *str, size_t size, const char *format, ...);
extern void *xmalloc (size_t size);
extern void *xcalloc (size_t nmemb, size_t size);
extern const char *xbasename (const char *path);

#endif
