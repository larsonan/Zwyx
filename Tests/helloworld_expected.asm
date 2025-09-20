global	_start
_start:
mov	rcx,	static_mem
lea	rbx,	[rcx+400]
lea	rax,	[rel+f1]
mov	[rbx+40],	rax
mov	[rbx+48],	rbx
lea	rax,	[rel+f2]
mov	[rbx+24],	rax
mov	[rbx+32],	rbx
mov	rbx,	[rsp]
mov	rcx,	static_mem
lea	rax,	[rcx+0]
mov	rcx,	static_mem
mov	[rcx+400],	rax
mov	qword	[rcx+408],	400
mov	rcx,	static_mem
lea	rbx,	[rcx+456]
lea	rax,	[rel+f3]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
lea	rax,	[rel+f4]
mov	[rbx+16],	rax
mov	[rbx+24],	rbx
mov	rbx,	[rsp]
mov	qword	[rsp-48],	s1
mov	qword	[rsp-40],	13
lea	rax,	[rsp-32]
mov	[rsp-56],	rax
lea	rbx,	[rsp-32]
lea	rax,	[rel+f5]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-56]
sub	rsp,	56
call	f6
add	rsp,	56
mov	rbx,	[rsp]
mov	rax,	60
mov	rdi,	0
syscall
f1:
push	rdx
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+0]
mov	rdx,	[rcx+8]
mov	[rsp-8],	rax
lea	rbx,	[rsp-48]
mov	qword	[rbx+0],	0
mov	qword	[rbx+16],	1
mov	rbx,	[rsp]
mov	rcx,	[rbx+0]
mov	rax,	[rcx+16]
mov	[rsp-40],	rax
lea	rax,	[rel+f7]
mov	[rsp-24],	rax
mov	[rsp-16],	rsp
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f8
add	rsp,	48
mov	rbx,	[rsp]
pop	rbx
pop	rdx
ret
f2:
push	rdx
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+0]
mov	rdx,	[rcx+8]
mov	rcx,	[rbx+0]
add	rax,	[rcx+8]
mov	[rsp-8],	rax
mov	rdx,	[rbx+16]
mov	rax,	[rbx+8]
mov	rbx,	[rsp-8]
sub	rsp,	8
call	rax
add	rsp,	8
mov	rbx,	[rsp]
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
add	rax,	64
mov	rcx,	[rbx+0]
mov	[rcx+8],	rax
mov	rcx,	[rbx+0]
mov	rax,	[rcx+16]
add	rax,	1
mov	rcx,	[rbx+0]
mov	[rcx+16],	rax
pop	rbx
pop	rdx
ret
f3:
push	rdx
push	rbx
mov	qword	[rsp-16],	0
mov	[rsp-8],	rdx
mov	qword	[rsp-24],	0
b0:
mov	rax,	[rsp-16]
mov	rdx,	[rsp-8]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b1
mov	rax,	[rsp-24]
mov	[rsp-32],	rax
mov	rcx,	static_mem
lea	rax,	[rcx+400]
mov	[rsp-40],	rax
lea	rbx,	[rsp-40]
sub	rsp,	40
call	f9
add	rsp,	40
mov	rbx,	[rsp]
mov	[rsp-32],	rax
mov	rcx,	[rsp-32]
mov	rax,	[rcx+56]
cmp	rax,	[rbx+8]
setg	al
movzx	rax,	al
cmp	rax,	0
je	b2
mov	rax,	[rbx+8]
mov	[rsp-40],	rax
mov	rcx,	[rsp-32]
lea	rax,	[rcx+0]
mov	[rsp-48],	rax
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f10
add	rsp,	48
mov	rbx,	[rsp]
mov	[rsp-16],	rax
mov	[rsp-8],	rdx
mov	rcx,	[rsp-32]
mov	rax,	[rcx+56]
sub	rax,	8
sub	rax,	[rbx+8]
mov	rcx,	[rsp-32]
mov	[rcx+56],	rax
jmp	b3
b2:
mov	rcx,	[rsp-32]
mov	rax,	[rcx+32]
mov	rdx,	[rcx+40]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b4
mov	rcx,	[rsp-32]
lea	rbx,	[rcx+0]
lea	rax,	[rel+f11]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
lea	rax,	[rel+f12]
mov	[rbx+16],	rax
mov	[rbx+24],	rbx
mov	rbx,	[rsp]
mov	qword	[rsp-40],	4096
b5:
mov	rax,	[rsp-40]
mov	[rsp-48],	rax
mov	rax,	[rbx+8]
add	rax,	16
mov	[rsp-56],	rax
mov	rax,	[rsp-48]
cmp	rax,	[rsp-56]
setl	al
movzx	rax,	al
cmp	rax,	0
je	b6
mov	rax,	[rsp-40]
xor	rdx,	rdx
mov	qword	rcx,	2
mul	qword	rcx
mov	[rsp-40],	rax
jmp	b5
b6:
mov	rax,	[rsp-40]
mov	[rsp-40],	rax
lea	rbx,	[rsp-40]
sub	rsp,	40
call	f13
add	rsp,	40
mov	rbx,	[rsp]
mov	[rsp-48],	rax
mov	[rsp-40],	rdx
mov	rcx,	[rsp-32]
lea	rax,	[rcx+0]
mov	[rsp-56],	rax
lea	rbx,	[rsp-56]
sub	rsp,	56
call	f14
add	rsp,	56
mov	rbx,	[rsp]
mov	rax,	[rbx+8]
mov	[rsp-40],	rax
lea	rax,	[rcx+0]
mov	[rsp-48],	rax
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f10
add	rsp,	48
mov	rbx,	[rsp]
mov	[rsp-16],	rax
mov	[rsp-8],	rdx
mov	rax,	[rcx+40]
sub	rax,	[rbx+8]
sub	rax,	16
mov	rcx,	[rsp-32]
mov	[rcx+56],	rax
b4:
b3:
mov	rax,	[rsp-24]
add	rax,	1
mov	[rsp-24],	rax
jmp	b0
b1:
mov	rax,	[rsp-16]
mov	rdx,	[rsp-8]
sub	rax,	8
mov	[rsp-32],	rax
mov	rcx,	[rsp-32]
mov	rax,	[rcx+0]
mov	[rsp-40],	rax
mov	rax,	[rsp-24]
xor	rdx,	rdx
mov	qword	rcx,	0x10000
mul	qword	rcx
mov	[rsp-48],	rax
mov	rax,	[rsp-40]
or	rax,	[rsp-48]
mov	rcx,	[rsp-32]
mov	[rcx+0],	rax
mov	rax,	[rsp-16]
mov	rdx,	[rsp-8]
pop	rbx
pop	rdx
ret
f4:
push	rdx
push	rbx
mov	rax,	[rbx+8]
mov	rdx,	[rbx+16]
sub	rax,	8
mov	[rsp-8],	rax
mov	rcx,	[rsp-8]
mov	rax,	[rcx+0]
xor	rdx,	rdx
mov	qword	rcx,	0x10000
div	qword	rcx
sub	rax,	1
mov	[rsp-16],	rax
mov	rcx,	static_mem
lea	rax,	[rcx+400]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f9
add	rsp,	24
mov	rbx,	[rsp]
mov	[rsp-16],	rax
mov	rax,	[rbx+8]
mov	rdx,	[rbx+16]
mov	[rsp-40],	rax
mov	[rsp-32],	rdx
mov	rcx,	[rsp-16]
lea	rax,	[rcx+0]
mov	[rsp-48],	rax
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f15
add	rsp,	48
mov	rbx,	[rsp]
mov	rcx,	[rsp-16]
mov	rax,	[rcx+56]
add	rax,	8
mov	rcx,	[rsp-8]
add	rax,	[rcx+0]
mov	rcx,	[rsp-16]
mov	[rcx+56],	rax
pop	rbx
pop	rdx
ret
f5:
push	rdx
push	rbx
mov	rax,	[rbx+16]
mov	rdx,	[rbx+24]
mov	[rsp-16],	rax
mov	[rsp-8],	rdx
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f16
add	rsp,	16
mov	rbx,	[rsp]
pop	rbx
pop	rdx
ret
f6:
push	rbx
mov	rax,	[rbx+8]
mov	rdx,	[rbx+16]
mov	[rsp-16],	rax
mov	[rsp-8],	rdx
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f17
add	rsp,	24
mov	rbx,	[rsp]
mov	rax,	[rbx+0]
mov	[rsp-8],	rax
lea	rbx,	[rsp-8]
sub	rsp,	8
call	f18
add	rsp,	8
mov	rbx,	[rsp]
pop	rbx
ret
f7:
push	rdx
push	rbx
mov	rcx,	[rsp+8]
mov	rcx,	[rcx]
mov	rdx,	[rcx+16]
mov	rax,	[rcx+8]
mov	rcx,	[rsp+8]
mov	rbx,	[rcx-8]
sub	rsp,	8
call	rax
add	rsp,	8
mov	rbx,	[rsp]
mov	rcx,	[rsp+8]
mov	rax,	[rcx-8]
add	rax,	64
mov	rcx,	[rsp+8]
mov	[rcx-8],	rax
pop	rbx
pop	rdx
ret
f8:
push	rbx
b7:
mov	rax,	[rbx+0]
cmp	rax,	[rbx+8]
setl	al
movzx	rax,	al
cmp	rax,	0
je	b8
mov	rdx,	[rbx+32]
mov	rax,	[rbx+24]
lea	rbx,	[rbx+0]
sub	rsp,	0
call	rax
add	rsp,	0
mov	rbx,	[rsp]
mov	rax,	[rbx+0]
add	rax,	[rbx+16]
mov	[rbx+0],	rax
jmp	b7
b8:
pop	rbx
ret
f9:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+0]
mov	rdx,	[rcx+8]
mov	[rsp-16],	rax
mov	rax,	[rbx+8]
xor	rdx,	rdx
mov	qword	rcx,	64
mul	qword	rcx
mov	[rsp-24],	rax
mov	rax,	[rsp-16]
add	rax,	[rsp-24]
mov	[rsp-8],	rax
mov	rax,	[rsp-8]
pop	rbx
ret
f10:
push	rbx
mov	rcx,	[rbx+0]
mov	rdx,	[rcx+8]
mov	rax,	[rcx+0]
lea	rbx,	[rbx+0]
sub	rsp,	8
call	rax
add	rsp,	8
mov	rbx,	[rsp]
pop	rbx
ret
f11:
push	rdx
push	rbx
mov	rax,	[rbx+8]
xor	rdx,	rdx
mov	qword	rcx,	8
div	qword	rcx
mov	rax,	rdx
cmp	rax,	0
je	b9
mov	rax,	[rbx+8]
xor	rdx,	rdx
mov	qword	rcx,	8
div	qword	rcx
xor	rdx,	rdx
mov	qword	rcx,	8
mul	qword	rcx
add	rax,	8
mov	[rbx+8],	rax
b9:
mov	qword	[rsp-8],	0
mov	rcx,	[rsp+8]
mov	rax,	[rcx+48]
sub	rax,	8
mov	[rsp-24],	rax
mov	[rsp-16],	rdx
mov	rax,	[rsp-24]
mov	rdx,	[rsp-16]
mov	[rsp-32],	rax
mov	rax,	[rsp-32]
mov	[rsp-40],	rax
b10:
mov	rax,	[rsp-8]
cmp	rax,	[rbx+8]
setl	al
movzx	rax,	al
mov	[rsp-48],	rax
mov	rcx,	[rsp-32]
mov	rax,	[rcx+0]
and	rax,	0xFFFF
cmp	rax,	0xFFFF
setl	al
movzx	rax,	al
mov	[rsp-56],	rax
mov	rax,	[rsp-48]
and	rax,	[rsp-56]
cmp	rax,	0
je	b11
mov	rcx,	[rsp-40]
mov	rax,	[rcx+0]
and	rax,	0x8000
cmp	rax,	0
je	b12
mov	qword	[rsp-8],	0
mov	rax,	[rsp-40]
mov	[rsp-32],	rax
jmp	b13
b12:
mov	rax,	[rsp-8]
cmp	rax,	0
setg	al
movzx	rax,	al
cmp	rax,	0
je	b14
mov	rax,	[rsp-8]
add	rax,	8
mov	rcx,	[rsp-40]
add	rax,	[rcx+0]
mov	[rsp-8],	rax
mov	rax,	[rsp-8]
mov	rcx,	[rsp-32]
mov	[rcx+0],	rax
jmp	b15
b14:
mov	rax,	[rsp-40]
mov	[rsp-32],	rax
mov	rcx,	[rsp-32]
mov	rax,	[rcx+0]
mov	[rsp-8],	rax
b15:
b13:
mov	rax,	[rsp-40]
add	rax,	8
mov	[rsp-48],	rax
mov	rcx,	[rsp-40]
mov	rax,	[rcx+0]
and	rax,	0x7FFF
mov	[rsp-56],	rax
mov	rax,	[rsp-48]
add	rax,	[rsp-56]
mov	[rsp-40],	rax
jmp	b10
b11:
mov	rcx,	[rsp-32]
mov	rax,	[rcx+0]
cmp	rax,	0xFFFF
sete	al
movzx	rax,	al
cmp	rax,	0
je	b16
mov	rax,	0
jmp	b17
b16:
mov	rax,	[rsp-8]
cmp	rax,	[rbx+8]
setg	al
movzx	rax,	al
cmp	rax,	0
je	b18
mov	rax,	[rsp-32]
add	rax,	8
add	rax,	[rbx+8]
mov	[rsp-40],	rax
mov	rax,	[rsp-8]
sub	rax,	[rbx+8]
sub	rax,	8
mov	rcx,	[rsp-40]
mov	[rcx+0],	rax
b18:
mov	rax,	[rbx+8]
or	rax,	0x8000
mov	rcx,	[rsp-32]
mov	[rcx+0],	rax
mov	rax,	[rsp-32]
mov	[rsp-24],	rax
mov	[rsp-16],	rdx
mov	rax,	[rsp-24]
mov	rdx,	[rsp-16]
add	rax,	8
mov	rcx,	[rsp+8]
cmp	rax,	[rcx+48]
sete	al
movzx	rax,	al
cmp	rax,	0
je	b19
mov	rax,	[rsp-40]
add	rax,	8
mov	[rsp-24],	rax
mov	[rsp-16],	rdx
mov	rax,	[rsp-24]
mov	rdx,	[rsp-16]
mov	rcx,	[rsp+8]
mov	[rcx+48],	rax
b19:
mov	rax,	[rsp-32]
add	rax,	8
b17:
pop	rbx
pop	rdx
ret
f12:
push	rdx
push	rbx
mov	rax,	[rbx+8]
mov	rdx,	[rbx+16]
sub	rax,	8
mov	[rsp-8],	rax
mov	rcx,	[rsp-8]
mov	rax,	[rcx+0]
and	rax,	0x7FFF
mov	rcx,	[rsp-8]
mov	[rcx+0],	rax
mov	rax,	[rbx+8]
mov	rdx,	[rbx+16]
mov	rcx,	[rsp+8]
cmp	rax,	[rcx+48]
setl	al
movzx	rax,	al
cmp	rax,	0
je	b20
mov	rax,	[rbx+8]
mov	rdx,	[rbx+16]
mov	rcx,	[rsp+8]
mov	[rcx+48],	rax
b20:
pop	rbx
pop	rdx
ret
f13:
push	rbx
mov	qword	[rsp-72],	9
mov	qword	[rsp-64],	3
mov	qword	[rsp-56],	0
mov	rax,	[rbx+0]
mov	[rsp-48],	rax
mov	rax,	0
sub	rax,	1
mov	[rsp-40],	rax
mov	qword	[rsp-32],	0
mov	qword	[rsp-24],	34
lea	rbx,	[rsp-72]
sub	rsp,	72
call	f0
add	rsp,	72
mov	rbx,	[rsp]
mov	[rsp-16],	rax
mov	[rsp-8],	rdx
mov	rax,	[rbx+0]
mov	[rsp-8],	rax
mov	rax,	[rsp-16]
mov	rdx,	[rsp-8]
pop	rbx
ret
f14:
push	rbx
mov	rax,	[rbx+8]
mov	rdx,	[rbx+16]
mov	rcx,	[rbx+0]
mov	[rcx+32],	rax
mov	[rcx+40],	rdx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+32]
mov	rdx,	[rcx+40]
mov	[rsp-8],	rax
mov	rcx,	[rbx+0]
mov	rax,	[rcx+40]
sub	rax,	16
mov	rcx,	[rsp-8]
mov	[rcx+0],	rax
mov	rax,	[rsp-8]
add	rax,	8
mov	[rsp-8],	rax
lea	rbx,	[rsp-48]
mov	qword	[rbx+0],	0
mov	qword	[rbx+16],	1
mov	rbx,	[rsp]
mov	qword	[rsp-48],	8
mov	qword	[rsp-32],	8
mov	rcx,	[rbx+0]
mov	rax,	[rcx+40]
sub	rax,	8
mov	[rsp-40],	rax
lea	rax,	[rel+f19]
mov	[rsp-24],	rax
mov	[rsp-16],	rsp
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f8
add	rsp,	48
mov	rbx,	[rsp]
mov	rcx,	[rsp-8]
mov	qword	[rcx+0],	0xFFFF
mov	rcx,	[rbx+0]
mov	rax,	[rcx+32]
mov	rdx,	[rcx+40]
add	rax,	8
mov	rcx,	[rbx+0]
mov	[rcx+48],	rax
pop	rbx
ret
f15:
push	rbx
mov	rcx,	[rbx+0]
mov	rdx,	[rcx+24]
mov	rax,	[rcx+16]
lea	rbx,	[rbx+0]
sub	rsp,	8
call	rax
add	rsp,	8
mov	rbx,	[rsp]
pop	rbx
ret
f16:
push	rbx
mov	qword	[rsp-56],	1
mov	rax,	[rbx+8]
mov	[rsp-48],	rax
mov	qword	[rsp-40],	1
mov	rax,	[rbx+0]
mov	rdx,	[rbx+8]
mov	[rsp-32],	rax
lea	rbx,	[rsp-56]
sub	rsp,	56
call	f0
add	rsp,	56
mov	rbx,	[rsp]
pop	rbx
ret
f17:
push	rbx
mov	rax,	[rbx+8]
mov	rdx,	[rbx+16]
mov	rcx,	[rbx+0]
mov	[rcx+16],	rax
mov	[rcx+24],	rdx
mov	rbx,	[rbx+0]
sub	rsp,	0
call	f20
add	rsp,	0
mov	rbx,	[rsp]
pop	rbx
ret
f18:
push	rbx
mov	qword	[rsp-8],	10
mov	rax,	[rbx+0]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f21
add	rsp,	16
mov	rbx,	[rsp]
pop	rbx
ret
f19:
push	rdx
push	rbx
mov	rcx,	[rsp+8]
mov	rcx,	[rcx-8]
mov	qword	[rcx+0],	0
mov	rcx,	[rsp+8]
mov	rax,	[rcx-8]
add	rax,	8
mov	rcx,	[rsp+8]
mov	[rcx-8],	rax
pop	rbx
pop	rdx
ret
f20:
push	rbx
mov	rdx,	[rbx+8]
mov	rax,	[rbx+0]
lea	rbx,	[rbx+0]
sub	rsp,	0
call	rax
add	rsp,	0
mov	rbx,	[rsp]
pop	rbx
ret
f21:
push	rbx
mov	rax,	[rbx+8]
mov	[rsp-1],	al
lea	rax,	[rsp-1]
mov	rcx,	[rbx+0]
mov	[rcx+16],	rax
mov	qword	[rcx+24],	1
mov	rcx,	[rbx+0]
mov	qword	[rcx+24],	1
mov	rbx,	[rbx+0]
sub	rsp,	8
call	f20
add	rsp,	8
mov	rbx,	[rsp]
pop	rbx
ret
f0:
mov	rax,	[rbx+0]
mov	rdx,	[rbx+8]
mov	rdi,	[rbx+16]
mov	rsi,	[rbx+24]
mov     r8,     [rbx+32]
mov     r9,     [rbx+40]
mov     r10,    [rbx+48]
syscall
ret
SECTION .bss
static_mem	resb	488
SECTION .data
s1	db	'Hello, World!'
