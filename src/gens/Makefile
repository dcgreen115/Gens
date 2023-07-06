# Makefile.in generated automatically by automake 1.5 from Makefile.am.

# Copyright 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001
# Free Software Foundation, Inc.
# This Makefile.in is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY, to the extent permitted by law; without
# even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.



SHELL = /bin/bash

srcdir = .
top_srcdir = ../..
VPATH = 
prefix = /usr/local
exec_prefix = ${prefix}

bindir = ${exec_prefix}/bin
sbindir = ${exec_prefix}/sbin
libexecdir = ${exec_prefix}/libexec
datadir = ${prefix}/share
sysconfdir = ${prefix}/etc
sharedstatedir = ${prefix}/com
localstatedir = ${prefix}/var
libdir = ${exec_prefix}/lib
infodir = ${prefix}/info
mandir = ${prefix}/man
includedir = ${prefix}/include
oldincludedir = /usr/include
pkgdatadir = $(datadir)/gens
pkglibdir = $(libdir)/gens
pkgincludedir = $(includedir)/gens
top_builddir = ../..

ACLOCAL = aclocal
AUTOCONF = autoconf
AUTOMAKE = automake
AUTOHEADER = autoheader

INSTALL = /usr/bin/install -c
INSTALL_PROGRAM = ${INSTALL}
INSTALL_DATA = ${INSTALL} -m 644
INSTALL_SCRIPT = ${INSTALL}
INSTALL_HEADER = $(INSTALL_DATA)
transform = s,x,x,
NORMAL_INSTALL = :
PRE_INSTALL = :
POST_INSTALL = :
NORMAL_UNINSTALL = :
PRE_UNINSTALL = :
POST_UNINSTALL = :
AMTAR = tar
AWK = mawk
CC = gcc
DEPDIR = .deps
EXEEXT = 
GETTIMEFLAG = 
GTK_CFLAGS = -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/x86_64-linux-gnu -I/usr/include/pango-1.0 -I/usr/include/harfbuzz -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16
GTK_LIBS = -lgtk-x11-2.0 -lgdk-x11-2.0 -lpangocairo-1.0 -latk-1.0 -lcairo -lgdk_pixbuf-2.0 -lgio-2.0 -lpangoft2-1.0 -lpango-1.0 -lgobject-2.0 -lglib-2.0 -lharfbuzz -lfontconfig -lfreetype
INSTALL_STRIP_PROGRAM = ${SHELL} $(install_sh) -c -s
LIBS = -lc -lrt 
OBJEXT = o
PACKAGE = gens
PKG_CONFIG = /usr/bin/pkg-config
SDL_CFLAGS = -I/usr/include/SDL -D_GNU_SOURCE=1 -D_REENTRANT
SDL_CONFIG = /usr/bin/sdl-config
SDL_LIBS = -L/usr/lib/x86_64-linux-gnu -lSDL
VERSION = 2.12
am__include = include
am__quote = 
install_sh = /home/dylangreen/Documents/gens-win32-src-2.14/GensForLinux/install-sh

NASM = \
nasm -O1 -D __GCC2 -f elf \
-I./gens_core/ -I./gens_core/io/ -I./gens_core/misc/ \
-I./gens_core/vdp/ -I./gens_core/sound/ -I./gens_core/gfx/ \
-I./gens_core/cpu/sh2/ -I./gens_core/cpu/z80/ -I./gens_core/mem/


AUTOMAKE_OPTIONS = subdir-objects

ASMFILES = \
		gens_core/gfx/blit.o \
		gens_core/gfx/hq2x16.o \
		gens_core/gfx/gfx_cd.o \
		gens_core/io/io.o \
		gens_core/mem/mem_m68k.o \
		gens_core/mem/mem_s68k.o \
		gens_core/mem/mem_sh2.o \
		gens_core/mem/mem_z80.o \
		gens_core/misc/misc.o \
		gens_core/sound/pwm.o \
		gens_core/cpu/sh2/sh2a.o \
		gens_core/vdp/vdp_32x.o \
		gens_core/vdp/vdp_io.o \
		gens_core/vdp/vdp_rend.o \
		gens_core/cpu/z80/z80.o


INCLUDES = \
-I./gens_core/cpu/68k -I./gens_core/cpu/sh2 -I./gens_core/cpu/z80 \
-I./gens_core/sound -I./gens_core/mem -I./gens_core/misc -I./gens_core/gfx \
-I./gens_core/io -I./gens_core/vdp -I./segacd -I./mp3_dec -I./sdllayer \
-I./util -I./port -I./emulator -I./debug -I./netplay\
-I./gtkui -I./gtkui/anjuta_widget -I./gtkui/glade \
-I.


bin_PROGRAMS = gens
gens_SOURCES = \
		gens_core/nasmhead.inc \
		gens_core/cpu/68k/cpu_68k.c \
		gens_core/cpu/68k/cpu_68k.h \
		gens_core/cpu/68k/star_68k.h \
		gens_core/cpu/sh2/cpu_sh2.c \
		gens_core/cpu/sh2/sh2a.asm \
		gens_core/cpu/sh2/sh2.c \
		gens_core/cpu/sh2/sh2.h \
		gens_core/cpu/sh2/cpu_sh2.h \
		gens_core/cpu/sh2/sh2_io.inc \
		gens_core/cpu/z80/z80.asm \
		gens_core/cpu/z80/cpu_z80.c \
		gens_core/cpu/z80/cpu_z80.h \
		gens_core/sound/pcm.c \
		gens_core/sound/pcm.h \
		gens_core/sound/psg.c \
		gens_core/sound/psg.h \
		gens_core/sound/ym2612.c \
		gens_core/sound/ym2612.h \
		gens_core/sound/pwm.asm \
		gens_core/sound/pwm.h \
		gens_core/sound/z80.h \
		gens_core/mem/mem_m68k.asm \
		gens_core/mem/mem_m68k.h \
		gens_core/mem/mem_s68k.asm \
		gens_core/mem/mem_s68k.h \
		gens_core/mem/mem_sh2.asm \
		gens_core/mem/mem_sh2.h \
		gens_core/mem/mem_z80.asm \
		gens_core/mem/mem_z80.h \
		gens_core/mem/mem_m68k_32x.inc \
		gens_core/mem/mem_m68k_cd.inc \
		gens_core/misc/misc.asm \
		gens_core/misc/misc.h \
		gens_core/gfx/blit.asm \
		gens_core/gfx/blit.h \
		gens_core/gfx/blit2.c \
		gens_core/gfx/blit2.h \
		gens_core/gfx/hqfilters.c \
		gens_core/gfx/hq2x16.asm \
		gens_core/gfx/gfx_cd.asm \
		gens_core/gfx/gfx_cd.h \
		gens_core/io/io.asm \
		gens_core/io/io.h \
		gens_core/vdp/vdp_32x.h \
		gens_core/vdp/vdp_io.asm \
		gens_core/vdp/vdp_io.h \
		gens_core/vdp/vdp_rend.asm \
		gens_core/vdp/vdp_rend.h \
		gens_core/vdp/vdp_32x.asm \
		segacd/cd_aspi.c \
		segacd/cd_aspi.h \
		segacd/cd_file.c \
		segacd/cd_file.h \
		segacd/cd_sys.c \
		segacd/cd_sys.h \
		segacd/cdda_mp3.c \
		segacd/cdda_mp3.h \
		segacd/lc89510.c \
		segacd/lc89510.h \
		mp3_dec/common.c \
		mp3_dec/dct64_i386.c \
		mp3_dec/decode_i386.c \
		mp3_dec/interface.c \
		mp3_dec/layer3.c \
		mp3_dec/tabinit.c \
		mp3_dec/huffman.h \
		mp3_dec/mpg123.h \
		mp3_dec/mpglib.h \
		sdllayer/g_sdldraw.c \
		sdllayer/g_ddraw.h \
		sdllayer/g_sdlinput.c \
		sdllayer/g_input.h \
		sdllayer/g_sdlsound.c \
		sdllayer/g_dsound.h \
		util/rom.c \
		util/rom.h \
		util/save.c \
		util/save.h \
		util/ggenie.c \
		util/ggenie.h \
		util/gym.c \
		util/gym.h \
		util/scrshot.c \
		util/scrshot.h \
		util/unzip.c \
		util/unzip.h \
		util/wave.c \
		util/wave.h \
		port/port.c \
		port/port.h \
		port/timer.c \
		port/timer.h \
		emulator/ui_proxy.c \
		emulator/ui_proxy.h \
		emulator/g_main.c \
		emulator/g_main.h \
		emulator/gens.c \
		emulator/gens.h \
		debug/debug.c \
		debug/debug.h \
		debug/m68kd.c \
		debug/m68kd.h \
		debug/sh2d.c \
		debug/sh2d.h \
		debug/z80dis.c \
		debug/z80dis.h \
		gtkui/glade/callbacks.c \
		gtkui/glade/callbacks.h \
		gtkui/glade/interface.c \
		gtkui/glade/interface.h \
		gtkui/support.c \
		gtkui/support.h \
		emulator/parse.c \
		emulator/parse.h


gens_CFLAGS = \
			  -DDATADIR=\"${prefix}/share/gens\" \
			  -I/usr/include/SDL -D_GNU_SOURCE=1 -D_REENTRANT \
			  -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/x86_64-linux-gnu -I/usr/include/pango-1.0 -I/usr/include/harfbuzz -I/usr/include/pango-1.0 -I/usr/include/libmount -I/usr/include/blkid -I/usr/include/fribidi -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/harfbuzz -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16 \
			  -g -O2


gens_LDADD = \
		$(ASMFILES) \
		../starscream/main68k/main68k.o \
		../starscream/sub68k/sub68k.o \
		-lm -lz -L/usr/lib/x86_64-linux-gnu -lSDL -lgtk-x11-2.0 -lgdk-x11-2.0 -lpangocairo-1.0 -latk-1.0 -lcairo -lgdk_pixbuf-2.0 -lgio-2.0 -lpangoft2-1.0 -lpango-1.0 -lgobject-2.0 -lglib-2.0 -lharfbuzz -lfontconfig -lfreetype


gens_DEPENDENCIES = \
		$(ASMFILES) \
		../starscream/main68k/main68k.o \
		../starscream/sub68k/sub68k.o


CLEANFILES = \
		$(ASMFILES) \
		../starscream/main68k/main68k.o \
		../starscream/sub68k/sub68k.o

subdir = src/gens
mkinstalldirs = $(SHELL) $(top_srcdir)/mkinstalldirs
CONFIG_HEADER = $(top_builddir)/config.h
CONFIG_CLEAN_FILES =
bin_PROGRAMS = gens$(EXEEXT)
PROGRAMS = $(bin_PROGRAMS)

am_gens_OBJECTS = gens_core/cpu/68k/gens-cpu_68k.$(OBJEXT) \
	gens_core/cpu/sh2/gens-cpu_sh2.$(OBJEXT) \
	gens_core/cpu/sh2/gens-sh2.$(OBJEXT) \
	gens_core/cpu/z80/gens-cpu_z80.$(OBJEXT) \
	gens_core/sound/gens-pcm.$(OBJEXT) \
	gens_core/sound/gens-psg.$(OBJEXT) \
	gens_core/sound/gens-ym2612.$(OBJEXT) \
	gens_core/gfx/gens-blit2.$(OBJEXT) \
	gens_core/gfx/gens-hqfilters.$(OBJEXT) \
	segacd/gens-cd_aspi.$(OBJEXT) segacd/gens-cd_file.$(OBJEXT) \
	segacd/gens-cd_sys.$(OBJEXT) segacd/gens-cdda_mp3.$(OBJEXT) \
	segacd/gens-lc89510.$(OBJEXT) mp3_dec/gens-common.$(OBJEXT) \
	mp3_dec/gens-dct64_i386.$(OBJEXT) \
	mp3_dec/gens-decode_i386.$(OBJEXT) \
	mp3_dec/gens-interface.$(OBJEXT) mp3_dec/gens-layer3.$(OBJEXT) \
	mp3_dec/gens-tabinit.$(OBJEXT) \
	sdllayer/gens-g_sdldraw.$(OBJEXT) \
	sdllayer/gens-g_sdlinput.$(OBJEXT) \
	sdllayer/gens-g_sdlsound.$(OBJEXT) util/gens-rom.$(OBJEXT) \
	util/gens-save.$(OBJEXT) util/gens-ggenie.$(OBJEXT) \
	util/gens-gym.$(OBJEXT) util/gens-scrshot.$(OBJEXT) \
	util/gens-unzip.$(OBJEXT) util/gens-wave.$(OBJEXT) \
	port/gens-port.$(OBJEXT) port/gens-timer.$(OBJEXT) \
	emulator/gens-ui_proxy.$(OBJEXT) emulator/gens-g_main.$(OBJEXT) \
	emulator/gens-gens.$(OBJEXT) debug/gens-debug.$(OBJEXT) \
	debug/gens-m68kd.$(OBJEXT) debug/gens-sh2d.$(OBJEXT) \
	debug/gens-z80dis.$(OBJEXT) \
	gtkui/glade/gens-callbacks.$(OBJEXT) \
	gtkui/glade/gens-interface.$(OBJEXT) \
	gtkui/gens-support.$(OBJEXT) emulator/gens-parse.$(OBJEXT)
gens_OBJECTS = $(am_gens_OBJECTS)
gens_LDFLAGS =

DEFS = -DHAVE_CONFIG_H
DEFAULT_INCLUDES =  -I. -I$(srcdir) -I$(top_builddir)
CPPFLAGS = 
LDFLAGS = 
LIBS = -lc -lrt 
depcomp = $(SHELL) $(top_srcdir)/depcomp
DEP_FILES = $(DEPDIR)/debug/gens-debug.Po \
	$(DEPDIR)/debug/gens-m68kd.Po \
	$(DEPDIR)/debug/gens-sh2d.Po \
	$(DEPDIR)/debug/gens-z80dis.Po \
	$(DEPDIR)/emulator/gens-g_main.Po \
	$(DEPDIR)/emulator/gens-gens.Po \
	$(DEPDIR)/emulator/gens-parse.Po \
	$(DEPDIR)/emulator/gens-ui_proxy.Po \
	$(DEPDIR)/gens_core/cpu/68k/gens-cpu_68k.Po \
	$(DEPDIR)/gens_core/cpu/sh2/gens-cpu_sh2.Po \
	$(DEPDIR)/gens_core/cpu/sh2/gens-sh2.Po \
	$(DEPDIR)/gens_core/cpu/z80/gens-cpu_z80.Po \
	$(DEPDIR)/gens_core/gfx/gens-blit2.Po \
	$(DEPDIR)/gens_core/gfx/gens-hqfilters.Po \
	$(DEPDIR)/gens_core/sound/gens-pcm.Po \
	$(DEPDIR)/gens_core/sound/gens-psg.Po \
	$(DEPDIR)/gens_core/sound/gens-ym2612.Po \
	$(DEPDIR)/gtkui/gens-support.Po \
	$(DEPDIR)/gtkui/glade/gens-callbacks.Po \
	$(DEPDIR)/gtkui/glade/gens-interface.Po \
	$(DEPDIR)/mp3_dec/gens-common.Po \
	$(DEPDIR)/mp3_dec/gens-dct64_i386.Po \
	$(DEPDIR)/mp3_dec/gens-decode_i386.Po \
	$(DEPDIR)/mp3_dec/gens-interface.Po \
	$(DEPDIR)/mp3_dec/gens-layer3.Po \
	$(DEPDIR)/mp3_dec/gens-tabinit.Po \
	$(DEPDIR)/port/gens-port.Po \
	$(DEPDIR)/port/gens-timer.Po \
	$(DEPDIR)/sdllayer/gens-g_sdldraw.Po \
	$(DEPDIR)/sdllayer/gens-g_sdlinput.Po \
	$(DEPDIR)/sdllayer/gens-g_sdlsound.Po \
	$(DEPDIR)/segacd/gens-cd_aspi.Po \
	$(DEPDIR)/segacd/gens-cd_file.Po \
	$(DEPDIR)/segacd/gens-cd_sys.Po \
	$(DEPDIR)/segacd/gens-cdda_mp3.Po \
	$(DEPDIR)/segacd/gens-lc89510.Po \
	$(DEPDIR)/util/gens-ggenie.Po \
	$(DEPDIR)/util/gens-gym.Po \
	$(DEPDIR)/util/gens-rom.Po \
	$(DEPDIR)/util/gens-save.Po \
	$(DEPDIR)/util/gens-scrshot.Po \
	$(DEPDIR)/util/gens-unzip.Po \
	$(DEPDIR)/util/gens-wave.Po
COMPILE = $(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) \
	$(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS)
CCLD = $(CC)
LINK = $(CCLD) $(AM_CFLAGS) $(CFLAGS) $(AM_LDFLAGS) $(LDFLAGS) -o $@
CFLAGS = -g -O2
DIST_SOURCES = $(gens_SOURCES)
DIST_COMMON = Makefile.am Makefile.in
SOURCES = $(gens_SOURCES)

all: all-am

.SUFFIXES:
.SUFFIXES: .c .o .obj
$(srcdir)/Makefile.in:  Makefile.am  $(top_srcdir)/configure.in $(ACLOCAL_M4)
	cd $(top_srcdir) && \
	  $(AUTOMAKE) --gnu  src/gens/Makefile
Makefile:  $(srcdir)/Makefile.in  $(top_builddir)/config.status
	cd $(top_builddir) && \
	  CONFIG_HEADERS= CONFIG_LINKS= \
	  CONFIG_FILES=$(subdir)/$@ $(SHELL) ./config.status
install-binPROGRAMS: $(bin_PROGRAMS)
	@$(NORMAL_INSTALL)
	$(mkinstalldirs) $(DESTDIR)$(bindir)
	@list='$(bin_PROGRAMS)'; for p in $$list; do \
	  p1=`echo $$p|sed 's/$(EXEEXT)$$//'`; \
	  if test -f $$p \
	  ; then \
	    f=`echo $$p1|sed '$(transform);s/$$/$(EXEEXT)/'`; \
	   echo " $(INSTALL_PROGRAM_ENV) $(INSTALL_PROGRAM) $$p $(DESTDIR)$(bindir)/$$f"; \
	   $(INSTALL_PROGRAM_ENV) $(INSTALL_PROGRAM) $$p $(DESTDIR)$(bindir)/$$f; \
	  else :; fi; \
	done

uninstall-binPROGRAMS:
	@$(NORMAL_UNINSTALL)
	@list='$(bin_PROGRAMS)'; for p in $$list; do \
	  f=`echo $$p|sed 's/$(EXEEXT)$$//;$(transform);s/$$/$(EXEEXT)/'`; \
	  echo " rm -f $(DESTDIR)$(bindir)/$$f"; \
	  rm -f $(DESTDIR)$(bindir)/$$f; \
	done

clean-binPROGRAMS:
	-test -z "$(bin_PROGRAMS)" || rm -f $(bin_PROGRAMS)
gens_core/cpu/68k/.dirstamp:
	@$(mkinstalldirs) gens_core/cpu/68k
	@: > gens_core/cpu/68k/.dirstamp
$(DEPDIR)/gens_core/cpu/68k/.dirstamp:
	@$(mkinstalldirs) $(DEPDIR)/gens_core/cpu/68k
	@: > $(DEPDIR)/gens_core/cpu/68k/.dirstamp
gens_core/cpu/68k/gens-cpu_68k.$(OBJEXT): gens_core/cpu/68k/cpu_68k.c \
	gens_core/cpu/68k/.dirstamp \
	$(DEPDIR)/gens_core/cpu/68k/.dirstamp
gens_core/cpu/sh2/.dirstamp:
	@$(mkinstalldirs) gens_core/cpu/sh2
	@: > gens_core/cpu/sh2/.dirstamp
$(DEPDIR)/gens_core/cpu/sh2/.dirstamp:
	@$(mkinstalldirs) $(DEPDIR)/gens_core/cpu/sh2
	@: > $(DEPDIR)/gens_core/cpu/sh2/.dirstamp
gens_core/cpu/sh2/gens-cpu_sh2.$(OBJEXT): gens_core/cpu/sh2/cpu_sh2.c \
	gens_core/cpu/sh2/.dirstamp \
	$(DEPDIR)/gens_core/cpu/sh2/.dirstamp
gens_core/cpu/sh2/gens-sh2.$(OBJEXT): gens_core/cpu/sh2/sh2.c \
	gens_core/cpu/sh2/.dirstamp \
	$(DEPDIR)/gens_core/cpu/sh2/.dirstamp
gens_core/cpu/z80/.dirstamp:
	@$(mkinstalldirs) gens_core/cpu/z80
	@: > gens_core/cpu/z80/.dirstamp
$(DEPDIR)/gens_core/cpu/z80/.dirstamp:
	@$(mkinstalldirs) $(DEPDIR)/gens_core/cpu/z80
	@: > $(DEPDIR)/gens_core/cpu/z80/.dirstamp
gens_core/cpu/z80/gens-cpu_z80.$(OBJEXT): gens_core/cpu/z80/cpu_z80.c \
	gens_core/cpu/z80/.dirstamp \
	$(DEPDIR)/gens_core/cpu/z80/.dirstamp
gens_core/sound/.dirstamp:
	@$(mkinstalldirs) gens_core/sound
	@: > gens_core/sound/.dirstamp
$(DEPDIR)/gens_core/sound/.dirstamp:
	@$(mkinstalldirs) $(DEPDIR)/gens_core/sound
	@: > $(DEPDIR)/gens_core/sound/.dirstamp
gens_core/sound/gens-pcm.$(OBJEXT): gens_core/sound/pcm.c \
	gens_core/sound/.dirstamp $(DEPDIR)/gens_core/sound/.dirstamp
gens_core/sound/gens-psg.$(OBJEXT): gens_core/sound/psg.c \
	gens_core/sound/.dirstamp $(DEPDIR)/gens_core/sound/.dirstamp
gens_core/sound/gens-ym2612.$(OBJEXT): gens_core/sound/ym2612.c \
	gens_core/sound/.dirstamp $(DEPDIR)/gens_core/sound/.dirstamp
gens_core/gfx/.dirstamp:
	@$(mkinstalldirs) gens_core/gfx
	@: > gens_core/gfx/.dirstamp
$(DEPDIR)/gens_core/gfx/.dirstamp:
	@$(mkinstalldirs) $(DEPDIR)/gens_core/gfx
	@: > $(DEPDIR)/gens_core/gfx/.dirstamp
gens_core/gfx/gens-blit2.$(OBJEXT): gens_core/gfx/blit2.c \
	gens_core/gfx/.dirstamp $(DEPDIR)/gens_core/gfx/.dirstamp
gens_core/gfx/gens-hqfilters.$(OBJEXT): gens_core/gfx/hqfilters.c \
	gens_core/gfx/.dirstamp $(DEPDIR)/gens_core/gfx/.dirstamp
segacd/.dirstamp:
	@$(mkinstalldirs) segacd
	@: > segacd/.dirstamp
$(DEPDIR)/segacd/.dirstamp:
	@$(mkinstalldirs) $(DEPDIR)/segacd
	@: > $(DEPDIR)/segacd/.dirstamp
segacd/gens-cd_aspi.$(OBJEXT): segacd/cd_aspi.c segacd/.dirstamp \
	$(DEPDIR)/segacd/.dirstamp
segacd/gens-cd_file.$(OBJEXT): segacd/cd_file.c segacd/.dirstamp \
	$(DEPDIR)/segacd/.dirstamp
segacd/gens-cd_sys.$(OBJEXT): segacd/cd_sys.c segacd/.dirstamp \
	$(DEPDIR)/segacd/.dirstamp
segacd/gens-cdda_mp3.$(OBJEXT): segacd/cdda_mp3.c segacd/.dirstamp \
	$(DEPDIR)/segacd/.dirstamp
segacd/gens-lc89510.$(OBJEXT): segacd/lc89510.c segacd/.dirstamp \
	$(DEPDIR)/segacd/.dirstamp
mp3_dec/.dirstamp:
	@$(mkinstalldirs) mp3_dec
	@: > mp3_dec/.dirstamp
$(DEPDIR)/mp3_dec/.dirstamp:
	@$(mkinstalldirs) $(DEPDIR)/mp3_dec
	@: > $(DEPDIR)/mp3_dec/.dirstamp
mp3_dec/gens-common.$(OBJEXT): mp3_dec/common.c mp3_dec/.dirstamp \
	$(DEPDIR)/mp3_dec/.dirstamp
mp3_dec/gens-dct64_i386.$(OBJEXT): mp3_dec/dct64_i386.c \
	mp3_dec/.dirstamp $(DEPDIR)/mp3_dec/.dirstamp
mp3_dec/gens-decode_i386.$(OBJEXT): mp3_dec/decode_i386.c \
	mp3_dec/.dirstamp $(DEPDIR)/mp3_dec/.dirstamp
mp3_dec/gens-interface.$(OBJEXT): mp3_dec/interface.c mp3_dec/.dirstamp \
	$(DEPDIR)/mp3_dec/.dirstamp
mp3_dec/gens-layer3.$(OBJEXT): mp3_dec/layer3.c mp3_dec/.dirstamp \
	$(DEPDIR)/mp3_dec/.dirstamp
mp3_dec/gens-tabinit.$(OBJEXT): mp3_dec/tabinit.c mp3_dec/.dirstamp \
	$(DEPDIR)/mp3_dec/.dirstamp
sdllayer/.dirstamp:
	@$(mkinstalldirs) sdllayer
	@: > sdllayer/.dirstamp
$(DEPDIR)/sdllayer/.dirstamp:
	@$(mkinstalldirs) $(DEPDIR)/sdllayer
	@: > $(DEPDIR)/sdllayer/.dirstamp
sdllayer/gens-g_sdldraw.$(OBJEXT): sdllayer/g_sdldraw.c \
	sdllayer/.dirstamp $(DEPDIR)/sdllayer/.dirstamp
sdllayer/gens-g_sdlinput.$(OBJEXT): sdllayer/g_sdlinput.c \
	sdllayer/.dirstamp $(DEPDIR)/sdllayer/.dirstamp
sdllayer/gens-g_sdlsound.$(OBJEXT): sdllayer/g_sdlsound.c \
	sdllayer/.dirstamp $(DEPDIR)/sdllayer/.dirstamp
util/.dirstamp:
	@$(mkinstalldirs) util
	@: > util/.dirstamp
$(DEPDIR)/util/.dirstamp:
	@$(mkinstalldirs) $(DEPDIR)/util
	@: > $(DEPDIR)/util/.dirstamp
util/gens-rom.$(OBJEXT): util/rom.c util/.dirstamp \
	$(DEPDIR)/util/.dirstamp
util/gens-save.$(OBJEXT): util/save.c util/.dirstamp \
	$(DEPDIR)/util/.dirstamp
util/gens-ggenie.$(OBJEXT): util/ggenie.c util/.dirstamp \
	$(DEPDIR)/util/.dirstamp
util/gens-gym.$(OBJEXT): util/gym.c util/.dirstamp \
	$(DEPDIR)/util/.dirstamp
util/gens-scrshot.$(OBJEXT): util/scrshot.c util/.dirstamp \
	$(DEPDIR)/util/.dirstamp
util/gens-unzip.$(OBJEXT): util/unzip.c util/.dirstamp \
	$(DEPDIR)/util/.dirstamp
util/gens-wave.$(OBJEXT): util/wave.c util/.dirstamp \
	$(DEPDIR)/util/.dirstamp
port/.dirstamp:
	@$(mkinstalldirs) port
	@: > port/.dirstamp
$(DEPDIR)/port/.dirstamp:
	@$(mkinstalldirs) $(DEPDIR)/port
	@: > $(DEPDIR)/port/.dirstamp
port/gens-port.$(OBJEXT): port/port.c port/.dirstamp \
	$(DEPDIR)/port/.dirstamp
port/gens-timer.$(OBJEXT): port/timer.c port/.dirstamp \
	$(DEPDIR)/port/.dirstamp
emulator/.dirstamp:
	@$(mkinstalldirs) emulator
	@: > emulator/.dirstamp
$(DEPDIR)/emulator/.dirstamp:
	@$(mkinstalldirs) $(DEPDIR)/emulator
	@: > $(DEPDIR)/emulator/.dirstamp
emulator/gens-ui_proxy.$(OBJEXT): emulator/ui_proxy.c emulator/.dirstamp \
	$(DEPDIR)/emulator/.dirstamp
emulator/gens-g_main.$(OBJEXT): emulator/g_main.c emulator/.dirstamp \
	$(DEPDIR)/emulator/.dirstamp
emulator/gens-gens.$(OBJEXT): emulator/gens.c emulator/.dirstamp \
	$(DEPDIR)/emulator/.dirstamp
debug/.dirstamp:
	@$(mkinstalldirs) debug
	@: > debug/.dirstamp
$(DEPDIR)/debug/.dirstamp:
	@$(mkinstalldirs) $(DEPDIR)/debug
	@: > $(DEPDIR)/debug/.dirstamp
debug/gens-debug.$(OBJEXT): debug/debug.c debug/.dirstamp \
	$(DEPDIR)/debug/.dirstamp
debug/gens-m68kd.$(OBJEXT): debug/m68kd.c debug/.dirstamp \
	$(DEPDIR)/debug/.dirstamp
debug/gens-sh2d.$(OBJEXT): debug/sh2d.c debug/.dirstamp \
	$(DEPDIR)/debug/.dirstamp
debug/gens-z80dis.$(OBJEXT): debug/z80dis.c debug/.dirstamp \
	$(DEPDIR)/debug/.dirstamp
gtkui/glade/.dirstamp:
	@$(mkinstalldirs) gtkui/glade
	@: > gtkui/glade/.dirstamp
$(DEPDIR)/gtkui/glade/.dirstamp:
	@$(mkinstalldirs) $(DEPDIR)/gtkui/glade
	@: > $(DEPDIR)/gtkui/glade/.dirstamp
gtkui/glade/gens-callbacks.$(OBJEXT): gtkui/glade/callbacks.c \
	gtkui/glade/.dirstamp $(DEPDIR)/gtkui/glade/.dirstamp
gtkui/glade/gens-interface.$(OBJEXT): gtkui/glade/interface.c \
	gtkui/glade/.dirstamp $(DEPDIR)/gtkui/glade/.dirstamp
gtkui/.dirstamp:
	@$(mkinstalldirs) gtkui
	@: > gtkui/.dirstamp
$(DEPDIR)/gtkui/.dirstamp:
	@$(mkinstalldirs) $(DEPDIR)/gtkui
	@: > $(DEPDIR)/gtkui/.dirstamp
gtkui/gens-support.$(OBJEXT): gtkui/support.c gtkui/.dirstamp \
	$(DEPDIR)/gtkui/.dirstamp
emulator/gens-parse.$(OBJEXT): emulator/parse.c emulator/.dirstamp \
	$(DEPDIR)/emulator/.dirstamp
gens$(EXEEXT): $(gens_OBJECTS) $(gens_DEPENDENCIES) 
	@rm -f gens$(EXEEXT)
	$(LINK) $(gens_LDFLAGS) $(gens_OBJECTS) $(gens_LDADD) $(LIBS)

mostlyclean-compile:
	-rm -f *.$(OBJEXT) core *.core
	-rm -f debug/gens-debug.$(OBJEXT)
	-rm -f debug/gens-m68kd.$(OBJEXT)
	-rm -f debug/gens-sh2d.$(OBJEXT)
	-rm -f debug/gens-z80dis.$(OBJEXT)
	-rm -f emulator/gens-g_main.$(OBJEXT)
	-rm -f emulator/gens-gens.$(OBJEXT)
	-rm -f emulator/gens-parse.$(OBJEXT)
	-rm -f emulator/gens-ui_proxy.$(OBJEXT)
	-rm -f gens_core/cpu/68k/gens-cpu_68k.$(OBJEXT)
	-rm -f gens_core/cpu/sh2/gens-cpu_sh2.$(OBJEXT)
	-rm -f gens_core/cpu/sh2/gens-sh2.$(OBJEXT)
	-rm -f gens_core/cpu/z80/gens-cpu_z80.$(OBJEXT)
	-rm -f gens_core/gfx/gens-blit2.$(OBJEXT)
	-rm -f gens_core/gfx/gens-hqfilters.$(OBJEXT)
	-rm -f gens_core/sound/gens-pcm.$(OBJEXT)
	-rm -f gens_core/sound/gens-psg.$(OBJEXT)
	-rm -f gens_core/sound/gens-ym2612.$(OBJEXT)
	-rm -f gtkui/gens-support.$(OBJEXT)
	-rm -f gtkui/glade/gens-callbacks.$(OBJEXT)
	-rm -f gtkui/glade/gens-interface.$(OBJEXT)
	-rm -f mp3_dec/gens-common.$(OBJEXT)
	-rm -f mp3_dec/gens-dct64_i386.$(OBJEXT)
	-rm -f mp3_dec/gens-decode_i386.$(OBJEXT)
	-rm -f mp3_dec/gens-interface.$(OBJEXT)
	-rm -f mp3_dec/gens-layer3.$(OBJEXT)
	-rm -f mp3_dec/gens-tabinit.$(OBJEXT)
	-rm -f port/gens-port.$(OBJEXT)
	-rm -f port/gens-timer.$(OBJEXT)
	-rm -f sdllayer/gens-g_sdldraw.$(OBJEXT)
	-rm -f sdllayer/gens-g_sdlinput.$(OBJEXT)
	-rm -f sdllayer/gens-g_sdlsound.$(OBJEXT)
	-rm -f segacd/gens-cd_aspi.$(OBJEXT)
	-rm -f segacd/gens-cd_file.$(OBJEXT)
	-rm -f segacd/gens-cd_sys.$(OBJEXT)
	-rm -f segacd/gens-cdda_mp3.$(OBJEXT)
	-rm -f segacd/gens-lc89510.$(OBJEXT)
	-rm -f util/gens-ggenie.$(OBJEXT)
	-rm -f util/gens-gym.$(OBJEXT)
	-rm -f util/gens-rom.$(OBJEXT)
	-rm -f util/gens-save.$(OBJEXT)
	-rm -f util/gens-scrshot.$(OBJEXT)
	-rm -f util/gens-unzip.$(OBJEXT)
	-rm -f util/gens-wave.$(OBJEXT)

distclean-compile:
	-rm -f *.tab.c
	-rm -f $(DEPDIR)/debug/.dirstamp
	-rm -f $(DEPDIR)/emulator/.dirstamp
	-rm -f $(DEPDIR)/gens_core/cpu/68k/.dirstamp
	-rm -f $(DEPDIR)/gens_core/cpu/sh2/.dirstamp
	-rm -f $(DEPDIR)/gens_core/cpu/z80/.dirstamp
	-rm -f $(DEPDIR)/gens_core/gfx/.dirstamp
	-rm -f $(DEPDIR)/gens_core/sound/.dirstamp
	-rm -f $(DEPDIR)/gtkui/.dirstamp
	-rm -f $(DEPDIR)/gtkui/glade/.dirstamp
	-rm -f $(DEPDIR)/mp3_dec/.dirstamp
	-rm -f $(DEPDIR)/port/.dirstamp
	-rm -f $(DEPDIR)/sdllayer/.dirstamp
	-rm -f $(DEPDIR)/segacd/.dirstamp
	-rm -f $(DEPDIR)/util/.dirstamp
	-rm -f debug/.dirstamp
	-rm -f emulator/.dirstamp
	-rm -f gens_core/cpu/68k/.dirstamp
	-rm -f gens_core/cpu/sh2/.dirstamp
	-rm -f gens_core/cpu/z80/.dirstamp
	-rm -f gens_core/gfx/.dirstamp
	-rm -f gens_core/sound/.dirstamp
	-rm -f gtkui/.dirstamp
	-rm -f gtkui/glade/.dirstamp
	-rm -f mp3_dec/.dirstamp
	-rm -f port/.dirstamp
	-rm -f sdllayer/.dirstamp
	-rm -f segacd/.dirstamp
	-rm -f util/.dirstamp

include $(DEPDIR)/debug/gens-debug.Po
include $(DEPDIR)/debug/gens-m68kd.Po
include $(DEPDIR)/debug/gens-sh2d.Po
include $(DEPDIR)/debug/gens-z80dis.Po
include $(DEPDIR)/emulator/gens-g_main.Po
include $(DEPDIR)/emulator/gens-gens.Po
include $(DEPDIR)/emulator/gens-parse.Po
include $(DEPDIR)/emulator/gens-ui_proxy.Po
include $(DEPDIR)/gens_core/cpu/68k/gens-cpu_68k.Po
include $(DEPDIR)/gens_core/cpu/sh2/gens-cpu_sh2.Po
include $(DEPDIR)/gens_core/cpu/sh2/gens-sh2.Po
include $(DEPDIR)/gens_core/cpu/z80/gens-cpu_z80.Po
include $(DEPDIR)/gens_core/gfx/gens-blit2.Po
include $(DEPDIR)/gens_core/gfx/gens-hqfilters.Po
include $(DEPDIR)/gens_core/sound/gens-pcm.Po
include $(DEPDIR)/gens_core/sound/gens-psg.Po
include $(DEPDIR)/gens_core/sound/gens-ym2612.Po
include $(DEPDIR)/gtkui/gens-support.Po
include $(DEPDIR)/gtkui/glade/gens-callbacks.Po
include $(DEPDIR)/gtkui/glade/gens-interface.Po
include $(DEPDIR)/mp3_dec/gens-common.Po
include $(DEPDIR)/mp3_dec/gens-dct64_i386.Po
include $(DEPDIR)/mp3_dec/gens-decode_i386.Po
include $(DEPDIR)/mp3_dec/gens-interface.Po
include $(DEPDIR)/mp3_dec/gens-layer3.Po
include $(DEPDIR)/mp3_dec/gens-tabinit.Po
include $(DEPDIR)/port/gens-port.Po
include $(DEPDIR)/port/gens-timer.Po
include $(DEPDIR)/sdllayer/gens-g_sdldraw.Po
include $(DEPDIR)/sdllayer/gens-g_sdlinput.Po
include $(DEPDIR)/sdllayer/gens-g_sdlsound.Po
include $(DEPDIR)/segacd/gens-cd_aspi.Po
include $(DEPDIR)/segacd/gens-cd_file.Po
include $(DEPDIR)/segacd/gens-cd_sys.Po
include $(DEPDIR)/segacd/gens-cdda_mp3.Po
include $(DEPDIR)/segacd/gens-lc89510.Po
include $(DEPDIR)/util/gens-ggenie.Po
include $(DEPDIR)/util/gens-gym.Po
include $(DEPDIR)/util/gens-rom.Po
include $(DEPDIR)/util/gens-save.Po
include $(DEPDIR)/util/gens-scrshot.Po
include $(DEPDIR)/util/gens-unzip.Po
include $(DEPDIR)/util/gens-wave.Po

distclean-depend:
	-rm -rf $(DEPDIR)

.c.o:
	source='$<' object='$@' libtool=no \
	depfile='$(DEPDIR)/$*.Po' tmpdepfile='$(DEPDIR)/$*.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(COMPILE) -c -o $@ `test -f $< || echo '$(srcdir)/'`$<

.c.obj:
	source='$<' object='$@' libtool=no \
	depfile='$(DEPDIR)/$*.Po' tmpdepfile='$(DEPDIR)/$*.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(COMPILE) -c -o $@ `cygpath -w $<`

gens_core/cpu/68k/gens-cpu_68k.o: gens_core/cpu/68k/cpu_68k.c
	source='gens_core/cpu/68k/cpu_68k.c' object='gens_core/cpu/68k/gens-cpu_68k.o' libtool=no \
	depfile='$(DEPDIR)/gens_core/cpu/68k/gens-cpu_68k.Po' tmpdepfile='$(DEPDIR)/gens_core/cpu/68k/gens-cpu_68k.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o gens_core/cpu/68k/gens-cpu_68k.o `test -f gens_core/cpu/68k/cpu_68k.c || echo '$(srcdir)/'`gens_core/cpu/68k/cpu_68k.c

gens_core/cpu/68k/gens-cpu_68k.obj: gens_core/cpu/68k/cpu_68k.c
	source='gens_core/cpu/68k/cpu_68k.c' object='gens_core/cpu/68k/gens-cpu_68k.obj' libtool=no \
	depfile='$(DEPDIR)/gens_core/cpu/68k/gens-cpu_68k.Po' tmpdepfile='$(DEPDIR)/gens_core/cpu/68k/gens-cpu_68k.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o gens_core/cpu/68k/gens-cpu_68k.obj `cygpath -w gens_core/cpu/68k/cpu_68k.c`

gens_core/cpu/sh2/gens-cpu_sh2.o: gens_core/cpu/sh2/cpu_sh2.c
	source='gens_core/cpu/sh2/cpu_sh2.c' object='gens_core/cpu/sh2/gens-cpu_sh2.o' libtool=no \
	depfile='$(DEPDIR)/gens_core/cpu/sh2/gens-cpu_sh2.Po' tmpdepfile='$(DEPDIR)/gens_core/cpu/sh2/gens-cpu_sh2.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o gens_core/cpu/sh2/gens-cpu_sh2.o `test -f gens_core/cpu/sh2/cpu_sh2.c || echo '$(srcdir)/'`gens_core/cpu/sh2/cpu_sh2.c

gens_core/cpu/sh2/gens-cpu_sh2.obj: gens_core/cpu/sh2/cpu_sh2.c
	source='gens_core/cpu/sh2/cpu_sh2.c' object='gens_core/cpu/sh2/gens-cpu_sh2.obj' libtool=no \
	depfile='$(DEPDIR)/gens_core/cpu/sh2/gens-cpu_sh2.Po' tmpdepfile='$(DEPDIR)/gens_core/cpu/sh2/gens-cpu_sh2.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o gens_core/cpu/sh2/gens-cpu_sh2.obj `cygpath -w gens_core/cpu/sh2/cpu_sh2.c`

gens_core/cpu/sh2/gens-sh2.o: gens_core/cpu/sh2/sh2.c
	source='gens_core/cpu/sh2/sh2.c' object='gens_core/cpu/sh2/gens-sh2.o' libtool=no \
	depfile='$(DEPDIR)/gens_core/cpu/sh2/gens-sh2.Po' tmpdepfile='$(DEPDIR)/gens_core/cpu/sh2/gens-sh2.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o gens_core/cpu/sh2/gens-sh2.o `test -f gens_core/cpu/sh2/sh2.c || echo '$(srcdir)/'`gens_core/cpu/sh2/sh2.c

gens_core/cpu/sh2/gens-sh2.obj: gens_core/cpu/sh2/sh2.c
	source='gens_core/cpu/sh2/sh2.c' object='gens_core/cpu/sh2/gens-sh2.obj' libtool=no \
	depfile='$(DEPDIR)/gens_core/cpu/sh2/gens-sh2.Po' tmpdepfile='$(DEPDIR)/gens_core/cpu/sh2/gens-sh2.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o gens_core/cpu/sh2/gens-sh2.obj `cygpath -w gens_core/cpu/sh2/sh2.c`

gens_core/cpu/z80/gens-cpu_z80.o: gens_core/cpu/z80/cpu_z80.c
	source='gens_core/cpu/z80/cpu_z80.c' object='gens_core/cpu/z80/gens-cpu_z80.o' libtool=no \
	depfile='$(DEPDIR)/gens_core/cpu/z80/gens-cpu_z80.Po' tmpdepfile='$(DEPDIR)/gens_core/cpu/z80/gens-cpu_z80.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o gens_core/cpu/z80/gens-cpu_z80.o `test -f gens_core/cpu/z80/cpu_z80.c || echo '$(srcdir)/'`gens_core/cpu/z80/cpu_z80.c

gens_core/cpu/z80/gens-cpu_z80.obj: gens_core/cpu/z80/cpu_z80.c
	source='gens_core/cpu/z80/cpu_z80.c' object='gens_core/cpu/z80/gens-cpu_z80.obj' libtool=no \
	depfile='$(DEPDIR)/gens_core/cpu/z80/gens-cpu_z80.Po' tmpdepfile='$(DEPDIR)/gens_core/cpu/z80/gens-cpu_z80.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o gens_core/cpu/z80/gens-cpu_z80.obj `cygpath -w gens_core/cpu/z80/cpu_z80.c`

gens_core/sound/gens-pcm.o: gens_core/sound/pcm.c
	source='gens_core/sound/pcm.c' object='gens_core/sound/gens-pcm.o' libtool=no \
	depfile='$(DEPDIR)/gens_core/sound/gens-pcm.Po' tmpdepfile='$(DEPDIR)/gens_core/sound/gens-pcm.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o gens_core/sound/gens-pcm.o `test -f gens_core/sound/pcm.c || echo '$(srcdir)/'`gens_core/sound/pcm.c

gens_core/sound/gens-pcm.obj: gens_core/sound/pcm.c
	source='gens_core/sound/pcm.c' object='gens_core/sound/gens-pcm.obj' libtool=no \
	depfile='$(DEPDIR)/gens_core/sound/gens-pcm.Po' tmpdepfile='$(DEPDIR)/gens_core/sound/gens-pcm.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o gens_core/sound/gens-pcm.obj `cygpath -w gens_core/sound/pcm.c`

gens_core/sound/gens-psg.o: gens_core/sound/psg.c
	source='gens_core/sound/psg.c' object='gens_core/sound/gens-psg.o' libtool=no \
	depfile='$(DEPDIR)/gens_core/sound/gens-psg.Po' tmpdepfile='$(DEPDIR)/gens_core/sound/gens-psg.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o gens_core/sound/gens-psg.o `test -f gens_core/sound/psg.c || echo '$(srcdir)/'`gens_core/sound/psg.c

gens_core/sound/gens-psg.obj: gens_core/sound/psg.c
	source='gens_core/sound/psg.c' object='gens_core/sound/gens-psg.obj' libtool=no \
	depfile='$(DEPDIR)/gens_core/sound/gens-psg.Po' tmpdepfile='$(DEPDIR)/gens_core/sound/gens-psg.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o gens_core/sound/gens-psg.obj `cygpath -w gens_core/sound/psg.c`

gens_core/sound/gens-ym2612.o: gens_core/sound/ym2612.c
	source='gens_core/sound/ym2612.c' object='gens_core/sound/gens-ym2612.o' libtool=no \
	depfile='$(DEPDIR)/gens_core/sound/gens-ym2612.Po' tmpdepfile='$(DEPDIR)/gens_core/sound/gens-ym2612.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o gens_core/sound/gens-ym2612.o `test -f gens_core/sound/ym2612.c || echo '$(srcdir)/'`gens_core/sound/ym2612.c

gens_core/sound/gens-ym2612.obj: gens_core/sound/ym2612.c
	source='gens_core/sound/ym2612.c' object='gens_core/sound/gens-ym2612.obj' libtool=no \
	depfile='$(DEPDIR)/gens_core/sound/gens-ym2612.Po' tmpdepfile='$(DEPDIR)/gens_core/sound/gens-ym2612.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o gens_core/sound/gens-ym2612.obj `cygpath -w gens_core/sound/ym2612.c`

gens_core/gfx/gens-blit2.o: gens_core/gfx/blit2.c
	source='gens_core/gfx/blit2.c' object='gens_core/gfx/gens-blit2.o' libtool=no \
	depfile='$(DEPDIR)/gens_core/gfx/gens-blit2.Po' tmpdepfile='$(DEPDIR)/gens_core/gfx/gens-blit2.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o gens_core/gfx/gens-blit2.o `test -f gens_core/gfx/blit2.c || echo '$(srcdir)/'`gens_core/gfx/blit2.c

gens_core/gfx/gens-blit2.obj: gens_core/gfx/blit2.c
	source='gens_core/gfx/blit2.c' object='gens_core/gfx/gens-blit2.obj' libtool=no \
	depfile='$(DEPDIR)/gens_core/gfx/gens-blit2.Po' tmpdepfile='$(DEPDIR)/gens_core/gfx/gens-blit2.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o gens_core/gfx/gens-blit2.obj `cygpath -w gens_core/gfx/blit2.c`

gens_core/gfx/gens-hqfilters.o: gens_core/gfx/hqfilters.c
	source='gens_core/gfx/hqfilters.c' object='gens_core/gfx/gens-hqfilters.o' libtool=no \
	depfile='$(DEPDIR)/gens_core/gfx/gens-hqfilters.Po' tmpdepfile='$(DEPDIR)/gens_core/gfx/gens-hqfilters.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o gens_core/gfx/gens-hqfilters.o `test -f gens_core/gfx/hqfilters.c || echo '$(srcdir)/'`gens_core/gfx/hqfilters.c

gens_core/gfx/gens-hqfilters.obj: gens_core/gfx/hqfilters.c
	source='gens_core/gfx/hqfilters.c' object='gens_core/gfx/gens-hqfilters.obj' libtool=no \
	depfile='$(DEPDIR)/gens_core/gfx/gens-hqfilters.Po' tmpdepfile='$(DEPDIR)/gens_core/gfx/gens-hqfilters.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o gens_core/gfx/gens-hqfilters.obj `cygpath -w gens_core/gfx/hqfilters.c`

segacd/gens-cd_aspi.o: segacd/cd_aspi.c
	source='segacd/cd_aspi.c' object='segacd/gens-cd_aspi.o' libtool=no \
	depfile='$(DEPDIR)/segacd/gens-cd_aspi.Po' tmpdepfile='$(DEPDIR)/segacd/gens-cd_aspi.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o segacd/gens-cd_aspi.o `test -f segacd/cd_aspi.c || echo '$(srcdir)/'`segacd/cd_aspi.c

segacd/gens-cd_aspi.obj: segacd/cd_aspi.c
	source='segacd/cd_aspi.c' object='segacd/gens-cd_aspi.obj' libtool=no \
	depfile='$(DEPDIR)/segacd/gens-cd_aspi.Po' tmpdepfile='$(DEPDIR)/segacd/gens-cd_aspi.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o segacd/gens-cd_aspi.obj `cygpath -w segacd/cd_aspi.c`

segacd/gens-cd_file.o: segacd/cd_file.c
	source='segacd/cd_file.c' object='segacd/gens-cd_file.o' libtool=no \
	depfile='$(DEPDIR)/segacd/gens-cd_file.Po' tmpdepfile='$(DEPDIR)/segacd/gens-cd_file.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o segacd/gens-cd_file.o `test -f segacd/cd_file.c || echo '$(srcdir)/'`segacd/cd_file.c

segacd/gens-cd_file.obj: segacd/cd_file.c
	source='segacd/cd_file.c' object='segacd/gens-cd_file.obj' libtool=no \
	depfile='$(DEPDIR)/segacd/gens-cd_file.Po' tmpdepfile='$(DEPDIR)/segacd/gens-cd_file.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o segacd/gens-cd_file.obj `cygpath -w segacd/cd_file.c`

segacd/gens-cd_sys.o: segacd/cd_sys.c
	source='segacd/cd_sys.c' object='segacd/gens-cd_sys.o' libtool=no \
	depfile='$(DEPDIR)/segacd/gens-cd_sys.Po' tmpdepfile='$(DEPDIR)/segacd/gens-cd_sys.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o segacd/gens-cd_sys.o `test -f segacd/cd_sys.c || echo '$(srcdir)/'`segacd/cd_sys.c

segacd/gens-cd_sys.obj: segacd/cd_sys.c
	source='segacd/cd_sys.c' object='segacd/gens-cd_sys.obj' libtool=no \
	depfile='$(DEPDIR)/segacd/gens-cd_sys.Po' tmpdepfile='$(DEPDIR)/segacd/gens-cd_sys.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o segacd/gens-cd_sys.obj `cygpath -w segacd/cd_sys.c`

segacd/gens-cdda_mp3.o: segacd/cdda_mp3.c
	source='segacd/cdda_mp3.c' object='segacd/gens-cdda_mp3.o' libtool=no \
	depfile='$(DEPDIR)/segacd/gens-cdda_mp3.Po' tmpdepfile='$(DEPDIR)/segacd/gens-cdda_mp3.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o segacd/gens-cdda_mp3.o `test -f segacd/cdda_mp3.c || echo '$(srcdir)/'`segacd/cdda_mp3.c

segacd/gens-cdda_mp3.obj: segacd/cdda_mp3.c
	source='segacd/cdda_mp3.c' object='segacd/gens-cdda_mp3.obj' libtool=no \
	depfile='$(DEPDIR)/segacd/gens-cdda_mp3.Po' tmpdepfile='$(DEPDIR)/segacd/gens-cdda_mp3.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o segacd/gens-cdda_mp3.obj `cygpath -w segacd/cdda_mp3.c`

segacd/gens-lc89510.o: segacd/lc89510.c
	source='segacd/lc89510.c' object='segacd/gens-lc89510.o' libtool=no \
	depfile='$(DEPDIR)/segacd/gens-lc89510.Po' tmpdepfile='$(DEPDIR)/segacd/gens-lc89510.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o segacd/gens-lc89510.o `test -f segacd/lc89510.c || echo '$(srcdir)/'`segacd/lc89510.c

segacd/gens-lc89510.obj: segacd/lc89510.c
	source='segacd/lc89510.c' object='segacd/gens-lc89510.obj' libtool=no \
	depfile='$(DEPDIR)/segacd/gens-lc89510.Po' tmpdepfile='$(DEPDIR)/segacd/gens-lc89510.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o segacd/gens-lc89510.obj `cygpath -w segacd/lc89510.c`

mp3_dec/gens-common.o: mp3_dec/common.c
	source='mp3_dec/common.c' object='mp3_dec/gens-common.o' libtool=no \
	depfile='$(DEPDIR)/mp3_dec/gens-common.Po' tmpdepfile='$(DEPDIR)/mp3_dec/gens-common.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o mp3_dec/gens-common.o `test -f mp3_dec/common.c || echo '$(srcdir)/'`mp3_dec/common.c

mp3_dec/gens-common.obj: mp3_dec/common.c
	source='mp3_dec/common.c' object='mp3_dec/gens-common.obj' libtool=no \
	depfile='$(DEPDIR)/mp3_dec/gens-common.Po' tmpdepfile='$(DEPDIR)/mp3_dec/gens-common.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o mp3_dec/gens-common.obj `cygpath -w mp3_dec/common.c`

mp3_dec/gens-dct64_i386.o: mp3_dec/dct64_i386.c
	source='mp3_dec/dct64_i386.c' object='mp3_dec/gens-dct64_i386.o' libtool=no \
	depfile='$(DEPDIR)/mp3_dec/gens-dct64_i386.Po' tmpdepfile='$(DEPDIR)/mp3_dec/gens-dct64_i386.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o mp3_dec/gens-dct64_i386.o `test -f mp3_dec/dct64_i386.c || echo '$(srcdir)/'`mp3_dec/dct64_i386.c

mp3_dec/gens-dct64_i386.obj: mp3_dec/dct64_i386.c
	source='mp3_dec/dct64_i386.c' object='mp3_dec/gens-dct64_i386.obj' libtool=no \
	depfile='$(DEPDIR)/mp3_dec/gens-dct64_i386.Po' tmpdepfile='$(DEPDIR)/mp3_dec/gens-dct64_i386.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o mp3_dec/gens-dct64_i386.obj `cygpath -w mp3_dec/dct64_i386.c`

mp3_dec/gens-decode_i386.o: mp3_dec/decode_i386.c
	source='mp3_dec/decode_i386.c' object='mp3_dec/gens-decode_i386.o' libtool=no \
	depfile='$(DEPDIR)/mp3_dec/gens-decode_i386.Po' tmpdepfile='$(DEPDIR)/mp3_dec/gens-decode_i386.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o mp3_dec/gens-decode_i386.o `test -f mp3_dec/decode_i386.c || echo '$(srcdir)/'`mp3_dec/decode_i386.c

mp3_dec/gens-decode_i386.obj: mp3_dec/decode_i386.c
	source='mp3_dec/decode_i386.c' object='mp3_dec/gens-decode_i386.obj' libtool=no \
	depfile='$(DEPDIR)/mp3_dec/gens-decode_i386.Po' tmpdepfile='$(DEPDIR)/mp3_dec/gens-decode_i386.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o mp3_dec/gens-decode_i386.obj `cygpath -w mp3_dec/decode_i386.c`

mp3_dec/gens-interface.o: mp3_dec/interface.c
	source='mp3_dec/interface.c' object='mp3_dec/gens-interface.o' libtool=no \
	depfile='$(DEPDIR)/mp3_dec/gens-interface.Po' tmpdepfile='$(DEPDIR)/mp3_dec/gens-interface.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o mp3_dec/gens-interface.o `test -f mp3_dec/interface.c || echo '$(srcdir)/'`mp3_dec/interface.c

mp3_dec/gens-interface.obj: mp3_dec/interface.c
	source='mp3_dec/interface.c' object='mp3_dec/gens-interface.obj' libtool=no \
	depfile='$(DEPDIR)/mp3_dec/gens-interface.Po' tmpdepfile='$(DEPDIR)/mp3_dec/gens-interface.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o mp3_dec/gens-interface.obj `cygpath -w mp3_dec/interface.c`

mp3_dec/gens-layer3.o: mp3_dec/layer3.c
	source='mp3_dec/layer3.c' object='mp3_dec/gens-layer3.o' libtool=no \
	depfile='$(DEPDIR)/mp3_dec/gens-layer3.Po' tmpdepfile='$(DEPDIR)/mp3_dec/gens-layer3.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o mp3_dec/gens-layer3.o `test -f mp3_dec/layer3.c || echo '$(srcdir)/'`mp3_dec/layer3.c

mp3_dec/gens-layer3.obj: mp3_dec/layer3.c
	source='mp3_dec/layer3.c' object='mp3_dec/gens-layer3.obj' libtool=no \
	depfile='$(DEPDIR)/mp3_dec/gens-layer3.Po' tmpdepfile='$(DEPDIR)/mp3_dec/gens-layer3.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o mp3_dec/gens-layer3.obj `cygpath -w mp3_dec/layer3.c`

mp3_dec/gens-tabinit.o: mp3_dec/tabinit.c
	source='mp3_dec/tabinit.c' object='mp3_dec/gens-tabinit.o' libtool=no \
	depfile='$(DEPDIR)/mp3_dec/gens-tabinit.Po' tmpdepfile='$(DEPDIR)/mp3_dec/gens-tabinit.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o mp3_dec/gens-tabinit.o `test -f mp3_dec/tabinit.c || echo '$(srcdir)/'`mp3_dec/tabinit.c

mp3_dec/gens-tabinit.obj: mp3_dec/tabinit.c
	source='mp3_dec/tabinit.c' object='mp3_dec/gens-tabinit.obj' libtool=no \
	depfile='$(DEPDIR)/mp3_dec/gens-tabinit.Po' tmpdepfile='$(DEPDIR)/mp3_dec/gens-tabinit.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o mp3_dec/gens-tabinit.obj `cygpath -w mp3_dec/tabinit.c`

sdllayer/gens-g_sdldraw.o: sdllayer/g_sdldraw.c
	source='sdllayer/g_sdldraw.c' object='sdllayer/gens-g_sdldraw.o' libtool=no \
	depfile='$(DEPDIR)/sdllayer/gens-g_sdldraw.Po' tmpdepfile='$(DEPDIR)/sdllayer/gens-g_sdldraw.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o sdllayer/gens-g_sdldraw.o `test -f sdllayer/g_sdldraw.c || echo '$(srcdir)/'`sdllayer/g_sdldraw.c

sdllayer/gens-g_sdldraw.obj: sdllayer/g_sdldraw.c
	source='sdllayer/g_sdldraw.c' object='sdllayer/gens-g_sdldraw.obj' libtool=no \
	depfile='$(DEPDIR)/sdllayer/gens-g_sdldraw.Po' tmpdepfile='$(DEPDIR)/sdllayer/gens-g_sdldraw.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o sdllayer/gens-g_sdldraw.obj `cygpath -w sdllayer/g_sdldraw.c`

sdllayer/gens-g_sdlinput.o: sdllayer/g_sdlinput.c
	source='sdllayer/g_sdlinput.c' object='sdllayer/gens-g_sdlinput.o' libtool=no \
	depfile='$(DEPDIR)/sdllayer/gens-g_sdlinput.Po' tmpdepfile='$(DEPDIR)/sdllayer/gens-g_sdlinput.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o sdllayer/gens-g_sdlinput.o `test -f sdllayer/g_sdlinput.c || echo '$(srcdir)/'`sdllayer/g_sdlinput.c

sdllayer/gens-g_sdlinput.obj: sdllayer/g_sdlinput.c
	source='sdllayer/g_sdlinput.c' object='sdllayer/gens-g_sdlinput.obj' libtool=no \
	depfile='$(DEPDIR)/sdllayer/gens-g_sdlinput.Po' tmpdepfile='$(DEPDIR)/sdllayer/gens-g_sdlinput.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o sdllayer/gens-g_sdlinput.obj `cygpath -w sdllayer/g_sdlinput.c`

sdllayer/gens-g_sdlsound.o: sdllayer/g_sdlsound.c
	source='sdllayer/g_sdlsound.c' object='sdllayer/gens-g_sdlsound.o' libtool=no \
	depfile='$(DEPDIR)/sdllayer/gens-g_sdlsound.Po' tmpdepfile='$(DEPDIR)/sdllayer/gens-g_sdlsound.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o sdllayer/gens-g_sdlsound.o `test -f sdllayer/g_sdlsound.c || echo '$(srcdir)/'`sdllayer/g_sdlsound.c

sdllayer/gens-g_sdlsound.obj: sdllayer/g_sdlsound.c
	source='sdllayer/g_sdlsound.c' object='sdllayer/gens-g_sdlsound.obj' libtool=no \
	depfile='$(DEPDIR)/sdllayer/gens-g_sdlsound.Po' tmpdepfile='$(DEPDIR)/sdllayer/gens-g_sdlsound.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o sdllayer/gens-g_sdlsound.obj `cygpath -w sdllayer/g_sdlsound.c`

util/gens-rom.o: util/rom.c
	source='util/rom.c' object='util/gens-rom.o' libtool=no \
	depfile='$(DEPDIR)/util/gens-rom.Po' tmpdepfile='$(DEPDIR)/util/gens-rom.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o util/gens-rom.o `test -f util/rom.c || echo '$(srcdir)/'`util/rom.c

util/gens-rom.obj: util/rom.c
	source='util/rom.c' object='util/gens-rom.obj' libtool=no \
	depfile='$(DEPDIR)/util/gens-rom.Po' tmpdepfile='$(DEPDIR)/util/gens-rom.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o util/gens-rom.obj `cygpath -w util/rom.c`

util/gens-save.o: util/save.c
	source='util/save.c' object='util/gens-save.o' libtool=no \
	depfile='$(DEPDIR)/util/gens-save.Po' tmpdepfile='$(DEPDIR)/util/gens-save.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o util/gens-save.o `test -f util/save.c || echo '$(srcdir)/'`util/save.c

util/gens-save.obj: util/save.c
	source='util/save.c' object='util/gens-save.obj' libtool=no \
	depfile='$(DEPDIR)/util/gens-save.Po' tmpdepfile='$(DEPDIR)/util/gens-save.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o util/gens-save.obj `cygpath -w util/save.c`

util/gens-ggenie.o: util/ggenie.c
	source='util/ggenie.c' object='util/gens-ggenie.o' libtool=no \
	depfile='$(DEPDIR)/util/gens-ggenie.Po' tmpdepfile='$(DEPDIR)/util/gens-ggenie.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o util/gens-ggenie.o `test -f util/ggenie.c || echo '$(srcdir)/'`util/ggenie.c

util/gens-ggenie.obj: util/ggenie.c
	source='util/ggenie.c' object='util/gens-ggenie.obj' libtool=no \
	depfile='$(DEPDIR)/util/gens-ggenie.Po' tmpdepfile='$(DEPDIR)/util/gens-ggenie.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o util/gens-ggenie.obj `cygpath -w util/ggenie.c`

util/gens-gym.o: util/gym.c
	source='util/gym.c' object='util/gens-gym.o' libtool=no \
	depfile='$(DEPDIR)/util/gens-gym.Po' tmpdepfile='$(DEPDIR)/util/gens-gym.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o util/gens-gym.o `test -f util/gym.c || echo '$(srcdir)/'`util/gym.c

util/gens-gym.obj: util/gym.c
	source='util/gym.c' object='util/gens-gym.obj' libtool=no \
	depfile='$(DEPDIR)/util/gens-gym.Po' tmpdepfile='$(DEPDIR)/util/gens-gym.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o util/gens-gym.obj `cygpath -w util/gym.c`

util/gens-scrshot.o: util/scrshot.c
	source='util/scrshot.c' object='util/gens-scrshot.o' libtool=no \
	depfile='$(DEPDIR)/util/gens-scrshot.Po' tmpdepfile='$(DEPDIR)/util/gens-scrshot.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o util/gens-scrshot.o `test -f util/scrshot.c || echo '$(srcdir)/'`util/scrshot.c

util/gens-scrshot.obj: util/scrshot.c
	source='util/scrshot.c' object='util/gens-scrshot.obj' libtool=no \
	depfile='$(DEPDIR)/util/gens-scrshot.Po' tmpdepfile='$(DEPDIR)/util/gens-scrshot.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o util/gens-scrshot.obj `cygpath -w util/scrshot.c`

util/gens-unzip.o: util/unzip.c
	source='util/unzip.c' object='util/gens-unzip.o' libtool=no \
	depfile='$(DEPDIR)/util/gens-unzip.Po' tmpdepfile='$(DEPDIR)/util/gens-unzip.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o util/gens-unzip.o `test -f util/unzip.c || echo '$(srcdir)/'`util/unzip.c

util/gens-unzip.obj: util/unzip.c
	source='util/unzip.c' object='util/gens-unzip.obj' libtool=no \
	depfile='$(DEPDIR)/util/gens-unzip.Po' tmpdepfile='$(DEPDIR)/util/gens-unzip.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o util/gens-unzip.obj `cygpath -w util/unzip.c`

util/gens-wave.o: util/wave.c
	source='util/wave.c' object='util/gens-wave.o' libtool=no \
	depfile='$(DEPDIR)/util/gens-wave.Po' tmpdepfile='$(DEPDIR)/util/gens-wave.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o util/gens-wave.o `test -f util/wave.c || echo '$(srcdir)/'`util/wave.c

util/gens-wave.obj: util/wave.c
	source='util/wave.c' object='util/gens-wave.obj' libtool=no \
	depfile='$(DEPDIR)/util/gens-wave.Po' tmpdepfile='$(DEPDIR)/util/gens-wave.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o util/gens-wave.obj `cygpath -w util/wave.c`

port/gens-port.o: port/port.c
	source='port/port.c' object='port/gens-port.o' libtool=no \
	depfile='$(DEPDIR)/port/gens-port.Po' tmpdepfile='$(DEPDIR)/port/gens-port.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o port/gens-port.o `test -f port/port.c || echo '$(srcdir)/'`port/port.c

port/gens-port.obj: port/port.c
	source='port/port.c' object='port/gens-port.obj' libtool=no \
	depfile='$(DEPDIR)/port/gens-port.Po' tmpdepfile='$(DEPDIR)/port/gens-port.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o port/gens-port.obj `cygpath -w port/port.c`

port/gens-timer.o: port/timer.c
	source='port/timer.c' object='port/gens-timer.o' libtool=no \
	depfile='$(DEPDIR)/port/gens-timer.Po' tmpdepfile='$(DEPDIR)/port/gens-timer.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o port/gens-timer.o `test -f port/timer.c || echo '$(srcdir)/'`port/timer.c

port/gens-timer.obj: port/timer.c
	source='port/timer.c' object='port/gens-timer.obj' libtool=no \
	depfile='$(DEPDIR)/port/gens-timer.Po' tmpdepfile='$(DEPDIR)/port/gens-timer.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o port/gens-timer.obj `cygpath -w port/timer.c`

emulator/gens-ui_proxy.o: emulator/ui_proxy.c
	source='emulator/ui_proxy.c' object='emulator/gens-ui_proxy.o' libtool=no \
	depfile='$(DEPDIR)/emulator/gens-ui_proxy.Po' tmpdepfile='$(DEPDIR)/emulator/gens-ui_proxy.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o emulator/gens-ui_proxy.o `test -f emulator/ui_proxy.c || echo '$(srcdir)/'`emulator/ui_proxy.c

emulator/gens-ui_proxy.obj: emulator/ui_proxy.c
	source='emulator/ui_proxy.c' object='emulator/gens-ui_proxy.obj' libtool=no \
	depfile='$(DEPDIR)/emulator/gens-ui_proxy.Po' tmpdepfile='$(DEPDIR)/emulator/gens-ui_proxy.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o emulator/gens-ui_proxy.obj `cygpath -w emulator/ui_proxy.c`

emulator/gens-g_main.o: emulator/g_main.c
	source='emulator/g_main.c' object='emulator/gens-g_main.o' libtool=no \
	depfile='$(DEPDIR)/emulator/gens-g_main.Po' tmpdepfile='$(DEPDIR)/emulator/gens-g_main.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o emulator/gens-g_main.o `test -f emulator/g_main.c || echo '$(srcdir)/'`emulator/g_main.c

emulator/gens-g_main.obj: emulator/g_main.c
	source='emulator/g_main.c' object='emulator/gens-g_main.obj' libtool=no \
	depfile='$(DEPDIR)/emulator/gens-g_main.Po' tmpdepfile='$(DEPDIR)/emulator/gens-g_main.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o emulator/gens-g_main.obj `cygpath -w emulator/g_main.c`

emulator/gens-gens.o: emulator/gens.c
	source='emulator/gens.c' object='emulator/gens-gens.o' libtool=no \
	depfile='$(DEPDIR)/emulator/gens-gens.Po' tmpdepfile='$(DEPDIR)/emulator/gens-gens.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o emulator/gens-gens.o `test -f emulator/gens.c || echo '$(srcdir)/'`emulator/gens.c

emulator/gens-gens.obj: emulator/gens.c
	source='emulator/gens.c' object='emulator/gens-gens.obj' libtool=no \
	depfile='$(DEPDIR)/emulator/gens-gens.Po' tmpdepfile='$(DEPDIR)/emulator/gens-gens.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o emulator/gens-gens.obj `cygpath -w emulator/gens.c`

debug/gens-debug.o: debug/debug.c
	source='debug/debug.c' object='debug/gens-debug.o' libtool=no \
	depfile='$(DEPDIR)/debug/gens-debug.Po' tmpdepfile='$(DEPDIR)/debug/gens-debug.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o debug/gens-debug.o `test -f debug/debug.c || echo '$(srcdir)/'`debug/debug.c

debug/gens-debug.obj: debug/debug.c
	source='debug/debug.c' object='debug/gens-debug.obj' libtool=no \
	depfile='$(DEPDIR)/debug/gens-debug.Po' tmpdepfile='$(DEPDIR)/debug/gens-debug.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o debug/gens-debug.obj `cygpath -w debug/debug.c`

debug/gens-m68kd.o: debug/m68kd.c
	source='debug/m68kd.c' object='debug/gens-m68kd.o' libtool=no \
	depfile='$(DEPDIR)/debug/gens-m68kd.Po' tmpdepfile='$(DEPDIR)/debug/gens-m68kd.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o debug/gens-m68kd.o `test -f debug/m68kd.c || echo '$(srcdir)/'`debug/m68kd.c

debug/gens-m68kd.obj: debug/m68kd.c
	source='debug/m68kd.c' object='debug/gens-m68kd.obj' libtool=no \
	depfile='$(DEPDIR)/debug/gens-m68kd.Po' tmpdepfile='$(DEPDIR)/debug/gens-m68kd.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o debug/gens-m68kd.obj `cygpath -w debug/m68kd.c`

debug/gens-sh2d.o: debug/sh2d.c
	source='debug/sh2d.c' object='debug/gens-sh2d.o' libtool=no \
	depfile='$(DEPDIR)/debug/gens-sh2d.Po' tmpdepfile='$(DEPDIR)/debug/gens-sh2d.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o debug/gens-sh2d.o `test -f debug/sh2d.c || echo '$(srcdir)/'`debug/sh2d.c

debug/gens-sh2d.obj: debug/sh2d.c
	source='debug/sh2d.c' object='debug/gens-sh2d.obj' libtool=no \
	depfile='$(DEPDIR)/debug/gens-sh2d.Po' tmpdepfile='$(DEPDIR)/debug/gens-sh2d.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o debug/gens-sh2d.obj `cygpath -w debug/sh2d.c`

debug/gens-z80dis.o: debug/z80dis.c
	source='debug/z80dis.c' object='debug/gens-z80dis.o' libtool=no \
	depfile='$(DEPDIR)/debug/gens-z80dis.Po' tmpdepfile='$(DEPDIR)/debug/gens-z80dis.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o debug/gens-z80dis.o `test -f debug/z80dis.c || echo '$(srcdir)/'`debug/z80dis.c

debug/gens-z80dis.obj: debug/z80dis.c
	source='debug/z80dis.c' object='debug/gens-z80dis.obj' libtool=no \
	depfile='$(DEPDIR)/debug/gens-z80dis.Po' tmpdepfile='$(DEPDIR)/debug/gens-z80dis.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o debug/gens-z80dis.obj `cygpath -w debug/z80dis.c`

gtkui/glade/gens-callbacks.o: gtkui/glade/callbacks.c
	source='gtkui/glade/callbacks.c' object='gtkui/glade/gens-callbacks.o' libtool=no \
	depfile='$(DEPDIR)/gtkui/glade/gens-callbacks.Po' tmpdepfile='$(DEPDIR)/gtkui/glade/gens-callbacks.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o gtkui/glade/gens-callbacks.o `test -f gtkui/glade/callbacks.c || echo '$(srcdir)/'`gtkui/glade/callbacks.c

gtkui/glade/gens-callbacks.obj: gtkui/glade/callbacks.c
	source='gtkui/glade/callbacks.c' object='gtkui/glade/gens-callbacks.obj' libtool=no \
	depfile='$(DEPDIR)/gtkui/glade/gens-callbacks.Po' tmpdepfile='$(DEPDIR)/gtkui/glade/gens-callbacks.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o gtkui/glade/gens-callbacks.obj `cygpath -w gtkui/glade/callbacks.c`

gtkui/glade/gens-interface.o: gtkui/glade/interface.c
	source='gtkui/glade/interface.c' object='gtkui/glade/gens-interface.o' libtool=no \
	depfile='$(DEPDIR)/gtkui/glade/gens-interface.Po' tmpdepfile='$(DEPDIR)/gtkui/glade/gens-interface.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o gtkui/glade/gens-interface.o `test -f gtkui/glade/interface.c || echo '$(srcdir)/'`gtkui/glade/interface.c

gtkui/glade/gens-interface.obj: gtkui/glade/interface.c
	source='gtkui/glade/interface.c' object='gtkui/glade/gens-interface.obj' libtool=no \
	depfile='$(DEPDIR)/gtkui/glade/gens-interface.Po' tmpdepfile='$(DEPDIR)/gtkui/glade/gens-interface.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o gtkui/glade/gens-interface.obj `cygpath -w gtkui/glade/interface.c`

gtkui/gens-support.o: gtkui/support.c
	source='gtkui/support.c' object='gtkui/gens-support.o' libtool=no \
	depfile='$(DEPDIR)/gtkui/gens-support.Po' tmpdepfile='$(DEPDIR)/gtkui/gens-support.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o gtkui/gens-support.o `test -f gtkui/support.c || echo '$(srcdir)/'`gtkui/support.c

gtkui/gens-support.obj: gtkui/support.c
	source='gtkui/support.c' object='gtkui/gens-support.obj' libtool=no \
	depfile='$(DEPDIR)/gtkui/gens-support.Po' tmpdepfile='$(DEPDIR)/gtkui/gens-support.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o gtkui/gens-support.obj `cygpath -w gtkui/support.c`

emulator/gens-parse.o: emulator/parse.c
	source='emulator/parse.c' object='emulator/gens-parse.o' libtool=no \
	depfile='$(DEPDIR)/emulator/gens-parse.Po' tmpdepfile='$(DEPDIR)/emulator/gens-parse.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o emulator/gens-parse.o `test -f emulator/parse.c || echo '$(srcdir)/'`emulator/parse.c

emulator/gens-parse.obj: emulator/parse.c
	source='emulator/parse.c' object='emulator/gens-parse.obj' libtool=no \
	depfile='$(DEPDIR)/emulator/gens-parse.Po' tmpdepfile='$(DEPDIR)/emulator/gens-parse.TPo' \
	$(CCDEPMODE) $(depcomp) \
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(gens_CFLAGS) $(CFLAGS) -c -o emulator/gens-parse.obj `cygpath -w emulator/parse.c`
CCDEPMODE = depmode=none
uninstall-info-am:

tags: TAGS

ID: $(HEADERS) $(SOURCES) $(LISP) $(TAGS_FILES)
	list='$(SOURCES) $(HEADERS) $(TAGS_FILES)'; \
	unique=`for i in $$list; do \
	    if test -f "$$i"; then echo $$i; else echo $(srcdir)/$$i; fi; \
	  done | \
	  $(AWK) '    { files[$$0] = 1; } \
	       END { for (i in files) print i; }'`; \
	mkid -fID $$unique $(LISP)

TAGS:  $(HEADERS) $(SOURCES)  $(TAGS_DEPENDENCIES) \
		$(TAGS_FILES) $(LISP)
	tags=; \
	here=`pwd`; \
	list='$(SOURCES) $(HEADERS) $(TAGS_FILES)'; \
	unique=`for i in $$list; do \
	    if test -f "$$i"; then echo $$i; else echo $(srcdir)/$$i; fi; \
	  done | \
	  $(AWK) '    { files[$$0] = 1; } \
	       END { for (i in files) print i; }'`; \
	test -z "$(ETAGS_ARGS)$$unique$(LISP)$$tags" \
	  || etags $(ETAGS_ARGS) $$tags  $$unique $(LISP)

GTAGS:
	here=`CDPATH=: && cd $(top_builddir) && pwd` \
	  && cd $(top_srcdir) \
	  && gtags -i $(GTAGS_ARGS) $$here

distclean-tags:
	-rm -f TAGS ID GTAGS GRTAGS GSYMS GPATH

DISTFILES = $(DIST_COMMON) $(DIST_SOURCES) $(TEXINFOS) $(EXTRA_DIST)

top_distdir = ../..
distdir = $(top_distdir)/$(PACKAGE)-$(VERSION)

distdir: $(DISTFILES)
	@for file in $(DISTFILES); do \
	  if test -f $$file; then d=.; else d=$(srcdir); fi; \
	  dir=`echo "$$file" | sed -e 's,/[^/]*$$,,'`; \
	  if test "$$dir" != "$$file" && test "$$dir" != "."; then \
	    $(mkinstalldirs) "$(distdir)/$$dir"; \
	  fi; \
	  if test -d $$d/$$file; then \
	    cp -pR $$d/$$file $(distdir) \
	    || exit 1; \
	  else \
	    test -f $(distdir)/$$file \
	    || cp -p $$d/$$file $(distdir)/$$file \
	    || exit 1; \
	  fi; \
	done
check-am: all-am
check: check-am
all-am: Makefile $(PROGRAMS)

installdirs:
	$(mkinstalldirs) $(DESTDIR)$(bindir)

install: install-am
install-exec: install-exec-am
install-data: install-data-am
uninstall: uninstall-am

install-am: all-am
	@$(MAKE) $(AM_MAKEFLAGS) install-exec-am install-data-am

installcheck: installcheck-am
install-strip:
	$(MAKE) $(AM_MAKEFLAGS) INSTALL_PROGRAM="$(INSTALL_STRIP_PROGRAM)" \
	  `test -z '$(STRIP)' || \
	    echo "INSTALL_PROGRAM_ENV=STRIPPROG='$(STRIP)'"` install
mostlyclean-generic:

clean-generic:
	-test -z "$(CLEANFILES)" || rm -f $(CLEANFILES)

distclean-generic:
	-rm -f Makefile $(CONFIG_CLEAN_FILES) stamp-h stamp-h[0-9]*

maintainer-clean-generic:
	@echo "This command is intended for maintainers to use"
	@echo "it deletes files that may require special tools to rebuild."
clean: clean-am

clean-am: clean-binPROGRAMS clean-generic mostlyclean-am

distclean: distclean-am

distclean-am: clean-am distclean-compile distclean-depend \
	distclean-generic distclean-tags

dvi: dvi-am

dvi-am:

info: info-am

info-am:

install-data-am:

install-exec-am: install-binPROGRAMS

install-info: install-info-am

install-man:

installcheck-am:

maintainer-clean: maintainer-clean-am

maintainer-clean-am: distclean-am maintainer-clean-generic

mostlyclean: mostlyclean-am

mostlyclean-am: mostlyclean-compile mostlyclean-generic

uninstall-am: uninstall-binPROGRAMS uninstall-info-am

.PHONY: GTAGS all all-am check check-am clean clean-binPROGRAMS \
	clean-generic distclean distclean-compile distclean-depend \
	distclean-generic distclean-tags distdir dvi dvi-am info \
	info-am install install-am install-binPROGRAMS install-data \
	install-data-am install-exec install-exec-am install-info \
	install-info-am install-man install-strip installcheck \
	installcheck-am installdirs maintainer-clean \
	maintainer-clean-generic mostlyclean mostlyclean-compile \
	mostlyclean-generic tags uninstall uninstall-am \
	uninstall-binPROGRAMS uninstall-info-am


%.o: %.asm
	mkdir -p gens_core/gfx gens_core/io gens_core/mem gens_core/misc gens_core/sound gens_core/cpu/sh2 gens_core/vdp gens_core/cpu/z80 ;
	$(NASM) $< -o $@
# Tell versions [3.59,3.63) of GNU make to not export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT:
