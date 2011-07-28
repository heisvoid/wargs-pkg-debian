/* vim: set sw=2 ts=2 expandtab: */

#ifndef FILEPATH_H
#define FILEPATH_H

#include <stddef.h>
#include <limits.h>

/* Platform independent PATH_MAX
 *
 * Warning
 * PATH_MAX is length of buffer (including '\0'). is not number of characters.
 * e.g.
 * Right usage
 * malloc (PATH_MAX);
 * Wrong usage
 * malloc (sizeof (char) * PATH_MAX);
 *
 * reference
 * http://kldp.org/node/81425
 */
#if !defined PATH_MAX && defined FILENAME_MAX
#define PATH_MAX FILENAME_MAX
#endif /* not PATH_MAX && FILENAME_MAX */

#if !defined PATH_MAX && defined _POSIX_PATH_MAX
#define PATH_MAX _POSIX_PATH_MAX
#endif /* not PATH_MAX && _POSIX_PATH_MAX */

#ifndef PATH_MAX
#define PATH_MAX 256
#endif /* not PATH_MAX */

extern void filepath_init (const char *path);
extern void filepath_quit ();

extern char *filepath_transform (const char *path);

#endif
