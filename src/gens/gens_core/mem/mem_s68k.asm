%include "nasmhead.inc"

	extern _Write_To_68K_Space
	extern _Read_To_68K_Space
	;; TODO
	;; Putting the following defines inside an %ifdef __GCC2 block seems to cause issues while linking 
%define _PCM_Chip PCM_Chip
%define _Ram_PCM Ram_PCM
%define _CD_Timer_Counter CD_Timer_Counter

section .bss align=64

	extern Ram_68k

	extern Rotation_Running
	extern Rot_Comp.Reg_58
	extern Rot_Comp.Reg_5A
	extern Rot_Comp.Reg_5C
	extern Rot_Comp.Reg_5E
	extern Rot_Comp.Reg_60
	extern Rot_Comp.Reg_62
	extern Rot_Comp.Reg_64
	extern Rot_Comp.Reg_66

	extern _PCM_Chip
	extern _Ram_PCM

	%define PCM_Chip_Enable		_PCM_Chip + (1 * 4)
	%define PCM_Cur_Chan		_PCM_Chip + (2 * 4)
	%define PCM_Chip_Bank		_PCM_Chip + (3 * 4)

	%define PCM_Chan_ENV		_PCM_Chip + (4 * 4)
	%define PCM_Chan_PAN		_PCM_Chip + (5 * 4)
	%define PCM_Chan_MUL_L		_PCM_Chip + (6 * 4)
	%define PCM_Chan_MUL_R		_PCM_Chip + (7 * 4)
	%define PCM_Chan_St_Addr	_PCM_Chip + (8 * 4)
	%define PCM_Chan_Loop_Addr	_PCM_Chip + (9 * 4)
	%define PCM_Chan_Addr		_PCM_Chip + (10 * 4)
	%define PCM_Chan_Step		_PCM_Chip + (11 * 4)
	%define PCM_Chan_Step_B		_PCM_Chip + (12 * 4)
	%define PCM_Chan_Enable		_PCM_Chip + (13 * 4)
	%define PCM_Chan_Data		_PCM_Chip + (14 * 4)

	%define PCM_Channel			(11 * 4)
	%define PCM_STEP_SHIFT		11

	global COMM.Flag
	global COMM.Command
	global COMM.Status

	global CDD.Fader
	global CDD.Control
	global CDD.Cur_Comm
	global CDD.Rcv_Status
	global CDD.Trans_Comm
	global CDD.Status
	global CDD.Minute
	global CDD.Seconde
	global CDD.Frame
	global CDD.Ext

	global CDC.RS0
	global CDC.RS1
	global CDC.Host_Data
	global CDC.DMA_Adr
	global CDC.Stop_Watch

	DECL Ram_Prg
	resb 512 * 1024

	DECL Ram_Word_2M
	resb 256 * 1024

	DECL Ram_Word_1M
	resb 256 * 1024

	DECL Cell_Conv_Tab
	resw 64 * 1024

	DECL Ram_Backup
	resb 64 * 1024

	DECL COMM
	.Flag		resd 1
	.Command	resw 8
	.Status		resw 8

	DECL CDD
	.Fader		resd 1
	.Control	resd 1
	.Cur_Comm	resd 1
	.Rcv_Status	resb 10
	.Trans_Comm	resb 10
	.Status		resd 1
	.Minute		resd 1
	.Seconde	resd 1
	.Frame		resd 1
	.Ext		resd 1

	DECL CDC
	.RS0		resd 1
	.RS1		resd 1
	.Host_Data	resd 1
	.DMA_Adr	resd 1
	.Stop_Watch	resd 1
	.COMIN		resd 1
	.IFSTAT		resd 1
	.DBC		resd 1
	.DAC		resd 1
	.HEAD		resd 1
	.PT			resd 1
	.WA			resd 1
	.STAT		resd 1
	.SBOUT		resd 1
	.IFCTRL		resd 1
	.CTRL		resd 1
	.Buffer		resb (16 * 1024 * 2) + 2352

	DECL LED_Status
	resd 1

	DECL S68K_Mem_WP
	resd 1

	DECL S68K_Mem_PM
	resd 1

	DECL Ram_Word_State
	resd 1

	DECL Init_Timer_INT3
	resd 1

	DECL Timer_INT3
	resd 1

	DECL Timer_Step
	resd 1

	DECL Int_Mask_S68K
	resd 1

	DECL Font_COLOR
	resd 1

	DECL Font_BITS
	resd 1

	DECL CD_Access_Timer
	resd 1

	
section .data align=64

	extern _CD_Timer_Counter
	extern _CDD_Complete

	DECL Memory_Control_Status
	db 1, 2, 4 + 0, 5 + 0


;	S68K_Read_Byte_Table:
;			dd S68K_Read_Byte_Bad,	; 0x000000 - 0x0FFFFF
;			dd S68K_Read_Byte_Bad,	; 0x100000 - 0x1FFFFF
;			dd S68K_Read_Byte_Bad,	; 0x200000 - 0x2FFFFF
;			dd S68K_Read_Byte_Bad,	; 0x300000 - 0x3FFFFF
;			dd S68K_Read_Byte_Bad,	; 0x400000 - 0x4FFFFF
;			dd S68K_Read_Byte_Bad,	; 0x500000 - 0x5FFFFF
;			dd S68K_Read_Byte_Bad,	; 0x600000 - 0x6FFFFF
;			dd S68K_Read_Byte_Bad,	; 0x700000 - 0x7FFFFF
;			dd S68K_Read_Byte_Bad,	; 0x800000 - 0x8FFFFF
;			dd S68K_Read_Byte_Bad,	; 0x900000 - 0x9FFFFF
;			dd S68K_Read_Byte_Bad,	; 0xA00000 - 0xAFFFFF
;			dd S68K_Read_Byte_Bad,	; 0xB00000 - 0xBFFFFF
;			dd S68K_Read_Byte_Bad,	; 0xC00000 - 0xCFFFFF
;			dd S68K_Read_Byte_Bad,	; 0xD00000 - 0xDFFFFF
;			dd S68K_Read_Byte_Bad,	; 0xE00000 - 0xEFFFFF
;			dd S68K_Read_Byte_Bad,	; 0xF00000 - 0xFFFFFF
;
;	S68K_Read_Word_Table:
;			dd S68K_Read_Word_Bad,	; 0x000000 - 0x0FFFFF
;			dd S68K_Read_Word_Bad,	; 0x100000 - 0x1FFFFF
;			dd S68K_Read_Word_Bad,	; 0x200000 - 0x2FFFFF
;			dd S68K_Read_Word_Bad,	; 0x300000 - 0x3FFFFF
;			dd S68K_Read_Word_Bad,	; 0x400000 - 0x4FFFFF
;			dd S68K_Read_Word_Bad,	; 0x500000 - 0x5FFFFF
;			dd S68K_Read_Word_Bad,	; 0x600000 - 0x6FFFFF
;			dd S68K_Read_Word_Bad,	; 0x700000 - 0x7FFFFF
;			dd S68K_Read_Word_Bad,	; 0x800000 - 0x8FFFFF
;			dd S68K_Read_Word_Bad,	; 0x900000 - 0x9FFFFF
;			dd S68K_Read_Word_Bad,	; 0xA00000 - 0xAFFFFF
;			dd S68K_Read_Word_Bad,	; 0xB00000 - 0xBFFFFF
;			dd S68K_Read_Word_Bad,	; 0xC00000 - 0xCFFFFF
;			dd S68K_Read_Word_Bad,	; 0xD00000 - 0xDFFFFF
;			dd S68K_Read_Word_Bad,	; 0xE00000 - 0xEFFFFF
;			dd S68K_Read_Word_Bad,	; 0xF00000 - 0xFFFFFF
;
;	S68K_Write_Byte_Table:
;			dd S68K_Write_Byte_Bad,	; 0x000000 - 0x0FFFFF
;			dd S68K_Write_Byte_Bad,	; 0x100000 - 0x1FFFFF
;			dd S68K_Write_Byte_Bad,	; 0x200000 - 0x2FFFFF
;			dd S68K_Write_Byte_Bad,	; 0x300000 - 0x3FFFFF
;			dd S68K_Write_Byte_Bad,	; 0x400000 - 0x4FFFFF
;			dd S68K_Write_Byte_Bad,	; 0x500000 - 0x5FFFFF
;			dd S68K_Write_Byte_Bad,	; 0x600000 - 0x6FFFFF
;			dd S68K_Write_Byte_Bad,	; 0x700000 - 0x7FFFFF
;			dd S68K_Write_Byte_Bad,	; 0x800000 - 0x8FFFFF
;			dd S68K_Write_Byte_Bad,	; 0x900000 - 0x9FFFFF
;			dd S68K_Write_Byte_Bad,	; 0xA00000 - 0xAFFFFF
;			dd S68K_Write_Byte_Bad,	; 0xB00000 - 0xBFFFFF
;			dd S68K_Write_Byte_Bad,	; 0xC00000 - 0xCFFFFF
;			dd S68K_Write_Byte_Bad,	; 0xD00000 - 0xDFFFFF
;			dd S68K_Write_Byte_Bad,	; 0xE00000 - 0xEFFFFF
;			dd S68K_Write_Byte_Bad,	; 0xF00000 - 0xFFFFFF
;
;	S68K_Write_Word_Table:
;			dd S68K_Write_Word_Bad,	; 0x000000 - 0x0FFFFF
;			dd S68K_Write_Word_Bad,	; 0x100000 - 0x1FFFFF
;			dd S68K_Write_Word_Bad,	; 0x200000 - 0x2FFFFF
;			dd S68K_Write_Word_Bad,	; 0x300000 - 0x3FFFFF
;			dd S68K_Write_Word_Bad,	; 0x400000 - 0x4FFFFF
;			dd S68K_Write_Word_Bad,	; 0x500000 - 0x5FFFFF
;			dd S68K_Write_Word_Bad,	; 0x600000 - 0x6FFFFF
;			dd S68K_Write_Word_Bad,	; 0x700000 - 0x7FFFFF
;			dd S68K_Write_Word_Bad,	; 0x800000 - 0x8FFFFF
;			dd S68K_Write_Word_Bad,	; 0x900000 - 0x9FFFFF
;			dd S68K_Write_Word_Bad,	; 0xA00000 - 0xAFFFFF
;			dd S68K_Write_Word_Bad,	; 0xB00000 - 0xBFFFFF
;			dd S68K_Write_Word_Bad,	; 0xC00000 - 0xCFFFFF
;			dd S68K_Write_Word_Bad,	; 0xD00000 - 0xDFFFFF
;			dd S68K_Write_Word_Bad,	; 0xE00000 - 0xEFFFFF
;			dd S68K_Write_Word_Bad,	; 0xF00000 - 0xFFFFFF


section .text align=64

	extern _sub68k_interrupt
	extern _Write_PCM_Reg
	extern Calcul_Rot_Comp
	extern Update_Rot
	extern _CDC_Read_Reg
	extern _CDC_Write_Reg
	extern _CDD_Processing
	extern _CDD_Import_Command
	extern _SCD_Read_Byte
	extern _SCD_Read_Word
	extern _Check_CD_Command
	extern _Read_CDC_Host_SUB
	extern _MS68K_Set_Word_Ram


;***************** Read Byte *****************

	ALIGN64
	
	;unsigned char S68K_RB(unsigned int Adr)
	DECL S68K_RB

		push ebx
		mov ebx, [esp + 8]

		cmp ebx, 0xFDFFFF
		ja near .IO_Memory

	.Data_Memory
		cmp ebx, 0x07FFFF
		ja short .Word_RAM

		xor ebx, 1
		mov al, [Ram_Prg + ebx]
		pop ebx
		ret

	ALIGN4
	
	.Word_RAM
		mov eax, [Ram_Word_State]
		and eax, 0x3
		jmp [.Table_Word_Ram + eax * 4]

	ALIGN4

	.Table_Word_Ram
;		dd .bad, .Word_Ram_2M
		dd .Word_Ram_2M, .Word_Ram_2M
		dd .Word_Ram_1M_1, .Word_Ram_1M_0

	ALIGN4

	.Word_Ram_2M
		cmp ebx, 0x0BFFFF
		ja short .bad

		xor ebx, 1
		mov al, [Ram_Word_2M + ebx - 0x080000]
		pop ebx
		ret

	ALIGN4

	.Word_Ram_1M_0
		cmp ebx, 0x0C0000
		jb short .Dot_Img_0
		cmp ebx, 0x0DFFFF
		ja short .bad

		xor ebx, 1
		mov al, [Ram_Word_1M + ebx - 0x0C0000]
		pop ebx
		ret

	ALIGN4

	.Dot_Img_0
		shr ebx, 1
		jnc short .Even_Pix_0

		xor ebx, 1
		mov al, [Ram_Word_1M + ebx - 0x040000]
		pop ebx
		and al, 0xF
		ret

	ALIGN4

	.bad
		mov al, 0
		pop ebx
		ret

	ALIGN4

	.Even_Pix_0
		xor ebx, 1
		mov al, [Ram_Word_1M + ebx - 0x040000]
		pop ebx
		shr al, 4
		ret

	ALIGN4

	.Word_Ram_1M_1
		cmp ebx, 0x0C0000
		jb short .Dot_Img_1
		cmp ebx, 0x0DFFFF
		ja short .bad

		xor ebx, 1
		mov al, [Ram_Word_1M + ebx - 0x0C0000 + 0x20000]
		pop ebx
		ret

	ALIGN4

	.Dot_Img_1
		shr ebx, 1
		jnc short .Even_Pix_1

		xor ebx, 1
		mov al, [Ram_Word_1M + ebx - 0x040000 + 0x20000]
		pop ebx
		and al, 0xF
		ret

	ALIGN4

	.Even_Pix_1
		xor ebx, 1
		mov al, [Ram_Word_1M + ebx - 0x040000 + 0x20000]
		pop ebx
		shr al, 4
		ret

	ALIGN4
	
	.IO_Memory
		cmp ebx, 0xFF7FFF
		ja short .S68K_Reg
		cmp ebx, 0xFEFFFF
		ja near .PCM

	.Backup
		and ebx, 0x3FFF
		shr ebx, 1
		mov al, [Ram_Backup + ebx]
		pop ebx
		ret

	ALIGN4

	.S68K_Reg
		cmp ebx, 0xFF807F
		ja near .Subcode_Buffer

		and ebx, 0x7F
		jmp [.Table_S68K_Reg + ebx * 4]

	ALIGN4

	.Table_S68K_Reg
		dd .Reg_Reset_H, .Reg_Reset_L						; 00 - 01
		dd .Reg_Memory_Mode_H, .Reg_Memory_Mode_L			; 02 - 03
		dd .Reg_CDC_Mode_H, .Reg_CDC_Mode_L					; 04 - 05
		dd .Reg_CDC_RS1_H, .Reg_CDC_RS1_L					; 06 - 07
		dd .Reg_CDC_Host_Data_H, .Reg_CDC_Host_Data_L		; 08 - 09
		dd .Reg_CDC_DMA_Adr_H, .Reg_CDC_DMA_Adr_L			; 0A - 0B
		dd .Reg_Stopwatch_H, .Reg_Stopwatch_L				; 0C - 0D
		dd .Reg_Com_Flag_H, .Reg_Com_Flag_L					; 0E - 0F
		dd .Reg_Com_Data0_H, .Reg_Com_Data0_L				; 10 - 11
		dd .Reg_Com_Data1_H, .Reg_Com_Data1_L				; 12 - 13
		dd .Reg_Com_Data2_H, .Reg_Com_Data2_L				; 14 - 15
		dd .Reg_Com_Data3_H, .Reg_Com_Data3_L				; 16 - 17
		dd .Reg_Com_Data4_H, .Reg_Com_Data4_L				; 18 - 19
		dd .Reg_Com_Data5_H, .Reg_Com_Data5_L				; 1A - 1B
		dd .Reg_Com_Data6_H, .Reg_Com_Data6_L				; 1C - 1D
		dd .Reg_Com_Data7_H, .Reg_Com_Data7_L				; 1E - 1F
		dd .Reg_Com_Stat0_H, .Reg_Com_Stat0_L				; 20 - 21
		dd .Reg_Com_Stat1_H, .Reg_Com_Stat1_L				; 22 - 23
		dd .Reg_Com_Stat2_H, .Reg_Com_Stat2_L				; 24 - 25
		dd .Reg_Com_Stat3_H, .Reg_Com_Stat3_L				; 26 - 27
		dd .Reg_Com_Stat4_H, .Reg_Com_Stat4_L				; 28 - 29
		dd .Reg_Com_Stat5_H, .Reg_Com_Stat5_L				; 2A - 2B
		dd .Reg_Com_Stat6_H, .Reg_Com_Stat6_L				; 2C - 2D
		dd .Reg_Com_Stat7_H, .Reg_Com_Stat7_L				; 2E - 2F
		dd .Reg_Timer_H, .Reg_Timer_L						; 30 - 31
		dd .Reg_Int_Mask_H, .Reg_Int_Mask_L					; 32 - 33
		dd .Reg_CD_Fader_H, .Reg_CD_Fader_L					; 34 - 35
		dd .Reg_CDD_Ctrl_H, .Reg_CDD_Ctrl_L					; 36 - 37
		dd .Reg_CDD_Com0_H, .Reg_CDD_Com0_L					; 38 - 39
		dd .Reg_CDD_Com1_H, .Reg_CDD_Com1_L					; 3A - 3B
		dd .Reg_CDD_Com2_H, .Reg_CDD_Com2_L					; 3C - 3D
		dd .Reg_CDD_Com3_H, .Reg_CDD_Com3_L					; 3E - 3F
		dd .Reg_CDD_Com4_H, .Reg_CDD_Com4_L					; 40 - 41
		dd .Reg_CDD_Com5_H, .Reg_CDD_Com5_L					; 42 - 43
		dd .Reg_CDD_Com6_H, .Reg_CDD_Com6_L					; 44 - 45
		dd .Reg_CDD_Com7_H, .Reg_CDD_Com7_L					; 46 - 47
		dd .Reg_CDD_Com8_H, .Reg_CDD_Com8_L					; 48 - 49
		dd .Reg_CDD_Com9_H, .Reg_CDD_Com9_L					; 4A - 4B
		dd .Reg_Font_Color_H, .Reg_Font_Color_L				; 4C - 4D
		dd .Reg_Font_Bit_H, .Reg_Font_Bit_L					; 4E - 4F
		dd .Reg_Font_Data0_H, .Reg_Font_Data0_L				; 50 - 51
		dd .Reg_Font_Data1_H, .Reg_Font_Data1_L				; 52 - 53
		dd .Reg_Font_Data2_H, .Reg_Font_Data2_L				; 54 - 55
		dd .Reg_Font_Data3_H, .Reg_Font_Data3_L				; 56 - 57
		dd .Reg_Stamp_Size_H, .Reg_Stamp_Size_L				; 58 - 59
		dd .Reg_Stamp_Adr_H, .Reg_Stamp_Adr_L				; 5A - 5B
		dd .Reg_IM_VCell_Size_H, .Reg_IM_VCell_Size_L		; 5C - 5D
		dd .Reg_IM_Adr_H, .Reg_IM_Adr_L						; 5E - 5F
		dd .Reg_IM_Offset_H, .Reg_IM_Offset_L				; 60 - 61
		dd .Reg_IM_HDot_Size_H, .Reg_IM_HDot_Size_L			; 62 - 63
		dd .Reg_IM_VDot_Size_H, .Reg_IM_VDot_Size_L			; 64 - 65
		dd .Reg_Vector_Adr_H, .Reg_Vector_Adr_L				; 66 - 67
		dd .Reg_Subcode_Adr_H, .Reg_Subcode_Adr_L,			; 68 - 69
		dd .bad, .bad, .bad, .bad, .bad, .bad				; 6A - 6F
		dd .bad, .bad, .bad, .bad, .bad, .bad, .bad, .bad	; 70 - 77
		dd .bad, .bad, .bad, .bad, .bad, .bad, .bad, .bad	; 78 - 7F

	ALIGN4

	.Reg_Reset_H
		mov al, [LED_Status]
		pop ebx
		ret

	ALIGN4

	.Reg_Reset_L
		mov al, 1
		pop ebx
		ret

	ALIGN4

	.Reg_Memory_Mode_H
		mov al, [S68K_Mem_WP]
		pop ebx
		ret

	ALIGN4

	.Reg_Memory_Mode_L
		mov ebx, [Ram_Word_State]
		mov al, [S68K_Mem_PM]
		and ebx, 0x3
		or al, [Memory_Control_Status + ebx]
		pop ebx
		ret

	ALIGN4

	.Reg_CDC_Mode_H
		mov al, [CDC.RS0 + 1]
		pop ebx
		ret

	ALIGN4

	.Reg_CDC_Mode_L
		mov al, [CDC.RS0]
		pop ebx
		ret

	ALIGN4

	.Reg_CDC_RS1_H
		mov al, 0
		pop ebx
		ret

	ALIGN4

	.Reg_CDC_RS1_L
		call _CDC_Read_Reg
		pop ebx
		ret

	ALIGN4

	.Reg_CDC_Host_Data_H
		xor al, al
		pop ebx
		ret

	ALIGN4

	.Reg_CDC_Host_Data_L
		xor al, al
		pop ebx
		ret

	ALIGN4

	.Reg_CDC_DMA_Adr_H
		mov al, [CDC.DMA_Adr + 1]
		pop ebx
		ret

	ALIGN4

	.Reg_CDC_DMA_Adr_L
		mov al, [CDC.DMA_Adr]
		pop ebx
		ret

	ALIGN4

	.Reg_Stopwatch_H
		mov al, [CDC.Stop_Watch + 3]
		pop ebx
		ret

	ALIGN4

	.Reg_Stopwatch_L
		mov al, [CDC.Stop_Watch + 2]
		pop ebx
		ret

	ALIGN4

	.Reg_Com_Flag_H
		mov al, [COMM.Flag + 1]
		pop ebx
		ret

	ALIGN4

	.Reg_Com_Flag_L
		mov al, [COMM.Flag]
		pop ebx
		ret

	ALIGN4

	.Reg_Com_Data0_H
	.Reg_Com_Data0_L
	.Reg_Com_Data1_H
	.Reg_Com_Data1_L
	.Reg_Com_Data2_H
	.Reg_Com_Data2_L
	.Reg_Com_Data3_H
	.Reg_Com_Data3_L
	.Reg_Com_Data4_H
	.Reg_Com_Data4_L
	.Reg_Com_Data5_H
	.Reg_Com_Data5_L
	.Reg_Com_Data6_H
	.Reg_Com_Data6_L
	.Reg_Com_Data7_H
	.Reg_Com_Data7_L
		xor ebx, 1
		mov al, [COMM.Command + ebx - 0x10]
		pop ebx
		ret

	ALIGN4

	.Reg_Com_Stat0_H
	.Reg_Com_Stat0_L
	.Reg_Com_Stat1_H
	.Reg_Com_Stat1_L
	.Reg_Com_Stat2_H
	.Reg_Com_Stat2_L
	.Reg_Com_Stat3_H
	.Reg_Com_Stat3_L
	.Reg_Com_Stat4_H
	.Reg_Com_Stat4_L
	.Reg_Com_Stat5_H
	.Reg_Com_Stat5_L
	.Reg_Com_Stat6_H
	.Reg_Com_Stat6_L
	.Reg_Com_Stat7_H
	.Reg_Com_Stat7_L
		xor ebx, 1
		mov al, [COMM.Status + ebx - 0x20]
		pop ebx
		ret

	ALIGN4

	.Reg_Timer_H
		xor al, al
		pop ebx
		ret

	ALIGN4

	.Reg_Timer_L
		mov al, [Timer_INT3 + 2]
		pop ebx
		ret

	ALIGN4

	.Reg_Int_Mask_H
		mov al, 0
		pop ebx
		ret

	ALIGN4

	.Reg_Int_Mask_L
		mov al, [Int_Mask_S68K]
		pop ebx
		ret

	ALIGN4

	.Reg_CD_Fader_H
		mov al, [CDD.Fader + 1]
		and al, 0x80
		pop ebx
		ret

	ALIGN4

	.Reg_CD_Fader_L
		mov al, 0
		pop ebx
		ret

	ALIGN4

	.Reg_CDD_Ctrl_H
		mov al, [CDD.Control + 1]
		pop ebx
		ret

	ALIGN4

	.Reg_CDD_Ctrl_L
		mov al, [CDD.Control]
		pop ebx
		ret

	ALIGN4

	.Reg_CDD_Com0_H
	.Reg_CDD_Com0_L
	.Reg_CDD_Com1_H
	.Reg_CDD_Com1_L
	.Reg_CDD_Com2_H
	.Reg_CDD_Com2_L
	.Reg_CDD_Com3_H
	.Reg_CDD_Com3_L
	.Reg_CDD_Com4_H
	.Reg_CDD_Com4_L
		xor ebx, 1
		mov al, [CDD.Rcv_Status + ebx - 0x38]
		pop ebx
		ret

	ALIGN4

	.Reg_CDD_Com5_H
	.Reg_CDD_Com5_L
	.Reg_CDD_Com6_H
	.Reg_CDD_Com6_L
	.Reg_CDD_Com7_H
	.Reg_CDD_Com7_L
	.Reg_CDD_Com8_H
	.Reg_CDD_Com8_L
	.Reg_CDD_Com9_H
	.Reg_CDD_Com9_L
	.Reg_Font_Color_H
		mov al, 0
		pop ebx
		ret

	ALIGN4

	.Reg_Font_Color_L
		mov ah, [Font_COLOR + 2]
		mov al, [Font_COLOR]
		shl ah, 4
		pop ebx
		or al, ah
		ret

	ALIGN4

	.Reg_Font_Bit_H
		mov al, [Font_BITS + 1]
		pop ebx
		ret

	ALIGN4

	.Reg_Font_Bit_L
		mov al, [Font_BITS]
		pop ebx
		ret

	ALIGN 4
	.Reg_Font_Data0_H
		xor ebx, ebx
		test byte [Font_BITS + 1], 0x80
		setnz bl
		mov al, [Font_COLOR + ebx * 2]
		test byte [Font_BITS + 1], 0x40
		setnz bl
		shl al, 4
		or al, [Font_COLOR + ebx * 2]
		pop ebx
		ret

	ALIGN4

	.Reg_Font_Data0_L
		xor ebx, ebx
		test byte [Font_BITS + 1], 0x20
		setnz bl
		mov al, [Font_COLOR + ebx * 2]
		test byte [Font_BITS + 1], 0x10
		setnz bl
		shl al, 4
		or al, [Font_COLOR + ebx * 2]
		pop ebx
		ret

	ALIGN4

	.Reg_Font_Data1_H
		xor ebx, ebx
		test byte [Font_BITS + 1], 0x8
		setnz bl
		mov al, [Font_COLOR + ebx * 2]
		test byte [Font_BITS + 1], 0x4
		setnz bl
		shl al, 4
		or al, [Font_COLOR + ebx * 2]
		pop ebx
		ret

	ALIGN4

	.Reg_Font_Data1_L
		xor ebx, ebx
		test byte [Font_BITS + 1], 0x2
		setnz bl
		mov al, [Font_COLOR + ebx * 2]
		test byte [Font_BITS + 1], 0x1
		setnz bl
		shl al, 4
		or al, [Font_COLOR + ebx * 2]
		pop ebx
		ret

	ALIGN4

	.Reg_Font_Data2_H
		xor ebx, ebx
		test byte [Font_BITS], 0x80
		setnz bl
		mov al, [Font_COLOR + ebx * 2]
		test byte [Font_BITS], 0x40
		setnz bl
		shl al, 4
		or al, [Font_COLOR + ebx * 2]
		pop ebx
		ret

	ALIGN4

	.Reg_Font_Data2_L
		xor ebx, ebx
		test byte [Font_BITS], 0x20
		setnz bl
		mov al, [Font_COLOR + ebx * 2]
		test byte [Font_BITS], 0x10
		setnz bl
		shl al, 4
		or al, [Font_COLOR + ebx * 2]
		pop ebx
		ret

	ALIGN4

	.Reg_Font_Data3_H
		xor ebx, ebx
		test byte [Font_BITS], 0x8
		setnz bl
		mov al, [Font_COLOR + ebx * 2]
		test byte [Font_BITS], 0x4
		setnz bl
		shl al, 4
		or al, [Font_COLOR + ebx * 2]
		pop ebx
		ret

	ALIGN4

	.Reg_Font_Data3_L
		xor ebx, ebx
		test byte [Font_BITS], 0x2
		setnz bl
		mov al, [Font_COLOR + ebx * 2]
		test byte [Font_BITS], 0x1
		setnz bl
		shl al, 4
		or al, [Font_COLOR + ebx * 2]
		pop ebx
		ret

	ALIGN4

	.Reg_Stamp_Size_H
		mov al, [Rot_Comp.Reg_58 + 1]
		pop ebx
		ret

	ALIGN4

	.Reg_Stamp_Size_L
		mov al, [Rot_Comp.Reg_58]
		pop ebx
		ret

	ALIGN4

	.Reg_Stamp_Adr_H
		mov al, [Rot_Comp.Reg_5A + 1]
		pop ebx
		ret

	ALIGN4

	.Reg_Stamp_Adr_L
		mov al, [Rot_Comp.Reg_5A]
		pop ebx
		ret

	ALIGN4

	.Reg_IM_VCell_Size_H
		xor al, al
		pop ebx
		ret

	ALIGN4

	.Reg_IM_VCell_Size_L
		mov al, [Rot_Comp.Reg_5C]
		pop ebx
		ret

	ALIGN4

	.Reg_IM_Adr_H
		mov al, [Rot_Comp.Reg_5E + 1]
		pop ebx
		ret

	ALIGN4

	.Reg_IM_Adr_L
		mov al, [Rot_Comp.Reg_5E]
		pop ebx
		ret

	ALIGN4

	.Reg_IM_Offset_H
		xor al, al
		pop ebx
		ret

	ALIGN4

	.Reg_IM_Offset_L
		mov al, [Rot_Comp.Reg_60]
		pop ebx
		ret

	ALIGN4

	.Reg_IM_HDot_Size_H
		mov al, [Rot_Comp.Reg_62 + 1]
		pop ebx
		ret

	ALIGN4

	.Reg_IM_HDot_Size_L
		mov al, [Rot_Comp.Reg_62]
		pop ebx
		ret

	ALIGN4

	.Reg_IM_VDot_Size_H
		mov al, [Rot_Comp.Reg_64 + 1]
		pop ebx
		ret

	ALIGN4

	.Reg_IM_VDot_Size_L
		mov al, [Rot_Comp.Reg_64]
		pop ebx
		ret

	ALIGN4

	.Reg_Vector_Adr_H
	.Reg_Vector_Adr_L
	.Reg_Subcode_Adr_H
		xor al, al
		pop ebx
		ret

	ALIGN4

	.Reg_Subcode_Adr_L
push ebx
call _SCD_Read_Byte
add esp, 4

		mov al, 0
		pop ebx
		ret

	ALIGN4

	.Subcode_Buffer
		cmp ebx, 0xFF81FF
		ja near .bad

push ebx
call _SCD_Read_Byte
add esp, 4

		;and ebx, 0x7F
		;mov al, 0

		pop ebx
		ret


	ALIGN32

	.PCM
		cmp ebx, 0xFF1FFF
		ja near .PCM_Ram

		cmp ebx, 0xFF0020
		jb near .bad

		and ebx, 0x1E
		jmp [.Table_Read_PCM + ebx * 2]

	ALIGN4

	.Table_Read_PCM
		dd .Chan_0_Low, .Chan_0_High, .Chan_1_Low, .Chan_1_High 
		dd .Chan_2_Low, .Chan_2_High, .Chan_3_Low, .Chan_3_High 
		dd .Chan_4_Low, .Chan_4_High, .Chan_5_Low, .Chan_5_High 
		dd .Chan_6_Low, .Chan_6_High, .Chan_7_Low, .Chan_7_High

	ALIGN4

	.Chan_0_Low
		mov eax, [PCM_Chan_Addr + PCM_Channel * 0]
		shr eax, PCM_STEP_SHIFT
		and eax, 0xFF
		pop ebx
		ret

	ALIGN4

	.Chan_0_High
		mov eax, [PCM_Chan_Addr + PCM_Channel * 0]
		shr eax, PCM_STEP_SHIFT + 8
		and eax, 0xFF
		pop ebx
		ret

	ALIGN4

	.Chan_1_Low
		mov eax, [PCM_Chan_Addr + PCM_Channel * 1]
		shr eax, PCM_STEP_SHIFT
		and eax, 0xFF
		pop ebx
		ret

	ALIGN4

	.Chan_1_High
		mov eax, [PCM_Chan_Addr + PCM_Channel * 1]
		shr eax, PCM_STEP_SHIFT + 8
		and eax, 0xFF
		pop ebx
		ret

	ALIGN4

	.Chan_2_Low
		mov eax, [PCM_Chan_Addr + PCM_Channel * 2]
		shr eax, PCM_STEP_SHIFT
		and eax, 0xFF
		pop ebx
		ret

	ALIGN4

	.Chan_2_High
		mov eax, [PCM_Chan_Addr + PCM_Channel * 2]
		shr eax, PCM_STEP_SHIFT + 8
		and eax, 0xFF
		pop ebx
		ret

	ALIGN4

	.Chan_3_Low
		mov eax, [PCM_Chan_Addr + PCM_Channel * 3]
		shr eax, PCM_STEP_SHIFT
		and eax, 0xFF
		pop ebx
		ret

	ALIGN4

	.Chan_3_High
		mov eax, [PCM_Chan_Addr + PCM_Channel * 3]
		shr eax, PCM_STEP_SHIFT + 8
		and eax, 0xFF
		pop ebx
		ret

	ALIGN4

	.Chan_4_Low
		mov eax, [PCM_Chan_Addr + PCM_Channel * 4]
		shr eax, PCM_STEP_SHIFT
		and eax, 0xFF
		pop ebx
		ret

	ALIGN4

	.Chan_4_High
		mov eax, [PCM_Chan_Addr + PCM_Channel * 4]
		shr eax, PCM_STEP_SHIFT + 8
		and eax, 0xFF
		pop ebx
		ret

	ALIGN4

	.Chan_5_Low
		mov eax, [PCM_Chan_Addr + PCM_Channel * 5]
		shr eax, PCM_STEP_SHIFT
		and eax, 0xFF
		pop ebx
		ret

	ALIGN4

	.Chan_5_High
		mov eax, [PCM_Chan_Addr + PCM_Channel * 5]
		shr eax, PCM_STEP_SHIFT + 8
		and eax, 0xFF
		pop ebx
		ret

	ALIGN4

	.Chan_6_Low
		mov eax, [PCM_Chan_Addr + PCM_Channel * 6]
		shr eax, PCM_STEP_SHIFT
		and eax, 0xFF
		pop ebx
		ret

	ALIGN4

	.Chan_6_High
		mov eax, [PCM_Chan_Addr + PCM_Channel * 6]
		shr eax, PCM_STEP_SHIFT + 8
		and eax, 0xFF
		pop ebx
		ret

	ALIGN4

	.Chan_7_Low
		mov eax, [PCM_Chan_Addr + PCM_Channel * 7]
		shr eax, PCM_STEP_SHIFT
		and eax, 0xFF
		pop ebx
		ret

	ALIGN4

	.Chan_7_High
		mov eax, [PCM_Chan_Addr + PCM_Channel * 7]
		shr eax, PCM_STEP_SHIFT + 8
		and eax, 0xFF
		pop ebx
		ret

	ALIGN4
	
	.PCM_Ram
		shr ebx, 1
		and ebx, 0xFFF
		add ebx, [PCM_Chip_Bank]
		mov al, [_Ram_PCM + ebx]
		pop ebx
;		and al, [PCM_Chip_Enable]
		ret


;***************** Read Word *****************

	ALIGN64
	
	;unsigned short S68K_RW(unsigned int Adr)
	DECL S68K_RW

		push ebx
		mov ebx, [esp + 8]

		cmp ebx, 0xFDFFFF
		ja near .IO_Memory

	.Data_Memory
		cmp ebx, 0x07FFFF
		ja short .Word_RAM

		mov ax, [Ram_Prg + ebx]
		pop ebx
		ret

	ALIGN4
	
	.Word_RAM
		mov eax, [Ram_Word_State]
		and eax, 0x3
		jmp [.Table_Word_Ram + eax * 4]

	ALIGN4

	.Table_Word_Ram
;		dd .bad, .Word_Ram_2M
		dd .Word_Ram_2M, .Word_Ram_2M
		dd .Word_Ram_1M_1, .Word_Ram_1M_0

	ALIGN4

	.Word_Ram_2M
		cmp ebx, 0x0BFFFF
		ja short .bad

		mov ax, [Ram_Word_2M + ebx - 0x080000]
		pop ebx
		ret

	ALIGN4

	.Word_Ram_1M_0
		cmp ebx, 0x0C0000
		jb short .Dot_Img_0
		cmp ebx, 0x0DFFFF
		ja short .bad

		mov ax, [Ram_Word_1M + ebx - 0x0C0000]
		pop ebx
		ret

	ALIGN4

	.Dot_Img_0
		shr ebx, 1
		xor ebx, 1
		mov al, [Ram_Word_1M + ebx - 0x040000]
		pop ebx
		mov ah, al
		and al, 0xF
		shr ah, 4
		ret

	ALIGN4

	.bad
		mov ax, 0
		pop ebx
		ret

	ALIGN4

	.Word_Ram_1M_1
		cmp ebx, 0x0C0000
		jb short .Dot_Img_1
		cmp ebx, 0x0DFFFF
		ja short .bad

		mov ax, [Ram_Word_1M + ebx - 0x0C0000 + 0x20000]
		pop ebx
		ret

	ALIGN4

	.Dot_Img_1
		shr ebx, 1
		xor ebx, 1
		mov al, [Ram_Word_1M + ebx - 0x040000 + 0x20000]
		pop ebx
		mov ah, al
		and al, 0xF
		shr ah, 4
		ret

	ALIGN4
	
	.IO_Memory
		cmp ebx, 0xFF7FFF
		ja short .S68K_Reg
		cmp ebx, 0xFEFFFF
		ja near .PCM

		and ebx, 0x3FFF
		shr ebx, 1
		mov ax, [Ram_Backup + ebx]
		pop ebx
		ret

	ALIGN4

	.S68K_Reg
		cmp ebx, 0xFF807F
		ja near .Subcode_Buffer

		and ebx, 0x7E
		jmp [.Table_S68K_Reg + ebx * 2]

	ALIGN4

	.Table_S68K_Reg
		dd .Reg_Reset, .Reg_Memory_Mode						; 00 - 03
		dd .Reg_CDC_Mode, .Reg_CDC_RS1						; 04 - 07
		dd .Reg_CDC_Host_Data, .Reg_CDC_DMA_Adr				; 08 - 0B
		dd .Reg_Stopwatch, .Reg_Com_Flag					; 0C - 0F
		dd .Reg_Com_Data0, .Reg_Com_Data1					; 10 - 13
		dd .Reg_Com_Data2, .Reg_Com_Data3					; 14 - 17
		dd .Reg_Com_Data4, .Reg_Com_Data5					; 18 - 1B
		dd .Reg_Com_Data6, .Reg_Com_Data7					; 1C - 1F
		dd .Reg_Com_Stat0, .Reg_Com_Stat1					; 20 - 23
		dd .Reg_Com_Stat2, .Reg_Com_Stat3					; 24 - 27
		dd .Reg_Com_Stat4, .Reg_Com_Stat5					; 28 - 2B
		dd .Reg_Com_Stat6, .Reg_Com_Stat7					; 2C - 2F
		dd .Reg_Timer, .Reg_Int_Mask						; 30 - 33
		dd .Reg_CD_Fader, .Reg_CDD_Ctrl						; 34 - 37
		dd .Reg_CDD_Com0, .Reg_CDD_Com1						; 38 - 3B
		dd .Reg_CDD_Com2, .Reg_CDD_Com3						; 3C - 3F
		dd .Reg_CDD_Com4, .Reg_CDD_Com5						; 40 - 43
		dd .Reg_CDD_Com6, .Reg_CDD_Com7						; 44 - 47
		dd .Reg_CDD_Com8, .Reg_CDD_Com9						; 48 - 4B
		dd .Reg_Font_Color, .Reg_Font_Bit					; 4C - 4F
		dd .Reg_Font_Data0, .Reg_Font_Data1					; 50 - 53
		dd .Reg_Font_Data2, .Reg_Font_Data3					; 54 - 57
		dd .Reg_Stamp_Size, .Reg_Stamp_Adr					; 58 - 5B
		dd .Reg_IM_VCell_Size, .Reg_IM_Adr					; 5C - 5F
		dd .Reg_IM_Offset, .Reg_IM_HDot_Size				; 60 - 63
		dd .Reg_IM_VDot_Size, .Reg_Vector_Adr				; 64 - 67
		dd .Reg_Subcode_Adr, .bad, .bad, .bad				; 68 - 6F
		dd .bad, .bad, .bad, .bad							; 70 - 77
		dd .bad, .bad, .bad, .bad							; 78 - 7F

	ALIGN4

	.Reg_Reset
		mov ah, [LED_Status]
		mov al, 1
		pop ebx
		ret

	ALIGN4

	.Reg_Memory_Mode
		mov ebx, [Ram_Word_State]
		mov al, [S68K_Mem_PM]
		and ebx, 0x3
		mov ah, [S68K_Mem_WP]
		or al, [Memory_Control_Status + ebx]
		pop ebx
		ret

	ALIGN4

	.Reg_CDC_Mode
		mov ax, [CDC.RS0]
		pop ebx
		ret

	ALIGN4

	.Reg_CDC_RS1
		call _CDC_Read_Reg
		mov ah, 0
		pop ebx
		ret

	ALIGN4

	.Reg_CDC_Host_Data
		call _Read_CDC_Host_SUB
		pop ebx
		ret

	ALIGN4

	.Reg_CDC_DMA_Adr
		mov ax, [CDC.DMA_Adr]
		pop ebx
		ret

	ALIGN4

	.Reg_Stopwatch
		mov ax, [CDC.Stop_Watch + 2]
		pop ebx
		ret

	ALIGN4

	.Reg_Com_Flag
		mov ax, [COMM.Flag]
		pop ebx
		ret

	ALIGN4

	.Reg_Com_Data0
	.Reg_Com_Data1
	.Reg_Com_Data2
	.Reg_Com_Data3
	.Reg_Com_Data4
	.Reg_Com_Data5
	.Reg_Com_Data6
	.Reg_Com_Data7
		mov ax, [COMM.Command + ebx - 0x10]
		pop ebx
		ret

	ALIGN4

	.Reg_Com_Stat0
	.Reg_Com_Stat1
	.Reg_Com_Stat2
	.Reg_Com_Stat3
	.Reg_Com_Stat4
	.Reg_Com_Stat5
	.Reg_Com_Stat6
	.Reg_Com_Stat7
		mov ax, [COMM.Status + ebx - 0x20]
		pop ebx
		ret

	ALIGN4

	.Reg_Timer
		mov ax, [Timer_INT3 + 2]
		pop ebx
		ret

	ALIGN4

	.Reg_Int_Mask
		mov ax, [Int_Mask_S68K]
		pop ebx
		ret

	ALIGN4

	.Reg_CD_Fader
		mov ax, [CDD.Fader]
		and ax, 0X8000
		pop ebx
		ret

	ALIGN4

	.Reg_CDD_Ctrl
		mov ax, [CDD.Control]
		pop ebx
		ret

	ALIGN4

	.Reg_CDD_Com0
	.Reg_CDD_Com1
	.Reg_CDD_Com2
	.Reg_CDD_Com3
	.Reg_CDD_Com4
		mov ax, [CDD.Rcv_Status + ebx - 0x38]
		pop ebx
		ret

	ALIGN4

	.Reg_CDD_Com5
	.Reg_CDD_Com6
	.Reg_CDD_Com7
	.Reg_CDD_Com8
	.Reg_CDD_Com9
		mov ax, 0
		pop ebx
		ret

	ALIGN4

	.Reg_Font_Color
		mov ah, [Font_COLOR + 2]
		mov al, [Font_COLOR]
		shl ah, 4
		pop ebx
		or al, ah
		mov ah, 0
		ret

	ALIGN4
		
	.Reg_Font_Bit
		mov ax, [Font_BITS]
		pop ebx
		ret

	ALIGN4

	.Reg_Font_Data0
		xor ebx, ebx
		test byte [Font_BITS + 1], 0x80
		setnz bl
		mov ax, [Font_COLOR + ebx * 2]
		test byte [Font_BITS + 1], 0x40
		setnz bl
		shl ax, 4
		or ax, [Font_COLOR + ebx * 2]
		test byte [Font_BITS + 1], 0x20
		setnz bl
		shl ax, 4
		or ax, [Font_COLOR + ebx * 2]
		test byte [Font_BITS + 1], 0x10
		setnz bl
		shl ax, 4
		or ax, [Font_COLOR + ebx * 2]
		pop ebx
		ret

	ALIGN4

	.Reg_Font_Data1
		xor ebx, ebx
		test byte [Font_BITS + 1], 0x8
		setnz bl
		mov ax, [Font_COLOR + ebx * 2]
		test byte [Font_BITS + 1], 0x4
		setnz bl
		shl ax, 4
		or ax, [Font_COLOR + ebx * 2]
		test byte [Font_BITS + 1], 0x2
		setnz bl
		shl ax, 4
		or ax, [Font_COLOR + ebx * 2]
		test byte [Font_BITS + 1], 0x1
		setnz bl
		shl ax, 4
		or ax, [Font_COLOR + ebx * 2]
		pop ebx
		ret

	ALIGN4

	.Reg_Font_Data2
		xor ebx, ebx
		test byte [Font_BITS], 0x80
		setnz bl
		mov ax, [Font_COLOR + ebx * 2]
		test byte [Font_BITS], 0x40
		setnz bl
		shl ax, 4
		or ax, [Font_COLOR + ebx * 2]
		test byte [Font_BITS], 0x20
		setnz bl
		shl ax, 4
		or ax, [Font_COLOR + ebx * 2]
		test byte [Font_BITS], 0x10
		setnz bl
		shl ax, 4
		or ax, [Font_COLOR + ebx * 2]
		pop ebx
		ret

	ALIGN4

	.Reg_Font_Data3
		xor ebx, ebx
		test byte [Font_BITS], 0x8
		setnz bl
		mov ax, [Font_COLOR + ebx * 2]
		test byte [Font_BITS], 0x4
		setnz bl
		shl ax, 4
		or ax, [Font_COLOR + ebx * 2]
		test byte [Font_BITS], 0x2
		setnz bl
		shl ax, 4
		or ax, [Font_COLOR + ebx * 2]
		test byte [Font_BITS], 0x1
		setnz bl
		shl ax, 4
		or ax, [Font_COLOR + ebx * 2]
		pop ebx
		ret

	ALIGN4

	.Reg_Stamp_Size
		mov ax, [Rot_Comp.Reg_58]
		pop ebx
		ret

	ALIGN4

	.Reg_Stamp_Adr
		mov ax, [Rot_Comp.Reg_5A]
		pop ebx
		ret

	ALIGN4
	
	.Reg_IM_VCell_Size
		mov ax, [Rot_Comp.Reg_5C]
		pop ebx
		ret

	ALIGN4

	.Reg_IM_Adr
		mov ax, [Rot_Comp.Reg_5E]
		pop ebx
		ret

	ALIGN4
	
	.Reg_IM_Offset
		mov ax, [Rot_Comp.Reg_60]
		pop ebx
		ret

	ALIGN4
	
	.Reg_IM_HDot_Size
		mov ax, [Rot_Comp.Reg_62]
		pop ebx
		ret

	ALIGN4
	
	.Reg_IM_VDot_Size
		mov ax, [Rot_Comp.Reg_64]
		pop ebx
		ret

	ALIGN4

	.Reg_Vector_Adr
		xor ax, ax
		pop ebx
		ret

	ALIGN4

	.Reg_Subcode_Adr

;push ebx
;call _SCD_Read_Word
;add esp, 4

		mov ax, 0
		pop ebx
		ret

	ALIGN4

	.Subcode_Buffer
		cmp ebx, 0xFF81FF
		ja near .bad

push ebx
call _SCD_Read_Word
add esp, 4
		
		;and ebx, 0x7F
		;mov ax, 0

		pop ebx
		ret

	ALIGN32

	.PCM
		cmp ebx, 0xFF7FFF
		ja near .S68K_Reg

		cmp ebx, 0xFF1FFF
		ja near .PCM_Ram

		cmp ebx, 0xFF0020
		jb near .bad

		and ebx, 0x1E
		jmp [.Table_Read_PCM + ebx * 2]

	ALIGN4

	.Table_Read_PCM
		dd .Chan_0_Low, .Chan_0_High, .Chan_1_Low, .Chan_1_High 
		dd .Chan_2_Low, .Chan_2_High, .Chan_3_Low, .Chan_3_High 
		dd .Chan_4_Low, .Chan_4_High, .Chan_5_Low, .Chan_5_High 
		dd .Chan_6_Low, .Chan_6_High, .Chan_7_Low, .Chan_7_High

	ALIGN4

	.Chan_0_Low
		mov eax, [PCM_Chan_Addr + PCM_Channel * 0]
		shr eax, PCM_STEP_SHIFT
		and eax, 0xFF
		pop ebx
		ret

	ALIGN4

	.Chan_0_High
		mov eax, [PCM_Chan_Addr + PCM_Channel * 0]
		shr eax, PCM_STEP_SHIFT + 8
		and eax, 0xFF
		pop ebx
		ret

	ALIGN4

	.Chan_1_Low
		mov eax, [PCM_Chan_Addr + PCM_Channel * 1]
		shr eax, PCM_STEP_SHIFT
		and eax, 0xFF
		pop ebx
		ret

	ALIGN4

	.Chan_1_High
		mov eax, [PCM_Chan_Addr + PCM_Channel * 1]
		shr eax, PCM_STEP_SHIFT + 8
		and eax, 0xFF
		pop ebx
		ret

	ALIGN4

	.Chan_2_Low
		mov eax, [PCM_Chan_Addr + PCM_Channel * 2]
		shr eax, PCM_STEP_SHIFT
		and eax, 0xFF
		pop ebx
		ret

	ALIGN4

	.Chan_2_High
		mov eax, [PCM_Chan_Addr + PCM_Channel * 2]
		shr eax, PCM_STEP_SHIFT + 8
		and eax, 0xFF
		pop ebx
		ret

	ALIGN4

	.Chan_3_Low
		mov eax, [PCM_Chan_Addr + PCM_Channel * 3]
		shr eax, PCM_STEP_SHIFT
		and eax, 0xFF
		pop ebx
		ret

	ALIGN4

	.Chan_3_High
		mov eax, [PCM_Chan_Addr + PCM_Channel * 3]
		shr eax, PCM_STEP_SHIFT + 8
		and eax, 0xFF
		pop ebx
		ret

	ALIGN4

	.Chan_4_Low
		mov eax, [PCM_Chan_Addr + PCM_Channel * 4]
		shr eax, PCM_STEP_SHIFT
		and eax, 0xFF
		pop ebx
		ret

	ALIGN4

	.Chan_4_High
		mov eax, [PCM_Chan_Addr + PCM_Channel * 4]
		shr eax, PCM_STEP_SHIFT + 8
		and eax, 0xFF
		pop ebx
		ret

	ALIGN4

	.Chan_5_Low
		mov eax, [PCM_Chan_Addr + PCM_Channel * 5]
		shr eax, PCM_STEP_SHIFT
		and eax, 0xFF
		pop ebx
		ret

	ALIGN4

	.Chan_5_High
		mov eax, [PCM_Chan_Addr + PCM_Channel * 5]
		shr eax, PCM_STEP_SHIFT + 8
		and eax, 0xFF
		pop ebx
		ret

	ALIGN4

	.Chan_6_Low
		mov eax, [PCM_Chan_Addr + PCM_Channel * 6]
		shr eax, PCM_STEP_SHIFT
		and eax, 0xFF
		pop ebx
		ret

	ALIGN4

	.Chan_6_High
		mov eax, [PCM_Chan_Addr + PCM_Channel * 6]
		shr eax, PCM_STEP_SHIFT + 8
		and eax, 0xFF
		pop ebx
		ret

	ALIGN4

	.Chan_7_Low
		mov eax, [PCM_Chan_Addr + PCM_Channel * 7]
		shr eax, PCM_STEP_SHIFT
		and eax, 0xFF
		pop ebx
		ret

	ALIGN4

	.Chan_7_High
		mov eax, [PCM_Chan_Addr + PCM_Channel * 7]
		shr eax, PCM_STEP_SHIFT + 8
		and eax, 0xFF
		pop ebx
		ret

	ALIGN4

	.PCM_Ram
		shr ebx, 1
		and ebx, 0xFFF
		add ebx, [PCM_Chip_Bank]
		mov al, [_Ram_PCM + ebx]
		pop ebx
		xor ah, ah
;		and al, [PCM_Chip_Enable]
		ret


;***************** Write Byte *****************

	ALIGN64

	;void S68K_WB(unsigned int Adr, unsigned char Data)
	DECL S68K_WB

		push ebx
		push ecx
		mov ebx, [esp + 12]
		mov eax, [esp + 16]

		cmp ebx, 0xFDFFFF
		ja near .IO_Memory

	.Data_Memory
		cmp ebx, 0x07FFFF
		mov ecx, [S68K_Mem_WP]
		ja short .Word_RAM

		shl ecx, 8
		xor ebx, 1
		cmp ecx, ebx
		ja short .write_protected

		mov [Ram_Prg + ebx], al

	.write_protected
		pop ecx
		pop ebx
		ret

	ALIGN4
	
	.Word_RAM
		mov ecx, [Ram_Word_State]
		and ecx, 0x3
		jmp [.Table_Word_Ram + ecx * 4]

	ALIGN4

	.Table_Word_Ram
;		dd .bad, .Word_Ram_2M
		dd .Word_Ram_2M, .Word_Ram_2M
		dd .Word_Ram_1M_1, .Word_Ram_1M_0

	ALIGN4

	.Word_Ram_2M
		cmp ebx, 0x0BFFFF
		ja short .bad3

		xor ebx, 1
		mov [Ram_Word_2M + ebx - 0x080000], al

	.bad3
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Word_Ram_1M_0
		cmp ebx, 0x0C0000
		jb short .Dot_Img_0
		cmp ebx, 0x0DFFFF
		ja short .bad3

		xor ebx, 1
		mov [Ram_Word_1M + ebx - 0x0C0000], al
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Dot_Img_0
		shr ebx, 1
		jnc short .Even_Pix_0

		xor ebx, 1
		cmp byte [S68K_Mem_PM], 0x08
		je short .Dot_Odd_0_Under
		ja short .Dot_Odd_0_Over

	ALIGN4

	.Dot_Odd_0_Norm
		mov cl, [Ram_Word_1M + ebx - 0x040000]
		and al, 0x0F
		and cl, 0xF0
		or al, cl
		mov [Ram_Word_1M + ebx - 0x040000], al
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Dot_Odd_0_Under
		mov cl, [Ram_Word_1M + ebx - 0x040000]
		and al, 0x0F
		test cl, 0x0F
		jnz short .End_Dot_Odd_0

		and cl, 0xF0
		or al, cl
		mov [Ram_Word_1M + ebx - 0x040000], al

	.End_Dot_Odd_0
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Dot_Odd_0_Over
		and al, 0x0F
		jz short .End_Dot_Odd_0

		mov cl, [Ram_Word_1M + ebx - 0x040000]
		and cl, 0xF0
		or al, cl
		mov [Ram_Word_1M + ebx - 0x040000], al
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Even_Pix_0
		xor ebx, 1
		cmp byte [S68K_Mem_PM], 0x08
		je short .Dot_Even_0_Under
		ja short .Dot_Even_0_Over

	ALIGN4

	.Dot_Even_0_Norm
		mov cl, [Ram_Word_1M + ebx - 0x040000]
		shl al, 4
		and cl, 0x0F
		or al, cl
		mov [Ram_Word_1M + ebx - 0x040000], al
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Dot_Even_0_Under
		mov cl, [Ram_Word_1M + ebx - 0x040000]
		shl al, 4
		test cl, 0xF0
		jnz short .End_Dot_Even_0

		and cl, 0x0F
		or al, cl
		mov [Ram_Word_1M + ebx - 0x040000], al

	.End_Dot_Even_0
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Dot_Even_0_Over
		shl al, 4
		jz short .End_Dot_Even_0

		mov cl, [Ram_Word_1M + ebx - 0x040000]
		and cl, 0x0F
		or al, cl
		mov [Ram_Word_1M + ebx - 0x040000], al
		pop ecx
		pop ebx
		ret

	ALIGN4

	.bad
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Word_Ram_1M_1
		cmp ebx, 0x0C0000
		jb short .Dot_Img_1
		cmp ebx, 0x0DFFFF
		ja short .bad

		xor ebx, 1
		mov [Ram_Word_1M + ebx - 0x0C0000 + 0x20000], al
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Dot_Img_1
		shr ebx, 1
		jnc short .Even_Pix_1

		xor ebx, 1
		cmp byte [S68K_Mem_PM], 0x08
		je short .Dot_Odd_1_Under
		ja short .Dot_Odd_1_Over

	ALIGN4

	.Dot_Odd_1_Norm
		mov cl, [Ram_Word_1M + ebx - 0x040000 + 0x20000]
		and al, 0x0F
		and cl, 0xF0
		or al, cl
		mov [Ram_Word_1M + ebx - 0x040000 + 0x20000], al
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Dot_Odd_1_Under
		mov cl, [Ram_Word_1M + ebx - 0x040000 + 0x20000]
		and al, 0x0F
		test cl, 0x0F
		jnz short .End_Dot_Odd_1

		and cl, 0xF0
		or al, cl
		mov [Ram_Word_1M + ebx - 0x040000 + 0x20000], al

	.End_Dot_Odd_1
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Dot_Odd_1_Over
		and al, 0x0F
		jz short .End_Dot_Odd_1

		mov cl, [Ram_Word_1M + ebx - 0x040000 + 0x20000]
		and cl, 0xF0
		or al, cl
		mov [Ram_Word_1M + ebx - 0x040000 + 0x20000], al
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Even_Pix_1
		xor ebx, 1
		cmp byte [S68K_Mem_PM], 0x08
		je short .Dot_Even_1_Under
		ja short .Dot_Even_1_Over

	ALIGN4

	.Dot_Even_1_Norm
		mov cl, [Ram_Word_1M + ebx - 0x040000 + 0x20000]
		shl al, 4
		and cl, 0x0F
		or al, cl
		mov [Ram_Word_1M + ebx - 0x040000 + 0x20000], al
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Dot_Even_1_Under
		mov cl, [Ram_Word_1M + ebx - 0x040000 + 0x20000]
		shl al, 4
		test cl, 0xF0
		jnz short .End_Dot_Even_1

		and cl, 0x0F
		or al, cl
		mov [Ram_Word_1M + ebx - 0x040000 + 0x20000], al

	.End_Dot_Even_1
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Dot_Even_1_Over
		shl al, 4
		jz short .End_Dot_Even_1

		mov cl, [Ram_Word_1M + ebx - 0x040000 + 0x20000]
		and cl, 0x0F
		or al, cl
		mov [Ram_Word_1M + ebx - 0x040000 + 0x20000], al
		pop ecx
		pop ebx
		ret

	ALIGN4
	
	.IO_Memory
		cmp ebx, 0xFF7FFF
		ja short .S68K_Reg
		cmp ebx, 0xFEFFFF
		ja short .PCM

		and ebx, 0x3FFF
		shr ebx, 1
		mov [Ram_Backup + ebx], al
		pop ecx
		pop ebx
		ret

	ALIGN4

	.PCM
		cmp ebx, 0xFF1FFF
		ja short .PCM_Ram

		cmp ebx, 0xFF0011
		ja short .bad2

		shr ebx, 1
		push eax
		and ebx, 0x1F
		push ebx

		call _Write_PCM_Reg
		add esp, 8

	.bad2
		pop ecx
		pop ebx
		ret

	ALIGN4

	.PCM_Ram
;		cmp ebx, 0xFF3FFF
;		ja short .bad2

;		and al, [PCM_Chip_Enable]
		shr ebx, 1
		mov ecx, [PCM_Chip_Bank]
		and ebx, 0xFFF
		mov [_Ram_PCM + ebx + ecx], al

		pop ecx
		pop ebx
		ret

	ALIGN4

	.S68K_Reg
		cmp ebx, 0xFF807F
		ja near .Subcode_Buffer

		and ebx, 0x7F
		jmp [.Table_S68K_Reg + ebx * 4]

	ALIGN4

	.Table_S68K_Reg
		dd .Reg_Reset_H, .Reg_Reset_L						; 00 - 01
		dd .Reg_Memory_Mode_H, .Reg_Memory_Mode_L			; 02 - 03
		dd .Reg_CDC_Mode_H, .Reg_CDC_Mode_L					; 04 - 05
		dd .Reg_CDC_RS1_H, .Reg_CDC_RS1_L					; 06 - 07
		dd .Reg_CDC_Host_Data_H, .Reg_CDC_Host_Data_L		; 08 - 09
		dd .Reg_CDC_DMA_Adr_H, .Reg_CDC_DMA_Adr_L			; 0A - 0B
		dd .Reg_Stopwatch_H, .Reg_Stopwatch_L				; 0C - 0D
		dd .Reg_Com_Flag_H, .Reg_Com_Flag_L					; 0E - 0F
		dd .Reg_Com_Data0_H, .Reg_Com_Data0_L				; 10 - 11
		dd .Reg_Com_Data1_H, .Reg_Com_Data1_L				; 12 - 13
		dd .Reg_Com_Data2_H, .Reg_Com_Data2_L				; 14 - 15
		dd .Reg_Com_Data3_H, .Reg_Com_Data3_L				; 16 - 17
		dd .Reg_Com_Data4_H, .Reg_Com_Data4_L				; 18 - 19
		dd .Reg_Com_Data5_H, .Reg_Com_Data5_L				; 1A - 1B
		dd .Reg_Com_Data6_H, .Reg_Com_Data6_L				; 1C - 1D
		dd .Reg_Com_Data7_H, .Reg_Com_Data7_L				; 1E - 1F
		dd .Reg_Com_Stat0_H, .Reg_Com_Stat0_L				; 20 - 21
		dd .Reg_Com_Stat1_H, .Reg_Com_Stat1_L				; 22 - 23
		dd .Reg_Com_Stat2_H, .Reg_Com_Stat2_L				; 24 - 25
		dd .Reg_Com_Stat3_H, .Reg_Com_Stat3_L				; 26 - 27
		dd .Reg_Com_Stat4_H, .Reg_Com_Stat4_L				; 28 - 29
		dd .Reg_Com_Stat5_H, .Reg_Com_Stat5_L				; 2A - 2B
		dd .Reg_Com_Stat6_H, .Reg_Com_Stat6_L				; 2C - 2D
		dd .Reg_Com_Stat7_H, .Reg_Com_Stat7_L				; 2E - 2F
		dd .Reg_Timer_H, .Reg_Timer_L						; 30 - 31
		dd .Reg_Int_Mask_H, .Reg_Int_Mask_L					; 32 - 33
		dd .Reg_CD_Fader_H, .Reg_CD_Fader_L					; 34 - 35
		dd .Reg_CDD_Ctrl_H, .Reg_CDD_Ctrl_L					; 36 - 37
		dd .Reg_CDD_Com0_H, .Reg_CDD_Com0_L					; 38 - 39
		dd .Reg_CDD_Com1_H, .Reg_CDD_Com1_L					; 3A - 3B
		dd .Reg_CDD_Com2_H, .Reg_CDD_Com2_L					; 3C - 3D
		dd .Reg_CDD_Com3_H, .Reg_CDD_Com3_L					; 3E - 3F
		dd .Reg_CDD_Com4_H, .Reg_CDD_Com4_L					; 40 - 41
		dd .Reg_CDD_Com5_H, .Reg_CDD_Com5_L					; 42 - 43
		dd .Reg_CDD_Com6_H, .Reg_CDD_Com6_L					; 44 - 45
		dd .Reg_CDD_Com7_H, .Reg_CDD_Com7_L					; 46 - 47
		dd .Reg_CDD_Com8_H, .Reg_CDD_Com8_L					; 48 - 49
		dd .Reg_CDD_Com9_H, .Reg_CDD_Com9_L					; 4A - 4B
		dd .Reg_Font_Color_H, .Reg_Font_Color_L				; 4C - 4D
		dd .Reg_Font_Bit_H, .Reg_Font_Bit_L					; 4E - 4F
		dd .Reg_Font_Data0_H, .Reg_Font_Data0_L				; 50 - 51
		dd .Reg_Font_Data1_H, .Reg_Font_Data1_L				; 52 - 53
		dd .Reg_Font_Data2_H, .Reg_Font_Data2_L				; 54 - 55
		dd .Reg_Font_Data3_H, .Reg_Font_Data3_L				; 56 - 57
		dd .Reg_Stamp_Size_H, .Reg_Stamp_Size_L				; 58 - 59
		dd .Reg_Stamp_Adr_H, .Reg_Stamp_Adr_L				; 5A - 5B
		dd .Reg_IM_VCell_Size_H, .Reg_IM_VCell_Size_L		; 5C - 5D
		dd .Reg_IM_Adr_H, .Reg_IM_Adr_L						; 5E - 5F
		dd .Reg_IM_Offset_H, .Reg_IM_Offset_L				; 60 - 61
		dd .Reg_IM_HDot_Size_H, .Reg_IM_HDot_Size_L			; 62 - 63
		dd .Reg_IM_VDot_Size_H, .Reg_IM_VDot_Size_L			; 64 - 65
		dd .Reg_Vector_Adr_H, .Reg_Vector_Adr_L				; 66 - 67
		dd .bad, .bad, .bad, .bad, .bad, .bad, .bad, .bad	; 68 - 6F
		dd .bad, .bad, .bad, .bad, .bad, .bad, .bad, .bad	; 70 - 77
		dd .bad, .bad, .bad, .bad, .bad, .bad, .bad, .bad	; 78 - 7F

	ALIGN4

	.Reg_Reset_H
		mov [LED_Status], al
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_Reset_L
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_Memory_Mode_H
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_Memory_Mode_L
;pushad
;push eax
;push ebx
;add dword [esp], 0xFF8000
;call _Write_To_68K_Space
;pop ebx
;pop eax
;popad

		mov bl, al
		test al, 4
		jnz short .Mode_1M

	.Mode_2M
		and bl, 0x18
		and word [Memory_Control_Status + 2], 0xFDFD	; DMNA bit = 0
		test al, 1
		mov [S68K_Mem_PM], bl
		jz short .No_RET

		test byte [Ram_Word_State], 2
		mov byte [Ram_Word_State], 0
		jz short .Already_In_2M_0

		call Swap_1M_To_2M

	.Already_In_2M_0
		call _MS68K_Set_Word_Ram
		pop ecx
		pop ebx
		ret

	ALIGN4

	.No_RET
		mov al, [Ram_Word_State]
		test al, 2										; we are switching to 2MB mode ?
		jz short .Already_in_2M

		and al, 1
		and word [Memory_Control_Status + 0], 0xFDFE	; RET & DMNA bit = 0
		mov [Ram_Word_State], al

		call Swap_1M_To_2M

	.Already_in_2M
		call _MS68K_Set_Word_Ram
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Mode_1M
		and al, 1
		and bl, 0x18
		mov ah, al
		mov bh, [Ram_Word_State]
		add al, 2
		mov [S68K_Mem_PM], bl
		xor ah, bh
		test bh, 2
		mov [Ram_Word_State], al
		jnz short .Already_In_1M

		and word [Memory_Control_Status + 2], 0xFDFD	; DMNA bit = 0
		call Swap_2M_To_1M
		call _MS68K_Set_Word_Ram
		pop ecx
		pop ebx
		ret

	ALIGN4
	
	.Already_In_1M
		test ah, 1
		jz short .No_Bank_Change

		and word [Memory_Control_Status + 2], 0xFDFD	; DMNA bit = 0

	.No_Bank_Change
		call _MS68K_Set_Word_Ram
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_CDC_Mode_H
		mov cl, [CDC.RS0 + 1]
		and al, 0x07
		and cl, 0xC0
		mov dword [CDC.DMA_Adr], 0
		or al, cl
		mov [CDC.RS0 + 1], al
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_CDC_Mode_L
		and al, 0xF
		mov [CDC.RS0], al
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_CDC_RS1_H
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_CDC_RS1_L
		push eax
		call _CDC_Write_Reg
		add esp, 4
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_CDC_Host_Data_H
	.Reg_CDC_Host_Data_L
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_CDC_DMA_Adr_H
		mov [CDC.DMA_Adr + 1], al
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_CDC_DMA_Adr_L
		mov [CDC.DMA_Adr], al
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_Stopwatch_H
		mov dword [CDC.Stop_Watch], 0
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_Stopwatch_L
		mov dword [CDC.Stop_Watch], 0
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_Com_Flag_H
;pushad
;push eax
;push ebx
;add dword [esp], 0xFF8000
;call _Write_To_68K_Space
;pop ebx
;pop eax
;popad

		ror al, 1							; Dragons lair
		mov byte [COMM.Flag], al
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_Com_Flag_L
;pushad
;push eax
;push ebx
;add dword [esp], 0xFF8000
;call _Write_To_68K_Space
;pop ebx
;pop eax
;popad

		mov [COMM.Flag], al
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_Com_Data0_H
	.Reg_Com_Data0_L
	.Reg_Com_Data1_H
	.Reg_Com_Data1_L
	.Reg_Com_Data2_H
	.Reg_Com_Data2_L
	.Reg_Com_Data3_H
	.Reg_Com_Data3_L
	.Reg_Com_Data4_H
	.Reg_Com_Data4_L
	.Reg_Com_Data5_H
	.Reg_Com_Data5_L
	.Reg_Com_Data6_H
	.Reg_Com_Data6_L
	.Reg_Com_Data7_H
	.Reg_Com_Data7_L
		pop ecx
		pop ebx
		ret 

	ALIGN4

	.Reg_Com_Stat0_H
	.Reg_Com_Stat0_L
	.Reg_Com_Stat1_H
	.Reg_Com_Stat1_L
	.Reg_Com_Stat2_H
	.Reg_Com_Stat2_L
	.Reg_Com_Stat3_H
	.Reg_Com_Stat3_L
	.Reg_Com_Stat4_H
	.Reg_Com_Stat4_L
	.Reg_Com_Stat5_H
	.Reg_Com_Stat5_L
	.Reg_Com_Stat6_H
	.Reg_Com_Stat6_L
	.Reg_Com_Stat7_H
	.Reg_Com_Stat7_L
;pushad
;push eax
;push ebx
;add dword [esp], 0xFF8000
;call _Write_To_68K_Space
;pop ebx
;pop eax
;popad

		xor ebx, 1
		mov [COMM.Status + ebx - 0x20], al
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_Timer_H
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_Timer_L
		and eax, 0xFF
		pop ecx
		shl eax, 16
		pop ebx
		mov [Init_Timer_INT3], eax
		mov [Timer_INT3], eax
		ret

	ALIGN4

	.Reg_Int_Mask_H
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_Int_Mask_L
		test al, 0x10
		jz short .CDD_Halted_0
		test byte [CDD.Control], 0x4
		jz short .CDD_Halted_0
		test byte [Int_Mask_S68K], 0x10
		jnz short .CDD_Halted_0

		mov [Int_Mask_S68K], al
		call _CDD_Processing
		pop ecx
		pop ebx
		ret

	ALIGN4

	.CDD_Halted_0
		mov [Int_Mask_S68K], al
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_CD_Fader_H
	.Reg_CD_Fader_L
	.Reg_CDD_Ctrl_H
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_CDD_Ctrl_L
		and al, 0x4
		jz short .CDD_Halted_1
		test byte [CDD.Control], 0x4
		jnz short .CDD_Halted_1
		test byte [Int_Mask_S68K], 0x10
		jz short .CDD_Halted_1

		call _CDD_Processing

	.CDD_Halted_1
		or [CDD.Control], al
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_CDD_Com0_H
	.Reg_CDD_Com0_L
	.Reg_CDD_Com1_H
	.Reg_CDD_Com1_L
	.Reg_CDD_Com2_H
	.Reg_CDD_Com2_L
	.Reg_CDD_Com3_H
	.Reg_CDD_Com3_L
	.Reg_CDD_Com4_H
	.Reg_CDD_Com4_L
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_CDD_Com5_H
	.Reg_CDD_Com5_L
	.Reg_CDD_Com6_H
	.Reg_CDD_Com6_L
	.Reg_CDD_Com7_H
	.Reg_CDD_Com7_L
	.Reg_CDD_Com8_H
	.Reg_CDD_Com8_L
	.Reg_CDD_Com9_H
		xor ebx, 1
		mov [CDD.Trans_Comm + ebx - 0x42], al
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_CDD_Com9_L
		mov [CDD.Trans_Comm + 0x8], al
		pushad
		call _CDD_Import_Command
		popad
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_Font_Color_H
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_Font_Color_L
		mov ah, al
		and al, 0x0F
		shr ah, 4
		mov [Font_COLOR], al
		mov [Font_COLOR + 2], ah
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_Font_Bit_H
		mov [Font_BITS + 1], al
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_Font_Bit_L
		mov [Font_BITS], al
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_Font_Data0_H
	.Reg_Font_Data0_L
	.Reg_Font_Data1_H
	.Reg_Font_Data1_L
	.Reg_Font_Data2_H
	.Reg_Font_Data2_L
	.Reg_Font_Data3_H
	.Reg_Font_Data3_L
	.Reg_Stamp_Size_H
		pop ecx
		pop ebx
		ret

	ALIGN4
		
	.Reg_Stamp_Size_L
		and al, 0x7
		mov [Rot_Comp.Reg_58], al
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_Stamp_Adr_H
	.Reg_Stamp_Adr_L
		mov ah, al
		and ax, 0xFFE0
		mov [Rot_Comp.Reg_5A], ax
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_IM_VCell_Size_H
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_IM_VCell_Size_L
		and al, 0x1F
		mov [Rot_Comp.Reg_5C], al
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_IM_Adr_H
	.Reg_IM_Adr_L
		mov ah, al
		and ax, 0xFFF8
		mov [Rot_Comp.Reg_5E], ax
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_IM_Offset_H
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_IM_Offset_L
		and al, 0x3F
		mov [Rot_Comp.Reg_60], al
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_IM_HDot_Size_H
	.Reg_IM_HDot_Size_L
		mov ah, al
		and ax, 0x01FF
		mov [Rot_Comp.Reg_62], ax
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_IM_VDot_Size_H
	.Reg_IM_VDot_Size_L
		mov ah, al
		and eax, 0x00FF
		mov [Rot_Comp.Reg_64], eax		; Need eax for timing
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_Vector_Adr_H
	.Reg_Vector_Adr_L
		mov ah, al
		and ax, 0xFFFE
		mov [Rot_Comp.Reg_66], ax
		call Calcul_Rot_Comp
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Subcode_Buffer
		cmp ebx, 0xFF81FF
		ja near .bad

		and ebx, 0x7F

		pop ecx
		pop ebx
		ret


;***************** Write Word *****************

	ALIGN64

	;void S68K_WW(unsigned int Adr, unsigned short Data)
	DECL S68K_WW

		push ebx
		push ecx
		mov ebx, [esp + 12]
		mov eax, [esp + 16]

		cmp ebx, 0xFDFFFF
		ja near .IO_Memory

	.Data_Memory
		cmp ebx, 0x07FFFF
		mov ecx, [S68K_Mem_WP]
		ja short .Word_RAM

		shl ecx, 8
		cmp ecx, ebx
		ja short .write_protected

		mov [Ram_Prg + ebx], ax

	.write_protected
		pop ecx
		pop ebx
		ret

	ALIGN4
	
	.Word_RAM
		mov ecx, [Ram_Word_State]
		and ecx, 0x3
		jmp [.Table_Word_Ram + ecx * 4]

	ALIGN4

	.Table_Word_Ram
;		dd .bad, .Word_Ram_2M
		dd .Word_Ram_2M, .Word_Ram_2M
		dd .Word_Ram_1M_1, .Word_Ram_1M_0

	ALIGN4

	.Word_Ram_2M
		cmp ebx, 0x0BFFFF
		ja short .bad3

		mov [Ram_Word_2M + ebx - 0x080000], ax

	.bad3
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Word_Ram_1M_0
		cmp ebx, 0x0C0000
		jb short .Dot_Img_0
		cmp ebx, 0x0DFFFF
		ja short .bad3

		mov [Ram_Word_1M + ebx - 0x0C0000], ax
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Dot_Img_0
		shr ebx, 1
		cmp byte [S68K_Mem_PM], 0x08
		je short .Dot_0_Under
		ja short .Dot_0_Over

	ALIGN4

	.Dot_0_Norm
		and al, 0x0F
		shl ah, 4
		xor ebx, 1
		or al, ah
		mov [Ram_Word_1M + ebx - 0x040000], al
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Dot_0_Under
		and al, 0x0F
		shl ah, 4
		xor ebx, 1
		or al, ah
		test byte [Ram_Word_1M + ebx - 0x040000], 0xFF
		jnz .End_Dot_0

		mov [Ram_Word_1M + ebx - 0x040000], al

	.End_Dot_0
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Dot_0_Over
		and al, 0x0F
		jz short .End_Dot_0

		shl ah, 4
		jz short .End_Dot_0

		xor ebx, 1
		or al, ah
		mov [Ram_Word_1M + ebx - 0x040000], al
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Word_Ram_1M_1
		cmp ebx, 0x0C0000
		jb short .Dot_Img_1
		cmp ebx, 0x0DFFFF
		ja short .bad

		mov [Ram_Word_1M + ebx - 0x0C0000 + 0x20000], ax
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Dot_Img_1
		shr ebx, 1
		cmp byte [S68K_Mem_PM], 0x08
		je short .Dot_1_Under
		ja short .Dot_1_Over

	ALIGN4

	.Dot_1_Norm
		and al, 0x0F
		shl ah, 4
		xor ebx, 1
		or al, ah
		mov [Ram_Word_1M + ebx - 0x040000 + 0x20000], al
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Dot_1_Under
		and al, 0x0F
		shl ah, 4
		xor ebx, 1
		or al, ah
		test byte [Ram_Word_1M + ebx - 0x040000 + 0x20000], 0xFF
		jnz .End_Dot_1

		mov [Ram_Word_1M + ebx - 0x040000 + 0x20000], al

	.End_Dot_1
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Dot_1_Over
		and al, 0x0F
		jz short .End_Dot_1

		shl ah, 4
		jz short .End_Dot_1

		xor ebx, 1
		or al, ah
		mov [Ram_Word_1M + ebx - 0x040000 + 0x20000], al
		pop ecx
		pop ebx
		ret

	ALIGN4

	.bad
		pop ecx
		pop ebx
		ret

	ALIGN4
	
	.IO_Memory
		cmp ebx, 0xFF7FFF
		ja short .S68K_Reg

		cmp ebx, 0xFEFFFF
		ja short .PCM

		and ebx, 0x3FFF
		shr ebx, 1
		mov [Ram_Backup + ebx], ax
		pop ecx
		pop ebx
		ret

	ALIGN4

	.PCM
		cmp ebx, 0xFF1FFF
		ja short .PCM_Ram

		cmp ebx, 0xFF0011
		ja short .bad

		shr ebx, 1
		push eax
		and ebx, 0x1F
		push ebx

		call _Write_PCM_Reg
		add esp, 8

		pop ecx
		pop ebx
		ret

	ALIGN4

	.PCM_Ram
;		cmp ebx, 0xFF3FFF
;		ja short .bad

;		and al, [PCM_Chip_Enable]
		shr ebx, 1
		mov ecx, [PCM_Chip_Bank]
		and ebx, 0xFFF
		mov [_Ram_PCM + ebx + ecx], al

		pop ecx
		pop ebx
		ret

	ALIGN4

	.S68K_Reg
		cmp ebx, 0xFF807F
		ja near .Subcode_Buffer

		and ebx, 0x7E
		jmp [.Table_S68K_Reg + ebx * 2]

	ALIGN4

	.Table_S68K_Reg
		dd .Reg_Reset, .Reg_Memory_Mode						; 00 - 03
		dd .Reg_CDC_Mode, .Reg_CDC_RS1						; 04 - 07
		dd .Reg_CDC_Host_Data, .Reg_CDC_DMA_Adr				; 08 - 0B
		dd .Reg_Stopwatch, .Reg_Com_Flag					; 0C - 0F
		dd .Reg_Com_Data0, .Reg_Com_Data1					; 10 - 13
		dd .Reg_Com_Data2, .Reg_Com_Data3					; 14 - 17
		dd .Reg_Com_Data4, .Reg_Com_Data5					; 18 - 1B
		dd .Reg_Com_Data6, .Reg_Com_Data7					; 1C - 1F
		dd .Reg_Com_Stat0, .Reg_Com_Stat1					; 20 - 23
		dd .Reg_Com_Stat2, .Reg_Com_Stat3					; 24 - 27
		dd .Reg_Com_Stat4, .Reg_Com_Stat5					; 28 - 2B
		dd .Reg_Com_Stat6, .Reg_Com_Stat7					; 2C - 2F
		dd .Reg_Timer, .Reg_Int_Mask						; 30 - 33
		dd .Reg_CD_Fader, .Reg_CDD_Ctrl						; 34 - 37
		dd .Reg_CDD_Com0, .Reg_CDD_Com1						; 38 - 3B
		dd .Reg_CDD_Com2, .Reg_CDD_Com3						; 3C - 3F
		dd .Reg_CDD_Com4, .Reg_CDD_Com5						; 40 - 43
		dd .Reg_CDD_Com6, .Reg_CDD_Com7						; 44 - 47
		dd .Reg_CDD_Com8, .Reg_CDD_Com9						; 48 - 4B
		dd .Reg_Font_Color, .Reg_Font_Bit					; 4C - 4F
		dd .Reg_Font_Data0, .Reg_Font_Data1					; 50 - 53
		dd .Reg_Font_Data2, .Reg_Font_Data3					; 54 - 57
		dd .Reg_Stamp_Size, .Reg_Stamp_Adr					; 58 - 5B
		dd .Reg_IM_VCell_Size, .Reg_IM_Adr					; 5C - 5F
		dd .Reg_IM_Offset, .Reg_IM_HDot_Size				; 60 - 63
		dd .Reg_IM_VDot_Size, .Reg_Vector_Adr				; 64 - 67
		dd .bad, .bad, .bad, .bad							; 68 - 6F
		dd .bad, .bad, .bad, .bad							; 70 - 77
		dd .bad, .bad, .bad, .bad							; 78 - 7F

	ALIGN4

	.Reg_Reset
		and ah, 3
		mov [LED_Status], ah
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_Memory_Mode
;pushad
;push eax
;push ebx
;add dword [esp], 0xFF8000
;call _Write_To_68K_Space
;pop ebx
;pop eax
;popad

		mov bl, al
		test al, 4
		jnz short .Mode_1M

	.Mode_2M
		and bl, 0x18
		and word [Memory_Control_Status + 2], 0xFDFD	; DMNA bit = 0
		test al, 1
		mov [S68K_Mem_PM], bl
		jz short .No_RET

		test byte [Ram_Word_State], 2
		mov byte [Ram_Word_State], 0
		jz short .Already_In_2M_0

		call Swap_1M_To_2M

	.Already_In_2M_0
		call _MS68K_Set_Word_Ram
		pop ecx
		pop ebx
		ret

	ALIGN4

	.No_RET
		mov al, [Ram_Word_State]
		test al, 2										; we are switching to 2MB mode ?
		jz short .Already_in_2M

		and al, 1
		and word [Memory_Control_Status + 0], 0xFDFE	; RET & DMNA bit = 0
		mov [Ram_Word_State], al

		call Swap_1M_To_2M

	.Already_in_2M
		call _MS68K_Set_Word_Ram
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Mode_1M
		and al, 1
		and bl, 0x18
		mov ah, al
		mov bh, [Ram_Word_State]
		add al, 2
		mov [S68K_Mem_PM], bl
		xor ah, bh
		test bh, 2
		mov [Ram_Word_State], al
		jnz short .Already_In_1M

		and word [Memory_Control_Status + 2], 0xFDFD	; DMNA bit = 0
		call Swap_2M_To_1M
		call _MS68K_Set_Word_Ram
		pop ecx
		pop ebx
		ret

	ALIGN4
	
	.Already_In_1M
		test ah, 1
		jz short .No_Bank_Change

		and word [Memory_Control_Status + 2], 0xFDFD	; DMNA bit = 0

	.No_Bank_Change
		call _MS68K_Set_Word_Ram
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_CDC_Mode
		mov cx, [CDC.RS0]
		and ax, 0x070F
		and cx, 0xC000
		mov dword [CDC.DMA_Adr], 0
		or ax, cx
		mov [CDC.RS0], ax
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_CDC_RS1
		push eax
		call _CDC_Write_Reg
		add esp, 4
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_CDC_Host_Data
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_CDC_DMA_Adr
		mov [CDC.DMA_Adr], ax
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_Stopwatch
		mov dword [CDC.Stop_Watch], 0
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_Com_Flag
;pushad
;push eax
;push ebx
;add dword [esp], 0xFF8000
;call _Write_To_68K_Space
;pop ebx
;pop eax
;popad

		mov [COMM.Flag], al
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_Com_Data0
	.Reg_Com_Data1
	.Reg_Com_Data2
	.Reg_Com_Data3
	.Reg_Com_Data4
	.Reg_Com_Data5
	.Reg_Com_Data6
	.Reg_Com_Data7
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_Com_Stat0
	.Reg_Com_Stat1
	.Reg_Com_Stat2
	.Reg_Com_Stat3
	.Reg_Com_Stat4
	.Reg_Com_Stat5
	.Reg_Com_Stat6
	.Reg_Com_Stat7
;pushad
;push eax
;push ebx
;add dword [esp], 0xFF8000
;call _Write_To_68K_Space
;pop ebx
;pop eax
;popad

		mov [COMM.Status + ebx - 0x20], ax
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_Timer
		and eax, 0xFF
		pop ecx
		shl eax, 16
		pop ebx
		mov [Init_Timer_INT3], eax
		mov [Timer_INT3], eax
		ret

	ALIGN4

	.Reg_Int_Mask
		test al, 0x10
		jz short .CDD_Halted_0
		test byte [CDD.Control], 0x4
		jz short .CDD_Halted_0
		test byte [Int_Mask_S68K], 0x10
		jnz short .CDD_Halted_0

		mov [Int_Mask_S68K], al
		call _CDD_Processing
		pop ecx
		pop ebx
		ret

	ALIGN4

	.CDD_Halted_0
		mov [Int_Mask_S68K], al
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_CD_Fader
		and ax, 0x7FFE
		mov [CDD.Fader], ax
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_CDD_Ctrl
		and al, 0x4
		jz short .CDD_Halted_1
		test byte [CDD.Control], 0x4
		jnz short .CDD_Halted_1
		test byte [Int_Mask_S68K], 0x10
		jz short .CDD_Halted_1

		call _CDD_Processing

	.CDD_Halted_1
		or [CDD.Control], al
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_CDD_Com0
	.Reg_CDD_Com1
	.Reg_CDD_Com2
	.Reg_CDD_Com3
	.Reg_CDD_Com4
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_CDD_Com5
	.Reg_CDD_Com6
	.Reg_CDD_Com7
	.Reg_CDD_Com8
		mov [CDD.Trans_Comm + ebx - 0x42], ax
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_CDD_Com9
		mov [CDD.Trans_Comm + 0x8], ax
		pushad
		call _CDD_Import_Command
		popad
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_Font_Color
		mov ah, al
		and al, 0x0F
		shr ah, 4
		mov [Font_COLOR], al
		mov [Font_COLOR + 2], ah
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_Font_Bit
		mov [Font_BITS], ax
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_Font_Data0
	.Reg_Font_Data1
	.Reg_Font_Data2
	.Reg_Font_Data3
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_Stamp_Size
		and ax, 0x7
		mov [Rot_Comp.Reg_58], ax
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_Stamp_Adr
		and ax, 0xFFE0
		mov [Rot_Comp.Reg_5A], ax
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_IM_VCell_Size
		and ax, 0x1F
		mov [Rot_Comp.Reg_5C], ax
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_IM_Adr
		and ax, 0xFFF8
		mov [Rot_Comp.Reg_5E], ax
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_IM_Offset
		and ax, 0x003F
		mov [Rot_Comp.Reg_60], ax
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_IM_HDot_Size
		and ax, 0x01FF
		mov [Rot_Comp.Reg_62], ax
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Reg_IM_VDot_Size
		and eax, 0x00FF
		mov [Rot_Comp.Reg_64], eax		; Need eax for timing
		pop ecx
		pop ebx
		ret

	ALIGN4
	
	.Reg_Vector_Adr
		and ax, 0xFFFE
		mov [Rot_Comp.Reg_66], ax
		call Calcul_Rot_Comp
		pop ecx
		pop ebx
		ret

	ALIGN4

	.Subcode_Buffer
		cmp ebx, 0xFF81FF
		ja near .bad

		and ebx, 0x7F

		pop ecx
		pop ebx
		ret


	; ******************************************
	; Specials SegaCD routines

	ALIGN32

	DECL Update_SegaCD_Timer
		push ebx
		push ecx

		mov eax, [CDC.Stop_Watch]
		mov ebx, [Timer_INT3]
		add eax, [Timer_Step]
		mov cx, [_CD_Timer_Counter]
		and eax, 0xFFFFFFF
		add cx, 10
		mov [CDC.Stop_Watch], eax
		mov eax, [Init_Timer_INT3]
		test eax, eax
		jz short .No_INT3

			sub ebx, [Timer_Step]
			jae short .No_INT3

			test byte [Int_Mask_S68K], 0x8
			jz short .No_INT3

				push dword -1
				push dword 3
				add ebx, eax
				call _sub68k_interrupt
				add esp, 8
	
	.No_INT3
		and ebx, 0xFFFFFF
		cmp cx, [CD_Access_Timer]		; 209.6 * 10 = 75 th of a second
		mov [Timer_INT3], ebx
		jb short .No_CD_Check

			sub cx, [CD_Access_Timer]
			push ecx
			call _Check_CD_Command
			pop ecx

	.No_CD_Check
		mov [_CD_Timer_Counter], cx
		test dword [Rot_Comp.Reg_58], 0x8000
		jz short .GFX_Terminated

		call Update_Rot

	.GFX_Terminated
		mov eax, [Memory_Control_Status]
		pop ecx
		or eax, 0x00000201					; RET & DMNA bit mode 2M = 1
		pop ebx
		mov [Memory_Control_Status], eax
		ret


	ALIGN32

	DECL Swap_2M_To_1M
		push ecx
		push edi
		push esi

		mov esi, Ram_Word_2M
		mov edi, Ram_Word_1M
		mov ecx, 256 * 1024 / 4
		jmp short .Loop

	ALIGN32
	
	.Loop
		mov eax, [esi]
		add esi, 4
		mov [edi], ax
		add edi, 2
		shr eax, 16
		dec ecx
		mov [edi - 2 + 0x20000], ax
		jnz short .Loop

		pop esi
		pop edi
		pop ecx
		ret


	ALIGN32

	DECL Swap_1M_To_2M
		push ecx
		push edi
		push esi

		mov esi, Ram_Word_1M
		mov edi, Ram_Word_2M
		mov ecx, 256 * 1024 / 4
		jmp short .Loop

	ALIGN32
	
	.Loop
		mov ax, [esi + 0x20000]
		add esi, 2
		shl eax, 16
		add edi, 4
		mov ax, [esi - 2]
		dec ecx
		mov [edi - 4], eax
		jnz short .Loop

		pop esi
		pop edi
		pop ecx
		ret
