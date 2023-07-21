// A rewrite of vdp_rend_a.asm in C, for porting to 64-bit
// By Dylan Green 2023.07.18

#include <stdint.h>
#include "vdp_rend.h"

#define HIGH_B   0x80
#define SHAD_B   0x40
#define PRIO_B   0x01
#define SPR_B    0x20

#define HIGH_W   0x8080
#define SHAD_W   0x4040
#define NOSHAD_W 0xBFBF
#define PRIO_W   0x0100
#define SPR_W    0x2000

#define SHAD_D   0x40404040
#define NOSHAD_D 0xBFBFBFBF

// Data
unsigned long TAB336[336];

// TODO: declare these arrays as static after the entire assembly file has been
// translated. The asm file needs these to have external linkage to build properly.
uint32_t Mask_N[8] = { 0xFFFFFFFF, 0xFFF0FFFF, 0xFF00FFFF, 0xF000FFFF, 
			                  0x0000FFFF, 0x0000FFF0, 0x0000FF00, 0x0000F000 };
uint32_t Mask_F[8] = { 0xFFFFFFFF, 0xFFFF0FFF, 0xFFFF00FF, 0xFFFF000F, 
			                  0xFFFF0000, 0x0FFF0000, 0x00FF0000, 0x000F0000 };

// BSS
typedef struct vx {
	uint32_t Mode;
	uint32_t State;
	uint32_t AF_Data;
	uint32_t AF_St;
	uint32_t AF_Len;
} VX;

unsigned short MD_Screen[336 * 240];
unsigned short MD_Palette[0x100];
unsigned short Palette[0x1000];
struct SpriteData Sprite_Struct[256];
uint32_t Sprite_Visible[0x100];

typedef struct Data_Spr {
	uint32_t H_Min;
	uint32_t H_Max;
} Data_Spr;

typedef struct Data_Misc {
	uint32_t Pattern_Adr;
	uint32_t Line_7;
	uint32_t X;
	uint32_t Cell;
	uint32_t Start_A;
	uint32_t Length_A;
	uint32_t Start_W;
	uint32_t Length_W;
	uint32_t Mask;
	uint32_t Spr_End;
	uint32_t Next_Cell;
	uint32_t Palette;
	uint32_t Borne;
} Data_Misc;

int Sprite_Over;
int Mode_555;

void VDP_Rend_Init() {
    // Set up TAB336
    for (int i = 0; i < 240; i++) {
        TAB336[i] = i * 336;
    }

    // The original assembly code defines the array TAB320, but it doesn't seem to be used anywhere
    return;
}