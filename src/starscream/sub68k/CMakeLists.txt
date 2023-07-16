cmake_minimum_required(VERSION 3.5)
set(CMAKE_ASM_NASM_FLAGS "-O1 -f elf32 -w-orphan-labels")

# Build the sub68k-specific Starscream code generator
add_executable(star_sub star.c)

# Use the star executable to generate the m68k assembly file
add_custom_command(OUTPUT sub68k.asm 
	COMMAND star_sub 
	ARGS sub68k.asm -hog -name sub68k_ 
	DEPENDS star_sub
	VERBATIM)
add_custom_target(sub68k_asm ALL
	DEPENDS sub68k.asm)
	
# Assemble the object file for linking later on
enable_language(ASM_NASM)
add_library(sub68k_lib STATIC OBJECT STARCPU.H sub68k.asm)

