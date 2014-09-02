;
; +-------------------------------------------------------------------------+
; |   This file has been generated by The Interactive Disassembler (IDA)    |
; |        Copyright (c) 2009 by Hex-Rays, <support@hex-rays.com>           |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	DE5454973591EBD937B11452A8B4882D

; File Name   :	th01/ZUNSOFT.COM
; Format      :	MS-DOS COM-file
; Base Address:	0h Range: 100h-2870h Loaded length: 2770h
; OS type	  :  MS	DOS
; Application type:  Executable	16bit

		.386
		.model tiny
		DGROUP group seg000

include ReC98.inc

; ===========================================================================

; Segment type:	Pure code
seg000		segment	word public 'CODE' use16
		assume cs:seg000
		org 100h
		assume es:nothing, ss:nothing, ds:seg000, fs:nothing, gs:nothing

include libs/BorlandC/c0.asm

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_367		proc near
		push	bp
		mov	bp, sp
		mov	dx, 0A6h
		mov	al, 1
		out	dx, al		; Interrupt Controller #2, 8259A
		call	graph_clear
		mov	dx, 0A6h
		mov	al, 0
		out	dx, al		; Interrupt Controller #2, 8259A
		call	graph_clear
		mov	dx, 0A4h
		mov	al, 0
		out	dx, al		; Interrupt Controller #2, 8259A
		pop	bp
		retn
sub_367		endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_384		proc near
		push	bp
		mov	bp, sp
		call	mem_assign_all
		call	graph_start
		call	key_beep_off
		call	text_systemline_hide
		call	text_cursor_hide
		call	egc_start
		call	sub_367
		call	text_clear
		mov	byte ptr ds:2870h, 0
		mov	byte ptr ds:2871h, 1
		push	60h
		push	64h
		push	21Fh
		push	12Bh
		call	grc_setclip
		call	graph_hide
		push	21CEh
		call	super_entry_bfnt
		call	palette_show
		mov	PaletteTone, 0
		call	palette_show
		call	graph_show
		pop	bp
		retn
sub_384		endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_3D0		proc near
		push	bp
		mov	bp, sp
		call	super_free
		call	sub_367
		call	sub_136A
		call	text_clear
		call	egc_start
		pop	bp
		retn
sub_3D0		endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_3E4		proc near

arg_0		= word ptr  4
arg_2		= byte ptr  6
arg_4		= word ptr  8
arg_6		= word ptr  0Ah

		push	bp
		mov	bp, sp
		push	si
		push	di
		mov	si, [bp+arg_6]
		mov	di, [bp+arg_4]
		mov	ax, [bp+arg_0]
		cwd
		mov	bl, [bp+arg_2]
		mov	bh, 0
		and	bx, 0FFh
		add	bx, bx
		push	ax
		mov	ax, [bx+2368h]
		push	dx
		cwd
		pop	cx
		pop	bx
		call	N_LXMUL@
		mov	cl, 8
		call	near ptr N_LXRSH@
		mov	[si], ax
		mov	ax, [bp+arg_0]
		cwd
		mov	bl, [bp+arg_2]
		mov	bh, 0
		and	bx, 0FFh
		add	bx, bx
		push	ax
		mov	ax, [bx+22E8h]
		push	dx
		cwd
		pop	cx
		pop	bx
		call	N_LXMUL@
		mov	cl, 8
		call	near ptr N_LXRSH@
		mov	[di], ax
		pop	di
		pop	si
		pop	bp
		retn	8
sub_3E4		endp ; sp-analysis failed


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_439		proc near
		push	bp
		mov	bp, sp
		push	si
		mov	word ptr ds:2878h, 80h
		mov	word ptr ds:2952h, 0FFF8h
		mov	word ptr ds:287Ah, 140h
		mov	word ptr ds:295Ah, 8
		mov	word ptr ds:287Ch, 100h

loc_45B:
		mov	word ptr ds:2954h, 0FFF8h
		mov	word ptr ds:287Eh, 0F0h
		mov	word ptr ds:295Ch, 8
		mov	word ptr ds:2880h, 180h
		mov	word ptr ds:2956h, 0FFF8h
		mov	word ptr ds:2882h, 0A0h
		mov	word ptr ds:295Eh, 8
		mov	word ptr ds:2884h, 200h
		mov	word ptr ds:2958h, 0FFF8h
		mov	word ptr ds:2886h, 50h
		mov	word ptr ds:2960h, 8
		mov	word ptr ds:2950h, 0
		mov	byte ptr ds:2872h, 0
		mov	byte ptr ds:2873h, 0
		mov	byte ptr ds:2874h, 17h
		mov	byte ptr ds:2875h, 0
		mov	byte ptr ds:2876h, 0
		xor	si, si
		jmp	short loc_4F5
; ---------------------------------------------------------------------------

loc_4C0:
		call	IRand
		mov	bx, 280h
		cwd
		idiv	bx
		mov	bx, si
		shl	bx, 2
		mov	[bx+2888h], dx
		call	IRand
		mov	bx, 190h
		cwd
		idiv	bx
		mov	bx, si
		shl	bx, 2
		mov	[bx+288Ah], dx
		call	IRand
		mov	bx, 20h
		cwd
		idiv	bx
		add	dl, 6
		mov	[si+2963h], dl
		inc	si

loc_4F5:
		cmp	si, 32h
		jl	short loc_4C0
		mov	byte ptr ds:2962h, 40h
		pop	si

loc_500:
		pop	bp
		retn
sub_439		endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_502		proc near
		push	bp
		mov	bp, sp
		push	si
		mov	si, 3
		jmp	loc_5A6
; ---------------------------------------------------------------------------

loc_50C:
		push	0C0h
		mov	al, [si+21D9h]
		cbw
		push	ax
		call	grcg_setcolor
		mov	bx, si
		shl	bx, 2
		push	word ptr [bx+2878h]
		mov	bx, si
		shl	bx, 2
		push	word ptr [bx+287Ah]
		push	60h
		call	grcg_circlefill
		mov	bx, si
		add	bx, bx
		mov	ax, [bx+2952h]
		mov	bx, si
		shl	bx, 2
		add	[bx+2878h], ax
		mov	bx, si
		add	bx, bx
		mov	ax, [bx+295Ah]
		mov	bx, si
		shl	bx, 2
		add	[bx+287Ah], ax
		mov	bx, si
		shl	bx, 2
		cmp	word ptr [bx+2878h], 20h
		jle	short loc_56A
		mov	bx, si
		shl	bx, 2
		cmp	word ptr [bx+2878h], 25Fh
		jle	short loc_57B

loc_56A:
		mov	bx, si
		add	bx, bx
		mov	dx, 0FFFFh
		mov	ax, [bx+2952h]
		imul	dx
		mov	[bx+2952h], ax

loc_57B:
		mov	bx, si
		shl	bx, 2
		cmp	word ptr [bx+287Ah], 20h
		jle	short loc_594
		mov	bx, si
		shl	bx, 2
		cmp	word ptr [bx+287Ah], 16Fh
		jle	short loc_5A5

loc_594:
		mov	bx, si
		add	bx, bx
		mov	dx, 0FFFFh
		mov	ax, [bx+295Ah]
		imul	dx
		mov	[bx+295Ah], ax

loc_5A5:
		dec	si

loc_5A6:
		or	si, si
		jl	short loc_5AD
		jmp	loc_50C
; ---------------------------------------------------------------------------

loc_5AD:
		mov	dx, 7Ch
		mov	al, 0
		out	dx, al
		pop	si
		pop	bp
		retn
sub_502		endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_5B6		proc near

var_4		= word ptr -4
var_2		= word ptr -2

		enter	4, 0
		push	si
		push	0C0h
		push	5
		call	grcg_setcolor
		xor	si, si
		jmp	loc_66E
; ---------------------------------------------------------------------------

loc_5C8:
		mov	bx, si
		shl	bx, 2
		push	word ptr [bx+2888h]
		mov	bx, si
		shl	bx, 2
		push	word ptr [bx+288Ah]
		call	grcg_pset
		lea	ax, [bp+var_2]
		push	ax
		lea	ax, [bp+var_4]
		push	ax
		push	word ptr ds:2962h
		mov	al, [si+2963h]
		mov	ah, 0
		push	ax
		call	sub_3E4
		mov	bx, si
		shl	bx, 2
		mov	ax, [bp+var_2]
		add	[bx+2888h], ax
		mov	bx, si
		shl	bx, 2
		mov	ax, [bp+var_4]
		add	[bx+288Ah], ax
		mov	bx, si
		shl	bx, 2
		cmp	word ptr [bx+2888h], 0
		jge	short loc_624
		mov	bx, si
		shl	bx, 2
		add	word ptr [bx+2888h], 280h
		jmp	short loc_63C
; ---------------------------------------------------------------------------

loc_624:
		mov	bx, si
		shl	bx, 2
		cmp	word ptr [bx+2888h], 280h
		jl	short loc_63C
		mov	bx, si
		shl	bx, 2
		sub	word ptr [bx+2888h], 280h

loc_63C:
		mov	bx, si
		shl	bx, 2
		cmp	word ptr [bx+288Ah], 0
		jge	short loc_655
		mov	bx, si
		shl	bx, 2
		add	word ptr [bx+288Ah], 190h
		jmp	short loc_66D
; ---------------------------------------------------------------------------

loc_655:
		mov	bx, si
		shl	bx, 2
		cmp	word ptr [bx+288Ah], 190h
		jl	short loc_66D
		mov	bx, si
		shl	bx, 2
		sub	word ptr [bx+288Ah], 190h

loc_66D:
		inc	si

loc_66E:
		cmp	si, 32h
		jge	short loc_676
		jmp	loc_5C8
; ---------------------------------------------------------------------------

loc_676:
		inc	byte ptr ds:2962h
		mov	dx, 7Ch
		mov	al, 0
		out	dx, al
		pop	si
		leave
		retn
sub_5B6		endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_683		proc near
		push	bp
		mov	bp, sp

loc_686:
		out	5Fh, al
		in	al, 0A0h	; PIC 2	 same as 0020 for PIC 1
		test	al, 20h
		jnz	short loc_686

loc_68E:
		out	5Fh, al
		in	al, 0A0h	; PIC 2	 same as 0020 for PIC 1
		test	al, 20h
		jz	short loc_68E
		pop	bp
		retn
sub_683		endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_698		proc near
		push	bp
		mov	bp, sp
		cmp	word ptr ds:2950h, 32h
		jge	short loc_6A5
		jmp	loc_7CB
; ---------------------------------------------------------------------------

loc_6A5:
		cmp	word ptr ds:2950h, 5Ah
		jge	short loc_6CD
		cmp	word ptr ds:2950h, 37h
		jnz	short loc_6B6
		jmp	loc_7A6
; ---------------------------------------------------------------------------

loc_6B6:
		cmp	word ptr ds:2950h, 3Ch
		jnz	short loc_6C0
		jmp	loc_7A6
; ---------------------------------------------------------------------------

loc_6C0:
		cmp	word ptr ds:2950h, 41h
		jz	short loc_6CA
		jmp	loc_7AE
; ---------------------------------------------------------------------------

loc_6CA:
		jmp	loc_7A6
; ---------------------------------------------------------------------------

loc_6CD:
		cmp	word ptr ds:2950h, 6Eh
		jge	short loc_720
		push	100h
		push	0C0h
		mov	al, ds:2873h
		cbw
		push	ax
		mov	al, ds:2874h
		cbw
		push	ax
		push	word ptr ds:2876h
		mov	al, ds:2875h
		cbw
		push	ax
		call	sub_1008
		push	140h
		push	0C0h
		mov	al, ds:2873h
		cbw
		inc	ax
		push	ax
		mov	al, ds:2874h
		cbw
		push	ax
		push	word ptr ds:2876h
		mov	al, ds:2875h
		cbw
		push	ax
		call	sub_1008
		dec	byte ptr ds:2874h

loc_711:
		mov	al, ds:2875h
		add	al, 4
		mov	ds:2875h, al
		mov	al, ds:2876h
		add	al, 4
		jmp	short loc_781
; ---------------------------------------------------------------------------

loc_720:
		cmp	word ptr ds:2950h, 82h
		jge	short loc_786
		cmp	word ptr ds:2950h, 6Eh
		jnz	short loc_737
		mov	al, ds:2873h
		add	al, 2
		mov	ds:2873h, al

loc_737:
		push	100h
		push	0C0h
		mov	al, ds:2873h
		cbw
		push	ax
		mov	al, ds:2874h
		cbw
		push	ax
		push	word ptr ds:2876h
		mov	al, ds:2875h
		cbw
		push	ax
		call	sub_1008
		push	140h
		push	0C0h
		mov	al, ds:2873h
		cbw
		inc	ax
		push	ax
		mov	al, ds:2874h
		cbw
		push	ax
		push	word ptr ds:2876h
		mov	al, ds:2875h
		cbw
		push	ax
		call	sub_1008
		inc	byte ptr ds:2874h
		mov	al, ds:2875h
		add	al, 4
		mov	ds:2875h, al
		mov	al, ds:2876h
		add	al, 0FCh

loc_781:
		mov	ds:2876h, al
		pop	bp
		retn
; ---------------------------------------------------------------------------

loc_786:
		cmp	word ptr ds:2950h, 0AAh
		jge	short loc_7CB
		cmp	word ptr ds:2950h, 9Bh
		jz	short loc_7A6
		cmp	word ptr ds:2950h, 0A0h
		jz	short loc_7A6
		cmp	word ptr ds:2950h, 0A5h
		jnz	short loc_7AE

loc_7A6:
		mov	al, ds:2873h
		add	al, 2
		mov	ds:2873h, al

loc_7AE:
		push	100h
		push	0C0h
		mov	al, ds:2873h
		cbw
		push	ax
		call	super_put_8
		push	140h
		push	0C0h
		mov	al, ds:2873h
		cbw
		inc	ax
		push	ax
		call	super_put_8

loc_7CB:
		pop	bp
		retn
sub_698		endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __cdecl main(int argc, const char	**argv,	const char **envp)
_main		proc near

_argc		= word ptr  4
_argv		= word ptr  6
_envp		= word ptr  8

		push	bp
		mov	bp, sp
		push	si
		push	di
		xor	ax, ax
		mov	es, ax
		assume es:seg000
		test	byte ptr es:loc_45B+1, 40h
		jz	short loc_7F0
		mov	al, 7
		out	6Ah, al		; PC-98	GDC (6a):
					;
		mov	al, 20h
		out	6Ah, al		; PC-98	GDC (6a):
					;
		mov	al, 6
		out	6Ah, al		; PC-98	GDC (6a):
					;
		and	byte ptr es:[54Dh], 7Fh

loc_7F0:
		call	sub_384
		call	sub_439

loc_7F6:
		cmp	word ptr ds:2950h, 0B4h
		jle	short loc_80C
		cmp	byte ptr ds:2872h, 0
		jle	short loc_873
		mov	al, ds:2872h
		add	al, 0FEh
		jmp	short loc_818
; ---------------------------------------------------------------------------

loc_80C:
		cmp	byte ptr ds:2872h, 64h
		jge	short loc_822
		mov	al, ds:2872h
		add	al, 2

loc_818:
		mov	ds:2872h, al
		cbw
		mov	PaletteTone, ax
		call	palette_show

loc_822:
		push	0C0h
		push	0
		call	grcg_setcolor
		push	0Ch
		push	64h
		push	43h
		push	12Bh
		call	grcg_byteboxfill_x
		call	sub_5B6
		call	sub_502
		call	sub_698
		call	sub_683
		call	sub_683
		mov	al, ds:2870h
		mov	ds:2871h, al
		out	0A4h, al	; Interrupt Controller #2, 8259A
		xor	byte ptr ds:2870h, 1
		mov	al, ds:2870h
		out	0A6h, al	; Interrupt Controller #2, 8259A
		xor	di, di
		xor	si, si
		jmp	short loc_864
; ---------------------------------------------------------------------------

loc_85D:
		push	si
		call	key_sense
		or	di, ax
		inc	si

loc_864:
		cmp	si, 8
		jl	short loc_85D
		or	di, di
		jnz	short loc_873
		inc	word ptr ds:2950h
		jmp	short loc_7F6
; ---------------------------------------------------------------------------

loc_873:
		call	sub_3D0
		pop	di
		pop	si
		pop	bp
		retn
_main		endp

include libs/BorlandC/text_clear.asm
include libs/BorlandC/txesc.asm
		db    0
include libs/master.lib/graph_400line.asm
include libs/master.lib/graph_clear.asm
include libs/master.lib/graph_hide.asm
include libs/master.lib/graph_show.asm
include libs/master.lib/graph_start.asm
include libs/master.lib/palette_show.asm
include libs/master.lib/palette_init.asm
include libs/master.lib/keybeep.asm
include libs/master.lib/key_sense.asm
include libs/master.lib/bfnt_header_read.asm
include libs/master.lib/bfnt_entry_pat.asm
include libs/master.lib/bfnt_header_analysis.asm
include libs/master.lib/bfnt_palette_set.asm
include libs/master.lib/dos_close.asm
include libs/master.lib/dos_ropen.asm
include libs/master.lib/super_entry_bfnt.asm
include libs/master.lib/super_cancel_pat.asm
include libs/master.lib/super_entry_pat.asm
include libs/master.lib/super_put_8.asm
include libs/master.lib/super_free.asm
include libs/master.lib/super_entry_at.asm

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_1008	proc near

var_2		= byte ptr -2
arg_0		= word ptr  4
arg_2		= byte ptr  6
arg_4		= word ptr  8
arg_6		= word ptr  0Ah
arg_8		= word ptr  0Ch
arg_A		= word ptr  0Eh

		enter	2, 0
		push	ds
		push	si
		push	di
		push	bp
		mov	bx, [bp+arg_6]
		add	bx, bx
		mov	cx, [bx+2DC6h]
		inc	ch
		mov	ds:3346h, ch
		mov	byte ptr cs:sub_10E0+5,	cl
		push	word ptr [bx+29C6h]
		imul	di, [bp+arg_8],	50h
		mov	ax, 0FFFFh
		and	ax, [bp+arg_4]
		mov	[bp+var_2], ah
		jns	short loc_103A
		neg	[bp+arg_4]

loc_103A:
		xor	ch, ch
		xor	si, si

loc_103E:
		mov	ax, si
		cwd
		shl	ax, 7
		div	[bp+arg_4]
		add	ax, [bp+arg_0]
		mov	bx, 2568h
		xlat
		imul	[bp+arg_2]
		sar	ax, 7
		add	ax, [bp+arg_A]
		mov	dx, ax
		and	al, 0Fh
		xor	dl, al
		sar	dx, 3
		add	dx, di
		mov	ah, ds:3346h
		test	ah, 1
		jnz	short loc_106D
		xor	al, 8

loc_106D:
		mov	[si+31C6h], dx
		mov	[si+3246h], ax
		xor	bh, bh
		mov	bl, al
		add	bx, bx
		mov	dx, [bx+22C6h]
		mov	[si+32C6h], dx
		test	[bp+var_2], 0FFh
		jz	short loc_108C
		neg	[bp+arg_2]

loc_108C:
		add	di, 50h
		add	si, 2
		loop	loc_103E
		pop	ds
		xor	si, si
		mov	ax, 0A800h
		mov	es, ax
		assume es:nothing
		cld
		mov	al, 0C0h
		out	7Ch, al
		xor	al, al
		out	7Eh, al
		out	7Eh, al
		out	7Eh, al
		out	7Eh, al
		call	sub_10E0
		mov	al, 0CEh
		out	7Ch, al
		mov	al, 0FFh
		out	7Eh, al
		out	7Eh, al
		out	7Eh, al
		out	7Eh, al
		call	sub_10E0
		mov	al, 0CDh
		out	7Ch, al
		call	sub_10E0
		mov	al, 0CBh
		out	7Ch, al
		call	sub_10E0
		mov	al, 0C7h
		out	7Ch, al
		call	sub_10E0
		xor	al, al
		out	7Ch, al
		pop	bp
		pop	di
		pop	si
		pop	ds
		leave
		retn	0Ch
sub_1008	endp


; =============== S U B	R O U T	I N E =======================================


sub_10E0	proc near
		mov	byte ptr ss:3346h, 0
		xor	bp, bp

loc_10E8:
		xor	dx, dx
		mov	di, [bp+31C6h]
		mov	cx, [bp+3246h]
		mov	bx, [bp+32C6h]
		shr	ch, 1
		jb	short loc_1108
		lodsb
		shl	ax, 8
		test	cl, 8
		jz	short loc_1109
		ror	ax, cl
		jmp	short loc_1112
; ---------------------------------------------------------------------------
		nop

loc_1108:
		lodsw

loc_1109:
		ror	ax, cl
		xor	dx, ax
		and	ax, bx
		xor	ax, dx
		stosw

loc_1112:
		xor	dx, ax
		dec	ch
		jnz	short loc_1108
		mov	es:[di], dx
		add	bp, 2
		dec	byte ptr ss:3346h
		jnz	short loc_10E8
		retn
sub_10E0	endp

include libs/master.lib/smem_wget.asm
include libs/master.lib/smem_release.asm
include libs/master.lib/memheap.asm
include libs/master.lib/mem_assign.asm

; =============== S U B	R O U T	I N E =======================================


sub_136A	proc near
		cmp	mem_TopSeg, 0
		jz	short loc_1394
		mov	ax, ds:3348h
		cmp	ds:334Ah, ax
		jnz	short loc_1398
		mov	ax, mem_TopSeg
		cmp	ds:334Eh, ax
		jnz	short loc_1398
		mov	es, ax
		xor	ax, ax
		cmp	mem_MyOwn, ax
		mov	mem_TopSeg, ax
		jz	short loc_1394
		mov	ah, 49h
		int	21h		; DOS -	2+ - FREE MEMORY
					; ES = segment address of area to be freed

loc_1394:
		mov	ax, 1
		retn
; ---------------------------------------------------------------------------

loc_1398:
		xor	ax, ax
		stc
		retn
sub_136A	endp

include libs/master.lib/grc_setclip.asm
include libs/master.lib/grcg_hline.asm
include libs/master.lib/grcg_setcolor.asm
include libs/master.lib/grcg_pset.asm
include libs/master.lib/egc.asm
include libs/master.lib/grcg_circlefill.asm
include libs/master.lib/grcg_byteboxfill_x.asm
include libs/master.lib/random.asm
include libs/BorlandC/__abort.asm
include libs/BorlandC/atexit.asm
include libs/BorlandC/errormsg.asm
include libs/BorlandC/exit.asm
include libs/BorlandC/H_LRSH.ASM
include libs/BorlandC/__IOERROR.ASM
include libs/BorlandC/_isatty.asm
include libs/BorlandC/lseek.asm
include libs/BorlandC/N_LXMUL.ASM
include libs/BorlandC/setupio.asm
include libs/BorlandC/brk.asm
include libs/BorlandC/nearheap.asm
include libs/BorlandC/fflush.asm
include libs/BorlandC/flushall.asm
include libs/BorlandC/fseek.asm

; =============== S U B	R O U T	I N E =======================================

; Attributes: library function bp-based	frame

; int __cdecl setvbuf(FILE *stream, char *buf, int type, size_t	size)
_setvbuf	proc near

stream		= word ptr  4
buf		= word ptr  6
_type		= word ptr  8
_size		= word ptr  0Ah

		push	bp
		mov	bp, sp
		push	si
		push	di
		mov	bx, [bp+stream]
		mov	ax, [bx+0Eh]
		cmp	ax, [bp+stream]
		jz	short loc_1EC0
		jmp	loc_1F6B
; ---------------------------------------------------------------------------

loc_1EC0:
		cmp	[bp+_type], 2
		jle	short loc_1EC9
		jmp	loc_1F6B
; ---------------------------------------------------------------------------

loc_1EC9:
		cmp	[bp+_size], 7FFFh
		jbe	short loc_1ED3
		jmp	loc_1F6B
; ---------------------------------------------------------------------------

loc_1ED3:
		cmp	word_2866, 0
		jnz	short loc_1EE9
		cmp	[bp+stream], 26A4h
		jnz	short loc_1EE9
		mov	word_2866, 1
		jmp	short loc_1EFD
; ---------------------------------------------------------------------------

loc_1EE9:
		cmp	word_2864, 0
		jnz	short loc_1EFD
		cmp	[bp+stream], 2694h
		jnz	short loc_1EFD
		mov	word_2864, 1

loc_1EFD:
		mov	bx, [bp+stream]
		cmp	word ptr [bx], 0
		jz	short loc_1F14
		mov	ax, 1
		push	ax		; whence
		xor	ax, ax
		push	ax
		push	ax		; offset
		push	bx		; stream
		call	_fseek
		add	sp, 8

loc_1F14:
		mov	bx, [bp+stream]
		test	byte ptr [bx+2], 4
		jz	short loc_1F24
		push	word ptr [bx+8]	; block
		call	_free
		pop	cx

loc_1F24:
		mov	bx, [bp+stream]
		and	word ptr [bx+2], 0FFF3h
		mov	word ptr [bx+6], 0
		mov	ax, [bp+stream]
		add	ax, 5
		mov	[bx+8],	ax
		mov	[bx+0Ah], ax
		cmp	[bp+_type], 2
		jz	short loc_1F8C
		cmp	[bp+_size], 0
		jbe	short loc_1F8C
		mov	_exitbuf, 2128h
		cmp	[bp+buf], 0
		jnz	short loc_1F70
		push	[bp+_size]	; size
		call	_malloc
		pop	cx
		mov	[bp+buf], ax
		or	ax, ax
		jz	short loc_1F6B
		mov	bx, [bp+stream]
		or	word ptr [bx+2], 4
		jmp	short loc_1F70
; ---------------------------------------------------------------------------

loc_1F6B:
		mov	ax, 0FFFFh
		jmp	short loc_1F8E
; ---------------------------------------------------------------------------

loc_1F70:
		mov	bx, [bp+stream]
		mov	ax, [bp+buf]
		mov	[bx+0Ah], ax
		mov	[bx+8],	ax
		mov	ax, [bp+_size]
		mov	[bx+6],	ax
		cmp	[bp+_type], 1
		jnz	short loc_1F8C
		or	word ptr [bx+2], 8

loc_1F8C:
		xor	ax, ax

loc_1F8E:
		pop	di
		pop	si
		pop	bp
		retn
_setvbuf	endp

include libs/BorlandC/_strlen.asm
include libs/BorlandC/write.asm
include libs/BorlandC/writea.asm
include libs/BorlandC/xfflush.asm

; ---------------------------------------------------------------------------
		db 0
		db    0
		db    0
include libs/BorlandC/c0[data].asm
aTouhou_dat	db 'touhou.dat',0
		db 4, 3, 2, 1, 0
aMasters_libVer	db 'MASTERS.LIB Version 0.23 Copyright (c)1995 A.Koizuka,Kazumi,steel'
		db 'man,iR,All rights reserved.',0
		db 0
include libs/master.lib/grp[data].asm
		db 0
include libs/master.lib/pal[data].asm
include libs/master.lib/bfnt_id[data].asm
include libs/master.lib/dos_ropen[data].asm
include libs/master.lib/super_entry_bfnt[data].asm
include libs/master.lib/superpa[data].asm
include libs/master.lib/mem[data].asm
include libs/master.lib/clip[data].asm
include libs/master.lib/edges[data].asm
include libs/master.lib/sin8[data].asm
include libs/master.lib/sin7[data].asm
include libs/master.lib/rand[data].asm
aAbnormalProgra	db 'Abnormal program termination',0Dh,0Ah,0
		db 0
include libs/BorlandC/atexit[data].asm
include libs/BorlandC/exit[data].asm
include libs/BorlandC/files[data].asm
__heaplen	dw 0
include libs/BorlandC/__IOERROR[data].asm
		db    0
__stklen	dw 1000h
include libs/BorlandC/nearheap[data].asm
word_2864	dw 0
word_2866	dw 0
include libs/BorlandC/sysnerr[data].asm

InitStart	label byte
include libs/BorlandC/setupio[initdata].asm
InitEnd	label byte

ExitStart	label byte
ExitEnd	label byte

bdata@	label byte
; TODO: Missing clip[bss].asm (8 bytes) somewhere in there...
		db 126h dup(?)
include libs/master.lib/pal[bss].asm
include libs/master.lib/superpa[bss].asm
		db 182h dup(?)
include libs/master.lib/mem[bss].asm
		dd ?
		dd ?
		dd ?
		dd ?
include libs/BorlandC/atexit[bss].asm
edata@	label byte

seg000		ends


		end startx
