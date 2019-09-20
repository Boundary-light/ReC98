;
; +-------------------------------------------------------------------------+
; |   This file has been generated by The Interactive Disassembler (IDA)    |
; |        Copyright (c) 2009 by Hex-Rays, <support@hex-rays.com>           |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	4E0826B310EA5A6F9DE4C37E09626566

; File Name   :	th03/ZUN.COM:RES_YUME (-5)
; Format      :	MS-DOS COM-file
; Base Address:	0h Range: 100h-16F2h Loaded length: 15F2h
; OS type	  :  MS	DOS
; Application type:  Executable	16bit

		.286
		.model tiny
		__TINY__ equ 1

include ReC98.inc
include th03/th03.inc

; ===========================================================================

; Segment type:	Pure code
_TEXT		segment	word public 'CODE' use16
		assume cs:_TEXT
		assume es:nothing, ss:nothing, ds:_TEXT

include libs/BorlandC/c0.asm

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_367		proc near

var_6		= byte ptr -6
arg_0		= byte ptr  4

		enter	6, 0
		push	si
		push	di
		mov	di, offset aYume_cfg ; "yume.cfg"
		lea	ax, [bp+var_6]
		push	ss
		push	ax
		push	ds
		push	offset unk_131F
		mov	cx, 5
		call	N_SCOPY@
		push	3D02h
		push	di
		call	dos_axdx
		mov	si, ax
		or	si, si
		jle	short loc_398
		push	ax
		push	0
		push	5
		push	0
		call	dos_seek
		jmp	short loc_3AB
; ---------------------------------------------------------------------------

loc_398:
		push	di
		push	20h
		call	dos_create
		mov	si, ax
		push	ax
		push	ss
		lea	ax, [bp+var_6]
		push	ax
		push	5
		call	dos_write

loc_3AB:
		push	si
		push	ss
		lea	ax, [bp+arg_0]
		push	ax
		push	2
		call	dos_write
		push	si
		push	ds
		push	offset byte_131E
		push	1
		call	dos_write
		push	si
		call	dos_close
		pop	di
		pop	si
		leave
		retn
sub_367		endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __cdecl main(int argc, const char	**argv,	const char **envp)
_main		proc near

var_8		= dword	ptr -8
var_4		= word ptr -4
var_2		= word ptr -2
_argc		= word ptr  4
_argv		= word ptr  6
_envp		= word ptr  8

		enter	8, 0
		push	si
		push	di
		mov	si, [bp+_argv]
		mov	[bp+var_2], offset aYumeconfig ; "YUMEConfig"
		push	[bp+var_2]
		push	0Ah
		push	10h
		call	resdata_exist
		mov	di, ax
		push	offset aUmx	; "\n\n東方夢時空用　 常駐プログラム　RES_YU"...
		call	dos_puts2
		call	graph_clear
		cmp	[bp+_argc], 2
		jnz	short loc_44E
		mov	bx, [si+2]
		cmp	byte ptr [bx], 2Dh
		jz	short loc_3FE
		cmp	byte ptr [bx], 2Fh
		jnz	short loc_423

loc_3FE:
		mov	bx, [si+2]
		cmp	byte ptr [bx+1], 52h
		jz	short loc_40D
		cmp	byte ptr [bx+1], 72h
		jnz	short loc_423

loc_40D:
		or	di, di
		jnz	short loc_416
		push	offset aVavVBavVVvvVV ;	"わたし、まだいませんよぉ\n\n"
		jmp	short loc_46D
; ---------------------------------------------------------------------------

loc_416:
		push	di
		call	dos_free
		push	offset aVVcvVcbavVIqvj ; "さよなら、また会えたらいいな\n\n"
		call	dos_puts2
		jmp	loc_4A3
; ---------------------------------------------------------------------------

loc_423:
		mov	bx, [si+2]
		cmp	byte ptr [bx], 2Dh
		jz	short loc_430
		cmp	byte ptr [bx], 2Fh
		jnz	short loc_446

loc_430:
		mov	bx, [si+2]
		cmp	byte ptr [bx+1], 44h
		jz	short loc_43F
		cmp	byte ptr [bx+1], 64h
		jnz	short loc_446

loc_43F:
		mov	byte_131E, 1
		jmp	short loc_44E
; ---------------------------------------------------------------------------

loc_446:
		push	offset aVV	; "そんなオプション付けられても、困るんで・...
		call	dos_puts2
		jmp	short loc_470
; ---------------------------------------------------------------------------

loc_44E:
		or	di, di
		jz	short loc_45A
		push	offset aVavVBavVVVvvVV ; "わたし、すでにいますよぉ\n\n"
		call	dos_puts2
		jmp	short loc_470
; ---------------------------------------------------------------------------

loc_45A:
		push	[bp+var_2]
		push	0Ah
		push	10h
		call	resdata_create
		mov	di, ax
		or	di, di
		jnz	short loc_475
		push	offset aNVVVV	; "作れません、わたしの居場所がないの！\n\n"

loc_46D:
		call	dos_puts2

loc_470:
		mov	ax, 1
		jmp	short loc_4A5
; ---------------------------------------------------------------------------

loc_475:
		mov	word ptr [bp+var_8+2], di
		mov	word ptr [bp+var_8], 0
		push	offset aVVVVBavcvivVnv ; "それでは、よろしくお願いします\n\n"
		call	dos_puts2
		mov	[bp+var_4], 0Bh
		jmp	short loc_497
; ---------------------------------------------------------------------------

loc_48A:
		les	bx, [bp+var_8]
		add	bx, [bp+var_4]
		mov	byte ptr es:[bx], 0
		inc	[bp+var_4]

loc_497:
		cmp	[bp+var_4], 100h
		jl	short loc_48A
		push	di
		call	sub_367
		pop	cx

loc_4A3:
		xor	ax, ax

loc_4A5:
		pop	di
		pop	si
		leave
		retn
_main		endp

; ---------------------------------------------------------------------------
		db 0
include libs/master.lib/graph_clear.asm
include libs/master.lib/resdata.asm
include libs/master.lib/dos_free.asm
include libs/master.lib/dos_axdx.asm
include libs/master.lib/dos_create.asm
include libs/master.lib/dos_puts2.asm
include libs/master.lib/dos_close.asm
include libs/master.lib/dos_write.asm
include libs/master.lib/dos_seek.asm
include libs/BorlandC/_abort.asm
include libs/BorlandC/atexit.asm
include libs/BorlandC/errormsg.asm
include libs/BorlandC/exit.asm
include libs/BorlandC/ioerror.asm
include libs/BorlandC/_isatty.asm
include libs/BorlandC/lseek.asm
include libs/BorlandC/n_scopy.asm
include libs/BorlandC/setupio.asm
include libs/BorlandC/brk.asm
include libs/BorlandC/nearheap.asm
include libs/BorlandC/pathops.asm
include libs/BorlandC/fflush.asm
include libs/BorlandC/flushall.asm
include libs/BorlandC/fseek.asm
include libs/BorlandC/setvbuf.asm
include libs/BorlandC/_strlen.asm
include libs/BorlandC/write.asm
include libs/BorlandC/writea.asm
include libs/BorlandC/xfflush.asm
include libs/BorlandC/setargv.asm
		db 10 dup(0)
; ---------------------------------------------------------------------------

include libs/BorlandC/c0[data].asm

byte_131E	db 0
unk_131F	db    1
		db    0
		db    1
		db    0
		db    0
aYume_cfg	db 'yume.cfg',0
aYumeconfig	db 'YUMEConfig',0
aUmx		db 0Ah
		db 0Ah
		db '東方夢時空用　 常駐プログラム　RES_YUME.com Version1.00       (c)zun 1997',0Ah,0
aVavVBavVVvvVV	db 'わたし、まだいませんよぉ',0Ah
		db 0Ah,0
aVVcvVcbavVIqvj	db 'さよなら、また会えたらいいな',0Ah
		db 0Ah,0
aVV		db 'そんなオプション付けられても、困るんですけど',0Ah
		db 0Ah,0
aVavVBavVVVvvVV	db 'わたし、すでにいますよぉ',0Ah
		db 0Ah,0
aNVVVV		db '作れません、わたしの居場所がないの！',0Ah
		db 0Ah,0
aVVVVBavcvivVnv	db 'それでは、よろしくお願いします',0Ah
		db 0Ah
		db 0
		db 0
include libs/master.lib/version[data].asm
include libs/master.lib/grp[data].asm
include libs/master.lib/resdata[data].asm
include libs/BorlandC/_abort[data].asm
include libs/BorlandC/atexit[data].asm
include libs/BorlandC/exit[data].asm
include libs/BorlandC/files[data].asm
__heaplen	dw 0
include libs/BorlandC/ioerror[data].asm
include libs/BorlandC/stklen[data].asm
include libs/BorlandC/nearheap[data].asm
include libs/BorlandC/pathops[data].asm
include libs/BorlandC/setvbuf[data].asm
include libs/BorlandC/sysnerr[data].asm
include libs/BorlandC/setargv[data].asm

InitStart	label byte
include libs/BorlandC/setupio[initdata].asm
include libs/BorlandC/pathops[initdata].asm
include libs/BorlandC/setargv[initdata].asm
InitEnd	label byte

ExitStart	label byte
ExitEnd	label byte

bdata@	label byte
include libs/BorlandC/atexit[bss].asm
edata@	label byte
_TEXT		ends


		end startx
