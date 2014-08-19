; *Not* the original file. Changes include:
; * a rewrite of the memory model conditional branches at the beginning to
;   refer to TASM's @MODEL symbol
; * removal of the FUNC and ENDFUNC macros, which don't work with TASM's
;   strict alignment constraints. In turn, this means that we also need to
;   edit all source code files to not use these macros.

.xlist
; Description
;	NEAR版とFAR版をアセンブル時に選択設定するためのincludeファイル
;
; Usage:
;	include時に NEARMODEL が定義されていると near版を生成し、
;	定義されていなければ FAR版(Pascal版と共用)を生成する。
;	さらに、COMPACTMODEL, MEDIUMMODELも使える。
;	　アセンブルオプション/Dを使用するとソースの変更なしに両方の
;	生成ができる。
;
; Author:
;	恋塚昭彦
;
; History:
;	92/ 6/19 Initial
;	92/11/16 _pushなどのマクロ追加
;	93/ 2/12 COMPACTMODEL, MEDIUMMODEL

.list
IF @MODEL LE 2
  CALLMODEL equ NEAR
  RETSIZE EQU 1
  DATASIZE EQU 1
ELSEIF @MODEL EQ 3
  CALLMODEL equ NEAR
  RETSIZE EQU 1
  DATASIZE EQU 2
ELSEIF @MODEL EQ 4
  CALLMODEL equ FAR
  RETSIZE EQU 2
  DATASIZE EQU 1
ELSEIF @MODEL EQ 5
  CALLMODEL equ FAR
  RETSIZE EQU 2
  DATASIZE EQU 2
ENDIF

.xlist

; リングバッファのポインタを次に進める
; 処理内容:
;	if ( ++reg == bufsize )
;		reg = 0 ;
; 破壊レジスタ:
;	wreg
; 注意:
;	wregとregは同じサイズであること
RING_INC macro reg,bufsize,wreg
	inc	reg
	cmp	reg,bufsize
	sbb	wreg,wreg
	and	reg,wreg
	endm


; destとcmpregを無符号で比較し、小さい方の値をdestに格納する。
; フラグ:
;	結果が 0 なら zflag = 1
;	destのほうがcmpregより小さかったなら cy=1
; 破壊レジスタ:
;	wreg
min2	macro dest,cmpreg,wreg
	sub	dest,cmpreg
	sbb	wreg,wreg
	and	dest,wreg
	add	dest,cmpreg
	endm

; 邪悪なmov (オペランドを自己書き換えラベルとするのね)
; word size専用
JMOV	MACRO	reg,lab
	mov	reg,1234h
	org	$-2
lab	dw	?
	ENDM


IF DATASIZE EQ 2
_push	MACRO reg
	push reg
	ENDM
_pop	MACRO reg
	pop reg
	ENDM
_lds	MACRO reg,mem
	lds reg,mem
	ENDM
_les	MACRO reg,mem
	les reg,mem
	ENDM
_mov	MACRO a,b
	mov a,b
	ENDM
_inc	MACRO a
	inc a
	ENDM
_add	MACRO a,b
	add a,b
	ENDM
s_inc	MACRO a
	ENDM
s_mov	MACRO a,b
	ENDM
s_push	MACRO a
	ENDM
s_pop	MACRO a
	ENDM
s_	MACRO a
	ENDM
l_	MACRO a
	a
	ENDM
ELSE
_push	MACRO reg
	ENDM
_pop	MACRO reg
	ENDM
_lds	MACRO reg,mem
	mov reg,mem
	ENDM
_les	MACRO reg,mem
	mov reg,mem
	ENDM
_mov	MACRO a,b
	ENDM
_inc	MACRO a
	ENDM
_add	MACRO a,b
	ENDM
s_inc	MACRO a
	inc a
	ENDM
s_mov	MACRO a,b
	mov a,b
	ENDM
s_push	MACRO a
	push a
	ENDM
s_pop	MACRO a
	pop a
	ENDM
s_	MACRO a
	a
	ENDM
l_	MACRO a
	ENDM
ENDIF

	; _call: かならず同一セグメントにあると判っているルーチンをcallする
	; ときに使用するマクロ (94/1/1追加)
IF RETSIZE EQ 2
_call	MACRO place
	push	CS
	call	near ptr place
	ENDM
ELSE
_call	MACRO place
	call	near ptr place
	ENDM
ENDIF

.list