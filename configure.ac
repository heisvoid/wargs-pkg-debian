#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.68])
AC_INIT([WarGS], [0.2], [wargs@googlegroups.com])
AC_CONFIG_SRCDIR([src/wargs.c])
AC_CONFIG_HEADERS([src/config.h])

AM_INIT_AUTOMAKE([gnits -Wall -Werror])

# Checks for programs.
AC_PROG_CC
AM_PROG_AS
PKG_PROG_PKG_CONFIG
AM_PATH_PYTHON

# Checks for libraries.
PKG_CHECK_MODULES([LIBCONFIG], [libconfig])
PKG_CHECK_MODULES([SDL], [sdl])

# Checks for header files.
AC_CHECK_HEADERS([SDL/SDL_mixer.h],, [AC_MSG_ERROR([missing SDL/SDL_mixer.h])])

# Checks for typedefs, structures, and compiler characteristics.

# Checks for library functions.

CFLAGS="-Wall -Werror ${CFLAGS} ${LIBCONFIG_CFLAGS} ${SDL_CFLAGS}"
LIBS="${LIBS} ${LIBCONFIG_LIBS} ${SDL_LIBS} -lSDL_mixer"

MKWRAPPERS_FLAGS="-g"
AC_SUBST([MKWRAPPERS_FLAGS])

AC_DEFINE([FILEPATH_SEPARATOR], ['/'], [File path separator.])

AC_CONFIG_FILES([Makefile
                 src/Makefile])
AC_OUTPUT
