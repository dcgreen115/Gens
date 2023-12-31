#ifndef UI_PROXY_H
#define UI_PROXY_H

int Set_Sprite_Over(int Num);
int Set_Current_State(int Num);
int Set_Frame_Skip(int Num);
int Change_Debug(int Debug_Mode);
int Change_Country_Order(int Num);
int Change_Country(int Num);
int Change_SegaCD_Synchro(void);
int	Change_Sound(void);
int Change_Sample_Rate(int Rate);
int Change_Sound_Stereo(void);
int Change_Z80(void);
int Change_PSG(void);
int Change_PCM(void);
int Change_PWM(void);
int Change_DAC(void);
int Change_CDDA(void);
int Change_Fast_Blur(void);
int Change_Stretch(void);
int Change_VSync(void);
int Change_Blit_Style(void);
int Change_DAC_Improv(void);
int Change_SegaCD_SRAM_Size(int num);
int Change_YM2612(void);
int Change_PSG_Improv(void);
int Change_YM2612_Improv(void);

void save_state();
void load_state();
void system_reset();

typedef enum {
	NORMAL,
	DOUBLE,
	INTERPOLATED,
	FULL_SCANLINE,
	SCANLINE_50,
	SCANLINE_25,
	INTERPOLATED_SCANLINE,
	INTERPOLATED_SCANLINE_50,
	INTERPOLATED_SCANLINE_25,
	KREED,
	SCALE2X,
	HQ2X,
	NB_FILTER} _filters;
	
extern _filters filters;

#define SELECT_RENDERER(renderer_nb, renderer_fn,msg) \
{\
	*Rend = renderer_nb;\
 	*Blit = renderer_fn;\
	MESSAGE_L("Render selected: " msg,"Render selected: " msg, 1500)\
}

#endif
