#ifndef VDP_REND_H
#define VDP_REND_H

#include <stdint.h>

extern unsigned short MD_Screen[336 * 240];
extern unsigned short MD_Palette[256];
extern unsigned short Palette[0x1000];
extern unsigned long TAB336[336];

// TODO: remove declaration after ASM file has been rewritten
extern uint32_t Mask_F[8];
extern uint32_t Mask_N[8];
// extern struct vx {
// 	uint32_t Mode;
// 	uint32_t State;
// 	uint32_t AF_Data;
// 	uint32_t AF_St;
// 	uint32_t AF_Len;
// };
//extern struct VX;
//extern VX vx[320 + 32];
extern uint32_t Sprite_Visible[0x100];

// TODO: Should probably rename this struct array
extern struct SpriteData {
	int Pos_X;
	int Pos_Y;
	unsigned int Size_X;
	unsigned int Size_Y;
	int Pos_X_Max;
	int Pos_Y_Max;
	unsigned int Num_Tile;
	int dirt;
} Sprite_Struct[256];

extern int Mode_555;
extern int Sprite_Over;

void VDP_Rend_Init();
void Render_Line();
void Render_Line_32X();

#endif
