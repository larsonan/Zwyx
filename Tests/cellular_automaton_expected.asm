global	_start
_start:
mov	qword	[rsp-24],	s1
mov	qword	[rsp-16],	10
lea	rax,	[rsp-24]
mov	[rsp-32],	rax
lea	rbx,	[rsp-32]
sub	rsp,	32
call	f1
add	rsp,	32
mov	rbx,	[rsp]
lea	rax,	[rsp-24]
mov	[rsp-32],	rax
lea	rbx,	[rsp-64]
lea	rax,	[rel+f2]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
mov	qword	[rsp-88],	110
mov	qword	[rsp-80],	10
lea	rax,	[rsp-64]
mov	[rsp-72],	rax
lea	rbx,	[rsp-88]
sub	rsp,	88
call	f3
add	rsp,	88
mov	rbx,	[rsp]
lea	rax,	[rsp-24]
mov	[rsp-32],	rax
lea	rbx,	[rsp-32]
sub	rsp,	32
call	f4
add	rsp,	32
mov	rbx,	[rsp]
lea	rbx,	[rsp-32]
lea	rax,	[rel+f5]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
mov	qword	[rsp-56],	110
mov	qword	[rsp-48],	10
lea	rax,	[rsp-32]
mov	[rsp-40],	rax
lea	rbx,	[rsp-56]
sub	rsp,	56
call	f3
add	rsp,	56
mov	rbx,	[rsp]
mov	rax,	60
mov	rdi,	0
syscall
f1:
push	rbx
lea	rax,	[rsp-20]
mov	[rsp-56],	rax
mov	qword	[rsp-48],	20
lea	rax,	[rsp-40]
mov	[rsp-64],	rax
lea	rbx,	[rsp-64]
sub	rsp,	64
call	f6
add	rsp,	64
mov	rbx,	[rsp]
lea	rax,	[rsp-40]
mov	[rsp-48],	rax
lea	rbx,	[rsp-80]
lea	rax,	[rel+f7]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
mov	rcx,	[rbx+0]
mov	rax,	[rcx+0]
mov	rdx,	[rcx+8]
mov	[rsp-96],	rax
mov	[rsp-88],	rdx
lea	rax,	[rsp-80]
mov	[rsp-104],	rax
lea	rbx,	[rsp-104]
sub	rsp,	104
call	f8
add	rsp,	104
mov	rbx,	[rsp]
mov	qword	[rsp-88],	0
lea	rax,	[rsp-80]
mov	[rsp-96],	rax
lea	rbx,	[rsp-96]
sub	rsp,	96
call	f9
add	rsp,	96
mov	rbx,	[rsp]
mov	rax,	[rsp-40]
mov	rdx,	[rsp-32]
mov	[rsp-96],	rax
mov	[rsp-88],	rdx
lea	rax,	[rsp-80]
mov	[rsp-104],	rax
lea	rbx,	[rsp-104]
sub	rsp,	104
call	f10
add	rsp,	104
mov	rbx,	[rsp]
mov	rcx,	[rbx+0]
mov	[rcx+16],	rax
pop	rbx
ret
f2:
push	rdx
push	rbx
lea	rax,	[rsp-56]
mov	[rsp-88],	rax
mov	rcx,	[rbx+32]
mov	rax,	[rcx+16]
mov	[rsp-64],	rax
mov	rax,	[rbx+16]
mov	rdx,	[rbx+24]
mov	[rsp-80],	rax
mov	[rsp-72],	rdx
lea	rbx,	[rsp-88]
sub	rsp,	88
call	f11
add	rsp,	88
mov	rbx,	[rsp]
pop	rbx
pop	rdx
ret
f3:
push	rbx
lea	rax,	[rsp-8]
mov	[rsp-40],	rax
mov	qword	[rsp-32],	8
lea	rax,	[rsp-24]
mov	[rsp-48],	rax
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f6
add	rsp,	48
mov	rbx,	[rsp]
lea	rbx,	[rsp-64]
mov	qword	[rbx+0],	0
mov	qword	[rbx+16],	1
mov	rbx,	[rsp]
mov	rax,	[rbx+0]
mov	[rsp-72],	rax
mov	qword	[rsp-56],	8
lea	rax,	[rel+f12]
mov	[rsp-40],	rax
mov	[rsp-32],	rsp
lea	rbx,	[rsp-64]
sub	rsp,	72
call	f13
add	rsp,	72
mov	rbx,	[rsp]
lea	rax,	[rsp-46]
mov	[rsp-80],	rax
mov	qword	[rsp-72],	22
lea	rax,	[rsp-64]
mov	[rsp-88],	rax
lea	rbx,	[rsp-88]
sub	rsp,	88
call	f6
add	rsp,	88
mov	rbx,	[rsp]
lea	rax,	[rsp-64]
mov	[rsp-72],	rax
lea	rbx,	[rsp-104]
lea	rax,	[rel+f7]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
mov	qword	[rsp-112],	0
lea	rax,	[rsp-104]
mov	[rsp-120],	rax
lea	rbx,	[rsp-120]
sub	rsp,	120
call	f9
add	rsp,	120
mov	rbx,	[rsp]
mov	qword	[rsp-112],	0
lea	rax,	[rsp-104]
mov	[rsp-120],	rax
lea	rbx,	[rsp-120]
sub	rsp,	120
call	f9
add	rsp,	120
mov	rbx,	[rsp]
mov	qword	[rsp-112],	0
lea	rax,	[rsp-104]
mov	[rsp-120],	rax
lea	rbx,	[rsp-120]
sub	rsp,	120
call	f9
add	rsp,	120
mov	rbx,	[rsp]
mov	qword	[rsp-112],	0
lea	rax,	[rsp-104]
mov	[rsp-120],	rax
lea	rbx,	[rsp-120]
sub	rsp,	120
call	f9
add	rsp,	120
mov	rbx,	[rsp]
mov	qword	[rsp-112],	0
lea	rax,	[rsp-104]
mov	[rsp-120],	rax
lea	rbx,	[rsp-120]
sub	rsp,	120
call	f9
add	rsp,	120
mov	rbx,	[rsp]
mov	qword	[rsp-112],	1
lea	rax,	[rsp-104]
mov	[rsp-120],	rax
lea	rbx,	[rsp-120]
sub	rsp,	120
call	f9
add	rsp,	120
mov	rbx,	[rsp]
mov	qword	[rsp-112],	0
lea	rax,	[rsp-104]
mov	[rsp-120],	rax
lea	rbx,	[rsp-120]
sub	rsp,	120
call	f9
add	rsp,	120
mov	rbx,	[rsp]
mov	qword	[rsp-112],	0
lea	rax,	[rsp-104]
mov	[rsp-120],	rax
lea	rbx,	[rsp-120]
sub	rsp,	120
call	f9
add	rsp,	120
mov	rbx,	[rsp]
mov	qword	[rsp-112],	0
lea	rax,	[rsp-104]
mov	[rsp-120],	rax
lea	rbx,	[rsp-120]
sub	rsp,	120
call	f9
add	rsp,	120
mov	rbx,	[rsp]
mov	qword	[rsp-112],	0
lea	rax,	[rsp-104]
mov	[rsp-120],	rax
lea	rbx,	[rsp-120]
sub	rsp,	120
call	f9
add	rsp,	120
mov	rbx,	[rsp]
mov	qword	[rsp-112],	0
lea	rax,	[rsp-104]
mov	[rsp-120],	rax
lea	rbx,	[rsp-120]
sub	rsp,	120
call	f9
add	rsp,	120
mov	rbx,	[rsp]
mov	qword	[rsp-112],	0
lea	rax,	[rsp-104]
mov	[rsp-120],	rax
lea	rbx,	[rsp-120]
sub	rsp,	120
call	f9
add	rsp,	120
mov	rbx,	[rsp]
mov	qword	[rsp-112],	0
lea	rax,	[rsp-104]
mov	[rsp-120],	rax
lea	rbx,	[rsp-120]
sub	rsp,	120
call	f9
add	rsp,	120
mov	rbx,	[rsp]
mov	qword	[rsp-112],	0
lea	rax,	[rsp-104]
mov	[rsp-120],	rax
lea	rbx,	[rsp-120]
sub	rsp,	120
call	f9
add	rsp,	120
mov	rbx,	[rsp]
mov	qword	[rsp-112],	0
lea	rax,	[rsp-104]
mov	[rsp-120],	rax
lea	rbx,	[rsp-120]
sub	rsp,	120
call	f9
add	rsp,	120
mov	rbx,	[rsp]
mov	qword	[rsp-112],	0
lea	rax,	[rsp-104]
mov	[rsp-120],	rax
lea	rbx,	[rsp-120]
sub	rsp,	120
call	f9
add	rsp,	120
mov	rbx,	[rsp]
mov	qword	[rsp-112],	0
lea	rax,	[rsp-104]
mov	[rsp-120],	rax
lea	rbx,	[rsp-120]
sub	rsp,	120
call	f9
add	rsp,	120
mov	rbx,	[rsp]
mov	qword	[rsp-112],	0
lea	rax,	[rsp-104]
mov	[rsp-120],	rax
lea	rbx,	[rsp-120]
sub	rsp,	120
call	f9
add	rsp,	120
mov	rbx,	[rsp]
mov	qword	[rsp-112],	0
lea	rax,	[rsp-104]
mov	[rsp-120],	rax
lea	rbx,	[rsp-120]
sub	rsp,	120
call	f9
add	rsp,	120
mov	rbx,	[rsp]
mov	qword	[rsp-112],	0
lea	rax,	[rsp-104]
mov	[rsp-120],	rax
lea	rbx,	[rsp-120]
sub	rsp,	120
call	f9
add	rsp,	120
mov	rbx,	[rsp]
mov	qword	[rsp-112],	0
lea	rax,	[rsp-104]
mov	[rsp-120],	rax
lea	rbx,	[rsp-120]
sub	rsp,	120
call	f9
add	rsp,	120
mov	rbx,	[rsp]
mov	qword	[rsp-112],	0
lea	rax,	[rsp-104]
mov	[rsp-120],	rax
lea	rbx,	[rsp-120]
sub	rsp,	120
call	f9
add	rsp,	120
mov	rbx,	[rsp]
lea	rbx,	[rsp-104]
mov	qword	[rbx+0],	0
mov	qword	[rbx+16],	1
mov	rbx,	[rsp]
mov	rax,	[rbx+8]
mov	[rsp-96],	rax
lea	rax,	[rel+f14]
mov	[rsp-80],	rax
mov	[rsp-72],	rsp
lea	rbx,	[rsp-104]
sub	rsp,	104
call	f13
add	rsp,	104
mov	rbx,	[rsp]
pop	rbx
ret
f4:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+16]
mov	[rsp-64],	rax
lea	rax,	[rsp-56]
mov	[rsp-72],	rax
lea	rbx,	[rsp-72]
sub	rsp,	72
call	f15
add	rsp,	72
mov	rbx,	[rsp]
pop	rbx
ret
f5:
push	rdx
push	rbx
mov	rax,	[rbx+16]
mov	rdx,	[rbx+24]
mov	[rsp-72],	rax
mov	[rsp-64],	rdx
lea	rax,	[rsp-56]
mov	[rsp-80],	rax
lea	rbx,	[rsp-80]
sub	rsp,	80
call	f16
add	rsp,	80
mov	rbx,	[rsp]
pop	rbx
pop	rdx
ret
f6:
push	rbx
mov	rax,	[rbx+8]
mov	rdx,	[rbx+16]
mov	rcx,	[rbx+0]
mov	[rcx+0],	rax
mov	[rcx+8],	rdx
mov	rcx,	[rbx+0]
mov	qword	[rcx+8],	0
pop	rbx
ret
f7:
push	rdx
push	rbx
mov	rcx,	[rbx+32]
mov	rax,	[rcx+0]
mov	rdx,	[rcx+8]
mov	rcx,	[rbx+32]
add	rax,	[rcx+8]
mov	[rsp-16],	rax
mov	[rsp-8],	rdx
mov	rax,	[rbx+16]
mov	rdx,	[rbx+24]
mov	[rsp-32],	rax
mov	[rsp-24],	rdx
lea	rbx,	[rsp-32]
sub	rsp,	32
call	f17
add	rsp,	32
mov	rbx,	[rsp]
mov	rcx,	[rbx+32]
mov	rax,	[rcx+8]
add	rax,	[rbx+24]
mov	rcx,	[rbx+32]
mov	[rcx+8],	rax
pop	rbx
pop	rdx
ret
f8:
push	rbx
mov	rax,	[rbx+8]
mov	rdx,	[rbx+16]
mov	rcx,	[rbx+0]
mov	[rcx+16],	rax
mov	[rcx+24],	rdx
mov	rbx,	[rbx+0]
sub	rsp,	0
call	f18
add	rsp,	0
mov	rbx,	[rsp]
pop	rbx
ret
f9:
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
call	f18
add	rsp,	8
mov	rbx,	[rsp]
pop	rbx
ret
f10:
push	rbx
mov	rcx,	[rbx+0]
mov	qword	[rcx+0],	2
mov	rcx,	[rbx+0]
mov	qword	[rcx+8],	0
mov	rax,	[rbx+8]
mov	rdx,	[rbx+16]
mov	rcx,	[rbx+0]
mov	[rcx+16],	rax
mov	rcx,	[rbx+0]
mov	qword	[rcx+24],	1
mov	rbx,	[rbx+0]
sub	rsp,	0
call	f19
add	rsp,	0
mov	rbx,	[rsp]
pop	rbx
ret
f11:
push	rbx
mov	rcx,	[rbx+0]
mov	qword	[rcx+0],	1
mov	rax,	[rbx+16]
mov	rcx,	[rbx+0]
mov	[rcx+8],	rax
mov	rax,	[rbx+24]
mov	rcx,	[rbx+0]
mov	[rcx+16],	rax
mov	rax,	[rbx+8]
mov	rdx,	[rbx+16]
mov	rcx,	[rbx+0]
mov	[rcx+24],	rax
mov	rbx,	[rbx+0]
sub	rsp,	0
call	f19
add	rsp,	0
mov	rbx,	[rsp]
pop	rbx
ret
f12:
push	rdx
push	rbx
mov	rcx,	[rsp+8]
mov	rax,	[rcx-72]
xor	rdx,	rdx
mov	qword	rcx,	2
div	qword	rcx
mov	rax,	rdx
mov	[rsp-48],	rax
lea	rax,	[rsp-40]
mov	[rsp-56],	rax
mov	rcx,	[rsp+8]
lea	rax,	[rcx-24]
mov	[rsp-8],	rax
lea	rbx,	[rsp-40]
lea	rax,	[rel+f7]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-56]
sub	rsp,	56
call	f9
add	rsp,	56
mov	rbx,	[rsp]
mov	rcx,	[rsp+8]
mov	rax,	[rcx-72]
xor	rdx,	rdx
mov	qword	rcx,	2
div	qword	rcx
mov	rcx,	[rsp+8]
mov	[rcx-72],	rax
pop	rbx
pop	rdx
ret
f13:
push	rbx
b0:
mov	rax,	[rbx+0]
cmp	rax,	[rbx+8]
setl	al
movzx	rax,	al
cmp	rax,	0
je	b1
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
jmp	b0
b1:
pop	rbx
ret
f14:
push	rdx
push	rbx
mov	qword	[rsp-8],	0
lea	rbx,	[rsp-48]
mov	qword	[rbx+0],	0
mov	qword	[rbx+16],	1
mov	rbx,	[rsp]
mov	qword	[rsp-48],	1
mov	qword	[rsp-40],	21
lea	rax,	[rel+f20]
mov	[rsp-24],	rax
mov	[rsp-16],	rsp
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f13
add	rsp,	48
mov	rbx,	[rsp]
mov	rcx,	[rsp+8]
lea	rax,	[rcx-64]
mov	[rsp-32],	rax
mov	rax,	[rsp-8]
mov	[rsp-16],	rax
mov	qword	[rsp-24],	20
lea	rbx,	[rsp-32]
sub	rsp,	32
call	f21
add	rsp,	32
mov	rbx,	[rsp]
mov	rcx,	[rsp+8]
mov	rcx,	[rcx]
mov	rax,	[rcx+16]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f22
add	rsp,	16
mov	rbx,	[rsp]
pop	rbx
pop	rdx
ret
f15:
push	rbx
mov	rcx,	[rbx+0]
mov	qword	[rcx+0],	3
mov	rax,	[rbx+8]
mov	rcx,	[rbx+0]
mov	[rcx+16],	rax
mov	rbx,	[rbx+0]
sub	rsp,	0
call	f19
add	rsp,	0
mov	rbx,	[rsp]
pop	rbx
ret
f16:
push	rbx
mov	rcx,	[rbx+0]
mov	qword	[rcx+0],	1
mov	rax,	[rbx+16]
mov	rcx,	[rbx+0]
mov	[rcx+8],	rax
mov	rcx,	[rbx+0]
mov	qword	[rcx+16],	1
mov	rax,	[rbx+8]
mov	rdx,	[rbx+16]
mov	rcx,	[rbx+0]
mov	[rcx+24],	rax
mov	rbx,	[rbx+0]
sub	rsp,	0
call	f19
add	rsp,	0
mov	rbx,	[rsp]
pop	rbx
ret
f17:
push	rbx
mov	rax,	[rbx+0]
mov	rdx,	[rbx+8]
mov	[rsp-8],	rax
mov	rax,	[rbx+16]
mov	rdx,	[rbx+24]
mov	[rsp-16],	rax
mov	rax,	[rbx+8]
mov	[rsp-24],	rax
b2:
mov	rax,	[rsp-24]
cmp	rax,	0
setg	al
movzx	rax,	al
cmp	rax,	0
je	b3
mov	rcx,	[rsp-8]
mov	al,	[rcx+0]
mov	rcx,	[rsp-16]
mov	[rcx+0],	al
mov	rax,	[rsp-8]
add	rax,	1
mov	[rsp-8],	rax
mov	rax,	[rsp-16]
add	rax,	1
mov	[rsp-16],	rax
mov	rax,	[rsp-24]
sub	rax,	1
mov	[rsp-24],	rax
jmp	b2
b3:
pop	rbx
ret
f18:
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
f19:
push	rbx
mov	rax,	[rbx+0]
mov	rdx,	[rbx+8]
mov	rdi,	[rbx+16]
mov	rsi,	[rbx+24]
mov     r8,     [rbx+32]
mov     r9,     [rbx+40]
mov     r10,    [rbx+48]
syscall
pop	rbx
ret
f20:
push	rdx
push	rbx
mov	rax,	[rbx+0]
mov	[rsp-8],	rax
mov	rcx,	[rsp+8]
mov	rcx,	[rcx+8]
lea	rax,	[rcx-64]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f23
add	rsp,	16
mov	rbx,	[rsp]
cmp	rax,	1
sete	al
movzx	rax,	al
cmp	rax,	0
je	b4
mov	qword	[rsp-8],	124
mov	rcx,	[rsp+8]
mov	rcx,	[rcx+8]
mov	rcx,	[rcx]
mov	rax,	[rcx+16]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f9
add	rsp,	16
mov	rbx,	[rsp]
jmp	b5
b4:
mov	qword	[rsp-8],	46
mov	rcx,	[rsp+8]
mov	rcx,	[rcx+8]
mov	rcx,	[rcx]
mov	rax,	[rcx+16]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f9
add	rsp,	16
mov	rbx,	[rsp]
b5:
mov	rcx,	[rsp+8]
mov	rcx,	[rcx+8]
lea	rax,	[rcx-64]
mov	[rsp-24],	rax
mov	rax,	[rbx+0]
sub	rax,	1
mov	[rsp-16],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f23
add	rsp,	24
mov	rbx,	[rsp]
mov	[rsp-32],	rax
mov	rax,	[rbx+0]
mov	[rsp-16],	rax
lea	rbx,	[rsp-24]
sub	rsp,	32
call	f23
add	rsp,	32
mov	rbx,	[rsp]
xor	rdx,	rdx
mov	qword	rcx,	2
mul	qword	rcx
mov	[rsp-40],	rax
mov	rax,	[rsp-32]
add	rax,	[rsp-40]
mov	[rsp-32],	rax
mov	rax,	[rbx+0]
add	rax,	1
mov	[rsp-16],	rax
lea	rbx,	[rsp-24]
sub	rsp,	32
call	f23
add	rsp,	32
mov	rbx,	[rsp]
xor	rdx,	rdx
mov	qword	rcx,	4
mul	qword	rcx
mov	[rsp-40],	rax
mov	rax,	[rsp-32]
add	rax,	[rsp-40]
mov	[rsp-16],	rax
mov	rcx,	[rsp+8]
mov	rcx,	[rcx+8]
lea	rax,	[rcx-24]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f23
add	rsp,	24
mov	rbx,	[rsp]
mov	[rsp-8],	rax
mov	rcx,	[rsp+8]
mov	rcx,	[rcx+8]
lea	rax,	[rcx-64]
mov	[rsp-32],	rax
mov	rcx,	[rsp+8]
mov	rax,	[rcx-8]
mov	[rsp-16],	rax
mov	rax,	[rbx+0]
sub	rax,	1
mov	[rsp-24],	rax
lea	rbx,	[rsp-32]
sub	rsp,	32
call	f21
add	rsp,	32
mov	rbx,	[rsp]
mov	rax,	[rsp-8]
mov	rcx,	[rsp+8]
mov	[rcx-8],	rax
pop	rbx
pop	rdx
ret
f21:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+0]
mov	rdx,	[rcx+8]
add	rax,	[rbx+8]
mov	[rsp-8],	rax
mov	rax,	[rbx+16]
mov	rcx,	[rsp-8]
mov	[rcx+0],	al
pop	rbx
ret
f22:
push	rbx
mov	qword	[rsp-8],	10
mov	rax,	[rbx+0]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f9
add	rsp,	16
mov	rbx,	[rsp]
pop	rbx
ret
f23:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+0]
mov	rdx,	[rcx+8]
add	rax,	[rbx+8]
mov	[rsp-8],	rax
mov	rcx,	[rsp-8]
mov	al,	[rcx+0]
xor	rdx,	rdx
mov	qword	rcx,	256
div	qword	rcx
mov	rax,	rdx
pop	rbx
ret
SECTION .data
s1	db	'output.txt'
