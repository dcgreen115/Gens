cmake_minimum_required(VERSION 3.5)

# Build the main68k-specific Starscream code generator
add_executable(star_main star.c)

# Use the star executable to generate the m68k assembly file
add_custom_command(OUTPUT main68k.asm 
	COMMAND star_main 
	ARGS main68k.asm -hog -name main68k_ 
	DEPENDS star_main
	VERBATIM)
add_custom_target(main68k_asm ALL
	DEPENDS main68k.asm)
	
# Assemble the object file for linking later on
enable_language(ASM_NASM)
add_library(main68k_lib STATIC OBJECT STARCPU.H main68k.asm)

