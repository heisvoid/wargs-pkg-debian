bin_PROGRAMS = wargs wargs-ttl wargs-combatii wargs-chp wargs-pack

COMMON_SRCS = assert.h \
					 	  conf.c conf.h \
							exit.c exit.h \
							filepath.c filepath.h \
							log.c log.h \
							util.c util.h

GAME_SRCS = asm.h \
						audio.c audio.h \
						dos.c \
						game.c game.h \
						keyboard.c keyboard.h \
						list.c list.h \
						mouse.c mouse.h \
						video.c video.h \
						wrappers.S

wargs_SOURCES = $(COMMON_SRCS) \
								wargs.c

wargs_ttl_SOURCES = $(COMMON_SRCS) \
										$(GAME_SRCS) \
										ttl.S \
										wargs-ttl.c

wargs_combatii_SOURCES = $(COMMON_SRCS) \
												 $(GAME_SRCS) \
												 combatii.S \
												 wargs-combatii.c

wargs_chp_SOURCES = $(COMMON_SRCS) \
										$(GAME_SRCS) \
										chp.S \
										wargs-chp.c

wargs_pack_SOURCES = $(COMMON_SRCS) \
 										 $(GAME_SRCS) \
										 pack.S \
										 wargs-pack.c

MKWRAPPERS = $(PYTHON) $(top_srcdir)/tool/mkwrappers

wrappers.S: $(top_srcdir)/tool/mkwrappers.conf
	$(MKWRAPPERS) $(MKWRAPPERS_FLAGS) -o $@ $<

CLEANFILES = wrappers.S
