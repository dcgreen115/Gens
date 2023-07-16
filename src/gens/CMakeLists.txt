cmake_minimum_required(VERSION 3.5)

enable_language(C ASM_NASM)
set(CMAKE_ASM_NASM_FLAGS "-O1 -f elf32 -w-orphan-labels")
set(CMAKE_C_FLAGS "-m32 -g -ggdb -Wno-deprecated-declarations")
set(CMAKE_CXX_FLAGS "-m32 -g -ggdb")

find_package(PkgConfig REQUIRED)
pkg_check_modules(GTK2 REQUIRED gtk+-2.0)
find_package(SDL REQUIRED)

set(INCLUDE_DIRS
		gens_core/cpu/68k/
		gens_core/cpu/sh2/
		gens_core/cpu/z80/
		gens_core/sound/
		gens_core/mem/
		gens_core/misc/
		gens_core/gfx/
		gens_core/io/
		gens_core/vdp/
		gens_core/
		segacd/
		mp3_dec/
		sdllayer/
		util/
		port/
		emulator/
		debug/
		netplay/
		gtkui/
		gtkui/anjuta_widget/
		gtkui/glade/
		gens/
		)

set(GENS_SOURCES 
	gens_core/nasmhead.inc
	gens_core/cpu/68k/cpu_68k.c
	gens_core/cpu/68k/cpu_68k.h
	gens_core/cpu/68k/star_68k.h
	gens_core/cpu/sh2/cpu_sh2.c
	gens_core/cpu/sh2/sh2a.asm
	gens_core/cpu/sh2/sh2.c
	gens_core/cpu/sh2/sh2.h
	gens_core/cpu/sh2/cpu_sh2.h
	gens_core/cpu/sh2/sh2_io.inc
	gens_core/cpu/z80/z80.asm
	gens_core/cpu/z80/cpu_z80.c
	gens_core/cpu/z80/cpu_z80.h
	gens_core/sound/pcm.c
	gens_core/sound/pcm.h
	gens_core/sound/psg.c
	gens_core/sound/psg.h
	gens_core/sound/ym2612.c
	gens_core/sound/ym2612.h
	gens_core/sound/pwm.asm
	gens_core/sound/pwm.h
#	gens_core/sound/z80.h
	gens_core/mem/mem_m68k.asm
	gens_core/mem/mem_m68k.h
	gens_core/mem/mem_s68k.asm
	gens_core/mem/mem_s68k.h
	gens_core/mem/mem_sh2.asm
	gens_core/mem/mem_sh2.h
	gens_core/mem/mem_z80.asm
	gens_core/mem/mem_z80.h
	gens_core/mem/mem_m68k_32x.inc
	gens_core/mem/mem_m68k_cd.inc
	gens_core/misc/misc.asm
	gens_core/misc/misc.h
	gens_core/gfx/blit.asm
	gens_core/gfx/blit.h
	gens_core/gfx/blit2.c
#	gens_core/gfx/blit2.h
	gens_core/gfx/hq2x16.asm
	gens_core/gfx/hqfilters.c
	gens_core/gfx/gfx_cd.asm
	gens_core/gfx/gfx_cd.h
	gens_core/io/io.asm
	gens_core/io/io.h
	gens_core/vdp/vdp_32x.h
	gens_core/vdp/vdp_io.asm
	gens_core/vdp/vdp_io.h
	gens_core/vdp/vdp_rend.asm
	gens_core/vdp/vdp_rend.h
	gens_core/vdp/vdp_32x.asm
	segacd/cd_aspi.c
	segacd/cd_aspi.h
	segacd/cd_file.c
	segacd/cd_file.h
	segacd/cd_sys.c
	segacd/cd_sys.h
	segacd/cdda_mp3.c
	segacd/cdda_mp3.h
	segacd/lc89510.c
	segacd/lc89510.h
	mp3_dec/common.c
	mp3_dec/dct64_i386.c
	mp3_dec/decode_i386.c
	mp3_dec/interface.c
	mp3_dec/layer3.c
	mp3_dec/tabinit.c
	mp3_dec/huffman.h
	mp3_dec/mpg123.h
	mp3_dec/mpglib.h
	sdllayer/g_sdldraw.c #
	sdllayer/g_sdldraw.h
	#sdllayer/g_ddraw.h
	sdllayer/g_sdlinput.c #
	sdllayer/g_sdlinput.h
	#sdllayer/g_input.h
	sdllayer/g_sdlsound.c #
	sdllayer/g_sdlsound.h
	#sdllayer/g_dsound.h
	util/rom.c
	util/rom.h
	util/save.c
	util/save.h
	util/ggenie.c
	util/ggenie.h
	util/gym.c
	util/gym.h
	util/scrshot.c
	util/scrshot.h
	util/unzip.c
	util/unzip.h
	util/wave.c
	util/wave.h
	port/port.c
	port/port.h
	port/timer.c
	port/timer.h
	emulator/ui_proxy.c
	emulator/ui_proxy.h
	emulator/g_main.c
	emulator/g_main.h
	emulator/gens.c
	emulator/gens.h
	debug/debug.c
	debug/debug.h
	debug/m68kd.c
	debug/m68kd.h
	debug/sh2d.c
	debug/sh2d.h
	debug/z80dis.c
	debug/z80dis.h
	gtkui/glade/callbacks.c
	gtkui/glade/callbacks.h
	gtkui/glade/interface.c
	gtkui/glade/interface.h
	gtkui/support.c
	gtkui/support.h
	emulator/parse.c
	emulator/parse.h	
#	netplay/ccnet.c
#	netplay/ccnet.h
)

add_executable(Gens ${GENS_SOURCES})

target_include_directories(Gens PUBLIC ${INCLUDE_DIRS} ${GTK2_INCLUDE_DIRS} ${SDL_INCLUDE_DIRS})
target_link_libraries(Gens main68k_lib sub68k_lib ${GTK2_LIBRARIES} ${SDL_LIBRARIES} m z)

# Move the Gens executable to the build directory
add_custom_command(TARGET Gens POST_BUILD
	COMMAND ${CMAKE_COMMAND} -E copy $<TARGET_FILE:Gens> ${PROJECT_BINARY_DIR})

# Move the pixmaps directory into the build directory so the Gens executable
# can use the images inside
add_custom_command(TARGET Gens POST_BUILD
	COMMAND ${CMAKE_COMMAND} -E copy_directory
	${CMAKE_SOURCE_DIR}/pixmaps
	${CMAKE_BINARY_DIR}/pixmaps)
