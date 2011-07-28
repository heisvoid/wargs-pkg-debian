/* vim: set sw=2 ts=2 expandtab: */

#ifndef ASSERT_H
#define ASSERT_H

#include "log.h"

#define ASSERT(expression) \
    ((expression) ? (void) 0 : log_fatal (__FILE__, __LINE__, #expression))

#endif
