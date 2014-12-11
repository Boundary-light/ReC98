;
; +-------------------------------------------------------------------------+
; |   This file has been generated by The Interactive Disassembler (IDA)    |
; |        Copyright (c) 2009 by Hex-Rays, <support@hex-rays.com>           |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	04F7FC8F2C807428042289437780947F

; File Name   :	th02/ZUN.COM:ZUNINIT
; Format      :	MS-DOS COM-file
; Base Address:	0h Range: 100h-66Eh Loaded length: 56Eh
; OS type	  :  MS	DOS
; Application type:  Executable	16bit

		.model tiny

; ===========================================================================

; Segment type:	Pure code
seg000		segment	byte public 'CODE' use16
		assume cs:seg000
		org 100h
		assume es:nothing, ss:nothing, ds:seg000

; =============== S U B	R O U T	I N E =======================================

; Attributes: noreturn thunk

		public start
start		proc near
		jmp	start_0
start		endp


; =============== S U B	R O U T	I N E =======================================


sub_103		proc far
		pushf
		push	ax
		push	bx
		push	cx
		push	dx
		push	ds
		push	di
		push	es
		mov	bx, ax
		shl	bx, 1
		xor	ax, ax
		mov	dx, cs:off_312[bx]
		call	sub_202
		mov	ax, 0A0h
		mov	dx, offset aGkgBGuglbV ; "リターンキーを押してね$"
		call	sub_202

loc_122:
		mov	ah, 4
		mov	al, 3
		int	18h		; TRANSFER TO ROM BASIC
					; causes transfer to ROM-based BASIC (IBM-PC)
					; often	reboots	a compatible; often has	no effect at all
		test	ah, 10h
		jz	short loc_122
		pop	es
		pop	di
		pop	ds
		pop	dx
		pop	cx
		pop	bx
		pop	ax
		popf
		iret
sub_103		endp


; =============== S U B	R O U T	I N E =======================================


sub_136		proc far
		cmp	cs:byte_24D, 0
		jnz	short locret_147
		mov	cs:byte_24D, 1
		call	sub_15A

locret_147:
		iret
sub_136		endp


; =============== S U B	R O U T	I N E =======================================


sub_148		proc far
		cmp	cs:byte_24D, 0
		jnz	short locret_159
		mov	cs:byte_24D, 2
		call	sub_15A

locret_159:
		iret
sub_148		endp


; =============== S U B	R O U T	I N E =======================================


sub_15A		proc near
		pushf
		push	ax
		push	bx
		push	cx
		push	dx
		push	ds
		push	di
		push	es
		mov	ah, 41h
		int	18h		; TRANSFER TO ROM BASIC
					; causes transfer to ROM-based BASIC (IBM-PC)
					; often	reboots	a compatible; often has	no effect at all
		cmp	cs:byte_24D, 2
		jz	short loc_18D
		mov	ax, 650h
		mov	dx, offset aVVtvVVrvsvnvog ; "むやみにＳＴＯＰキー押したりしない$"
		call	sub_202
		mov	ax, 6F0h
		mov	dx, offset asc_341 ; "方がいいと思うの。（ゲーム中はね）$"
		call	sub_202
		mov	ax, 790h
		mov	dx, offset aBivrvsvnvoglbV ; "（ＳＴＯＰキーで戻れるよ、ねっ）　$"
		call	sub_202
		mov	bl, 1
		jmp	short loc_1AA
; ---------------------------------------------------------------------------

loc_18D:
		mov	ax, 650h
		mov	dx, offset aVV	; "なんでＣＯＰＹキー押したりしてるの$"
		call	sub_202
		mov	ax, 6F0h
		mov	dx, offset aVivBBbvVVmbBbb ; "かな〜。ふしぎ〜。　　（もう一度、$"
		call	sub_202
		mov	ax, 790h
		mov	dx, offset aVbvnvovxglbIqv ; "ＣＯＰＹキー押せば戻れるよ、ねっ）$"
		call	sub_202
		mov	bl, 2

loc_1AA:
		mov	ah, 4
		mov	al, 0Ch
		int	18h		; TRANSFER TO ROM BASIC
					; causes transfer to ROM-based BASIC (IBM-PC)
					; often	reboots	a compatible; often has	no effect at all
		test	ah, bl
		jnz	short loc_1AA

loc_1B4:
		mov	ah, 4
		mov	al, 0Ch
		int	18h		; TRANSFER TO ROM BASIC
					; causes transfer to ROM-based BASIC (IBM-PC)
					; often	reboots	a compatible; often has	no effect at all
		test	ah, bl
		jz	short loc_1B4
		mov	ah, 40h
		int	18h		; TRANSFER TO ROM BASIC
					; causes transfer to ROM-based BASIC (IBM-PC)
					; often	reboots	a compatible; often has	no effect at all
		mov	ax, 650h
		mov	dx, offset aB@b@b@b@b@b@b@ ; "　　　　　　　　　　　　　　　　　$"
		call	sub_202
		mov	ax, 6F0h
		mov	dx, offset aB@b@b@b@b@b@b@ ; "　　　　　　　　　　　　　　　　　$"
		call	sub_202
		mov	ax, 790h
		mov	dx, offset aB@b@b@b@b@b@b@ ; "　　　　　　　　　　　　　　　　　$"
		call	sub_202
		mov	ah, 6
		int	18h		; TRANSFER TO ROM BASIC
					; causes transfer to ROM-based BASIC (IBM-PC)
					; often	reboots	a compatible; often has	no effect at all
		pop	es
		pop	di
		pop	ds
		pop	dx
		pop	cx
		pop	bx
		pop	ax
		popf
		mov	cs:byte_24D, 0
		retn
sub_15A		endp


; =============== S U B	R O U T	I N E =======================================


sub_1F0		proc near
		shl	ah, 1
		cmp	al, 9Fh
		jnb	short loc_1FB
		cmp	al, 80h
		adc	ax, 0FEDFh

loc_1FB:
		sbb	ax, 0DFFEh
		and	ax, 7F7Fh
		retn
sub_1F0		endp


; =============== S U B	R O U T	I N E =======================================


sub_202		proc near
		mov	bx, dx
		mov	di, 0A000h
		mov	es, di
		assume es:nothing
		mov	di, ax
		mov	dx, ax
		xor	ax, ax
		xor	cx, cx

loc_211:
		mov	ax, cs:[bx]
		cmp	al, 24h
		jz	short loc_22C
		xchg	ah, al
		call	sub_1F0
		xchg	ah, al
		sub	al, 20h
		stosw
		or	ah, 80h
		stosw
		inc	bx
		inc	bx
		inc	cx
		inc	cx
		jmp	short loc_211
; ---------------------------------------------------------------------------

loc_22C:
		mov	di, 0A200h
		mov	es, di
		assume es:nothing
		mov	di, dx
		mov	ax, 41h

loc_236:
		dec	cx
		stosw
		jz	short locret_23C
		jmp	short loc_236
; ---------------------------------------------------------------------------

locret_23C:
		retn
sub_202		endp

; ---------------------------------------------------------------------------
ZUNP		dw 'ZU', 'NP'
dword_241	dd 0
dword_245	dd 0
dword_249	dd 0
byte_24D	db 0
aGkgBGuglbV	db 'リターンキーを押してね$'
aVV_0		db 'なんかのエラーですぅ$'
aGtg@gcglvkvVVi	db 'ファイルがみつかんないよぉ$'
aGbgvgkvkslvsvV	db 'メモリが足りないんですぅ$'
aGogbgGtg@gcglv	db 'バッチファイルから起動してよぉ$'
aGngcgxgrgavGtg	db 'ハイスコアのファイルがおかしいよぅ、だからハイスコアは消えちゃったよ$'
off_312		dw offset aVV_0
					; "なんかのエラーですぅ$"
		dw offset aVV_0		; "なんかのエラーですぅ$"
		dw offset aGtg@gcglvkvVVi ; "ファイルがみつかんないよぉ$"
		dw offset aGbgvgkvkslvsvV ; "メモリが足りないんですぅ$"
		dw offset aGogbgGtg@gcglv ; "バッチファイルから起動してよぉ$"
		dw offset aGngcgxgrgavGtg ; "ハイスコアのファイルがおかしいよぅ、だ・...
aVVtvVVrvsvnvog	db 'むやみにＳＴＯＰキー押したりしない$'
asc_341		db '方がいいと思うの。（ゲーム中はね）$'
aBivrvsvnvoglbV	db '（ＳＴＯＰキーで戻れるよ、ねっ）　$'
aB@b@b@b@b@b@b@	db '　　　　　　　　　　　　　　　　　$'
aVV		db 'なんでＣＯＰＹキー押したりしてるの$'
aVivBBbvVVmbBbb	db 'かな〜。ふしぎ〜。　　（もう一度、$'
aVbvnvovxglbIqv	db 'ＣＯＰＹキー押せば戻れるよ、ねっ）$'

; =============== S U B	R O U T	I N E =======================================


sub_413		proc near
		mov	dx, offset aIntvectorSetPr ; "\r\n\r\nINTvector	set program  zuninit.com "...
		mov	ah, 9
		int	21h		; DOS -	PRINT STRING
					; DS:DX	-> string terminated by	"$"
		mov	ax, 3559h
		int	21h		; DOS -	2+ - GET INTERRUPT VECTOR
					; AL = interrupt number
					; Return: ES:BX	= value	of interrupt vector
		cmp	es:ZUNP, 'ZU'
		jnz	short loc_436
		cmp	es:ZUNP+2, 'NP'
		jnz	short loc_436
		mov	ax, 1
		jmp	short locret_439
; ---------------------------------------------------------------------------

loc_436:
		mov	ax, 0

locret_439:
		retn
sub_413		endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: noreturn

start_0		proc near
		mov	si, 81h

loc_43D:
		lodsb
		cmp	al, 0Dh
		jz	short loc_44E
		cmp	al, 2Fh
		jz	short loc_458
		cmp	al, 2Dh
		jz	short loc_458
		cmp	al, 20h
		jbe	short loc_43D

loc_44E:
		call	sub_413
		test	ax, ax
		jz	short loc_473
		jmp	loc_515
; ---------------------------------------------------------------------------

loc_458:
		lodsb
		cmp	al, 20h
		ja	short loc_460
		jmp	loc_527
; ---------------------------------------------------------------------------

loc_460:
		and	al, 0DFh
		cmp	al, 52h
		jz	short loc_469
		jmp	loc_527
; ---------------------------------------------------------------------------

loc_469:
		call	sub_413
		test	ax, ax
		jnz	short loc_4C9
		jmp	loc_51E
; ---------------------------------------------------------------------------

loc_473:
		mov	word ptr cs:dword_241, bx
		mov	word ptr cs:dword_241+2, es
		mov	dx, offset sub_103
		mov	ax, 2559h
		int	21h		; DOS -	SET INTERRUPT VECTOR
					; AL = interrupt number
					; DS:DX	= new vector to	be used	for specified interrupt
		mov	ah, 35h
		mov	al, 6
		int	21h		; DOS -	2+ - GET INTERRUPT VECTOR
					; AL = interrupt number
					; Return: ES:BX	= value	of interrupt vector
		mov	word ptr cs:dword_249, bx
		mov	word ptr cs:dword_249+2, es
		mov	dx, offset sub_136
		mov	ax, 2506h
		int	21h		; DOS -	SET INTERRUPT VECTOR
					; AL = interrupt number
					; DS:DX	= new vector to	be used	for specified interrupt
		mov	ah, 35h
		mov	al, 5
		int	21h		; DOS -	2+ - GET INTERRUPT VECTOR
					; AL = interrupt number
					; Return: ES:BX	= value	of interrupt vector
		mov	word ptr cs:dword_245, bx
		mov	word ptr cs:dword_245+2, es
		mov	dx, offset sub_148
		mov	ax, 2505h
		int	21h		; DOS -	SET INTERRUPT VECTOR
					; AL = interrupt number
					; DS:DX	= new vector to	be used	for specified interrupt
		mov	dx, offset aVVxvVVGbgvgkvi ; "ちょこっとメモリかりるね\r\n\r\n$"
		mov	ah, 9
		int	21h		; DOS -	PRINT STRING
					; DS:DX	-> string terminated by	"$"
		mov	dx, offset sub_413
		mov	cl, 4
		shr	dx, cl
		inc	dx
		mov	ax, 3100h
		int	21h		; DOS -	DOS 2+ - TERMINATE BUT STAY RESIDENT
					; AL = exit code, DX = program size, in	paragraphs
; ---------------------------------------------------------------------------

loc_4C9:
		push	ds
		mov	dx, word ptr es:dword_241
		mov	ds, word ptr es:dword_241+2
		mov	ax, 2559h
		int	21h		; DOS -	SET INTERRUPT VECTOR
					; AL = interrupt number
					; DS:DX	= new vector to	be used	for specified interrupt
		mov	dx, word ptr es:dword_249
		mov	ds, word ptr es:dword_249+2
		mov	ax, 2506h
		int	21h		; DOS -	SET INTERRUPT VECTOR
					; AL = interrupt number
					; DS:DX	= new vector to	be used	for specified interrupt
		mov	dx, word ptr es:dword_245
		mov	ds, word ptr es:dword_245+2
		mov	ax, 2505h
		int	21h		; DOS -	SET INTERRUPT VECTOR
					; AL = interrupt number
					; DS:DX	= new vector to	be used	for specified interrupt
		pop	ds
		push	es
		mov	es, word ptr es:2Ch
		assume es:nothing
		mov	ah, 49h
		int	21h		; DOS -	2+ - FREE MEMORY
					; ES = segment address of area to be freed
		pop	es
		mov	ah, 49h
		int	21h		; DOS -	2+ - FREE MEMORY
					; ES = segment address of area to be freed
		mov	dx, offset aGbgvgkvivcpVjv ; "メモリから消えてなくなっちゃったけど、・...
		jnb	short loc_50F
		mov	dx, offset aGbgvgki ; "メモリ解放エラーです。 :	zuninit.com\r\n$"

loc_50F:
		mov	ah, 9
		int	21h		; DOS -	PRINT STRING
					; DS:DX	-> string terminated by	"$"
		jmp	short loc_530
; ---------------------------------------------------------------------------

loc_515:
		mov	dx, offset aVVVPatuvVVsv ; "すでに常駐してるの\r\n\r\n$"
		mov	ah, 9
		int	21h		; DOS -	PRINT STRING
					; DS:DX	-> string terminated by	"$"
		jmp	short loc_530
; ---------------------------------------------------------------------------

loc_51E:
		mov	dx, offset aVVBapatuvVVVvv ; "まだ、常駐してないわぁ\r\n\r\n$"
		mov	ah, 9
		int	21h		; DOS -	PRINT STRING
					; DS:DX	-> string terminated by	"$"
		jmp	short loc_530
; ---------------------------------------------------------------------------

loc_527:
		mov	dx, offset aICbxscVGigvgvg ; "意味不明なオプションよぉ（オプションは "...
		mov	ah, 9
		int	21h		; DOS -	PRINT STRING
					; DS:DX	-> string terminated by	"$"
		jmp	short $+2

loc_530:
		mov	ax, 4C00h
		int	21h		; DOS -	2+ - QUIT WITH EXIT CODE (EXIT)
start_0		endp			; AL = exit code

; ---------------------------------------------------------------------------
aIntvectorSetPr	db 0Dh,0Ah
		db 0Dh,0Ah
		db 'INTvector set program  zuninit.com Version1.00              (c)zun 1997',0Dh,0Ah,'$'
aVVxvVVGbgvgkvi	db 'ちょこっとメモリかりるね',0Dh,0Ah
		db 0Dh,0Ah,'$'
aVVVPatuvVVsv	db 'すでに常駐してるの',0Dh,0Ah
		db 0Dh,0Ah,'$'
aGbgvgkvivcpVjv	db 'メモリから消えてなくなっちゃったけど、きっとまたあえるよ、ねっ',0Dh,0Ah
		db 0Dh,0Ah,'$'
aVVBapatuvVVVvv	db 'まだ、常駐してないわぁ',0Dh,0Ah
		db 0Dh,0Ah,'$'
aICbxscVGigvgvg	db '意味不明なオプションよぉ（オプションは -Rのみ）',0Dh,0Ah,'$'
aGbgvgki	db 'メモリ解放エラーです。 : zuninit.com',0Dh,0Ah,'$'
seg000		ends


		end start
