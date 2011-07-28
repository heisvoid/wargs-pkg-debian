/* vim: set sw=2 ts=2 expandtab: */

#ifndef LOG_H
#define LOG_H

#include <stdbool.h>

extern void log_set_name (const char *n);
extern void log_set_verbose (bool v);

extern void log_error (const char *file, int line, const char *format, ...);
extern void log_fatal (const char *file, int line, const char *format, ...);

#ifdef NDEBUG
#define LOG_ERROR(format, ...) \
    log_error (__FILE__, __LINE__, format, ##__VA_ARGS__)
#else /* not NDEBUG */
#define LOG_ERROR(format, ...) \
    log_fatal (__FILE__, __LINE__, format, ##__VA_ARGS__)
#endif /* not NDEBUG */

#define LOG_FATAL(format, ...) \
    log_fatal (__FILE__, __LINE__, format, ##__VA_ARGS__)

#endif
