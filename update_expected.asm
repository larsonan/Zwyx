global	_start
_start:
lea	rbx,	[rsp-32]
lea	rax,	[rel+f8]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-32]
mov	[rsp-64],	rax
mov	qword	[rsp-56],	500
mov	qword	[rsp-48],	s3
mov	qword	[rsp-40],	9
lea	rbx,	[rsp-64]
sub	rsp,	64
call	f16
add	rsp,	64
mov	rbx,	[rsp]
lea	rax,	[rsp-50]
mov	[rsp-80],	rax
lea	rax,	[rsp-72]
mov	[rsp-88],	rax
lea	rbx,	[rsp-88]
sub	rsp,	88
call	f9
add	rsp,	88
mov	rbx,	[rsp]
lea	rax,	[rsp-72]
mov	[rsp-80],	rax
lea	rbx,	[rsp-112]
lea	rax,	[rel+f13]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-112]
mov	[rsp-144],	rax
mov	qword	[rsp-136],	5
mov	qword	[rsp-128],	s4
mov	qword	[rsp-120],	7
lea	rbx,	[rsp-144]
sub	rsp,	144
call	f16
add	rsp,	144
mov	rbx,	[rsp]
mov	rax,	[rsp-72]
mov	rdx,	[rsp-64]
mov	[rsp-128],	rax
mov	[rsp-120],	rdx
lea	rbx,	[rsp-128]
sub	rsp,	128
call	f17
add	rsp,	128
mov	rbx,	[rsp]
mov	rax,	[rsp-72]
mov	rdx,	[rsp-64]
mov	[rsp-144],	rax
mov	[rsp-136],	rdx
lea	rbx,	[rsp-144]
lea	rax,	[rel+f8]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-144]
sub	rsp,	144
call	f2
add	rsp,	144
mov	rbx,	[rsp]
mov	rax,	60
mov	rdi,	0
syscall
f1:
push	rbx
mov	qword	[rsp-32],	1
mov	rax,	[rbx+8]
mov	[rsp-24],	rax
mov	qword	[rsp-16],	1
mov	rax,	[rbx+0]
mov	rdx,	[rbx+8]
mov	[rsp-8],	rax
lea	rbx,	[rsp-32]
sub	rsp,	32
call	f0
add	rsp,	32
mov	rbx,	[rsp]
pop	rbx
ret
f2:
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
f3:
push	rbx
mov	rax,	[rbx+8]
mov	rdx,	[rbx+16]
mov	rcx,	[rbx+0]
mov	[rcx+16],	rax
mov	[rcx+24],	rdx
mov	rbx,	[rbx+0]
sub	rsp,	0
call	f2
add	rsp,	0
mov	rbx,	[rsp]
pop	rbx
ret
f4:
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
call	f2
add	rsp,	8
mov	rbx,	[rsp]
pop	rbx
ret
f5:
push	rbx
mov	qword	[rsp-8],	10
mov	rax,	[rbx+0]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f4
add	rsp,	16
mov	rbx,	[rsp]
pop	rbx
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
call	f3
add	rsp,	24
mov	rbx,	[rsp]
mov	rax,	[rbx+0]
mov	[rsp-8],	rax
lea	rbx,	[rsp-8]
sub	rsp,	8
call	f5
add	rsp,	8
mov	rbx,	[rsp]
pop	rbx
ret
f7:
push	rbx
lea	rax,	[rsp-48]
mov	[rsp-56],	rax
mov	rax,	[rsp-56]
add	rax,	40
mov	[rsp-56],	rax
mov	rax,	[rbx+8]
xor	rdx,	rdx
mov	qword	rcx,	10
div	qword	rcx
mov	rax,	rdx
add	rax,	48
mov	rcx,	[rsp-56]
mov	[rcx+0],	al
mov	rax,	[rbx+8]
xor	rdx,	rdx
mov	qword	rcx,	10
div	qword	rcx
mov	[rbx+8],	rax
mov	rax,	[rsp-56]
sub	rax,	1
mov	[rsp-56],	rax
mov	qword	[rsp-64],	1
b0:
mov	rax,	[rbx+8]
cmp	rax,	0
setg	al
movzx	rax,	al
cmp	rax,	0
je	b1
mov	rax,	[rbx+8]
xor	rdx,	rdx
mov	qword	rcx,	10
div	qword	rcx
mov	rax,	rdx
add	rax,	48
mov	rcx,	[rsp-56]
mov	[rcx+0],	al
mov	rax,	[rbx+8]
xor	rdx,	rdx
mov	qword	rcx,	10
div	qword	rcx
mov	[rbx+8],	rax
mov	rax,	[rsp-56]
sub	rax,	1
mov	[rsp-56],	rax
mov	rax,	[rsp-64]
add	rax,	1
mov	[rsp-64],	rax
jmp	b0
b1:
mov	rax,	[rsp-56]
add	rax,	1
mov	rcx,	[rbx+0]
mov	[rcx+16],	rax
mov	[rcx+24],	rdx
mov	rax,	[rsp-64]
mov	rcx,	[rbx+0]
mov	[rcx+24],	rax
mov	rbx,	[rbx+0]
sub	rsp,	64
call	f2
add	rsp,	64
mov	rbx,	[rsp]
pop	rbx
ret
f8:
push	rdx
push	rbx
mov	rcx,	[rsp+8]
mov	rax,	[rcx+16]
mov	rdx,	[rcx+24]
mov	[rsp-16],	rax
mov	[rsp-8],	rdx
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f1
add	rsp,	16
mov	rbx,	[rsp]
pop	rbx
pop	rdx
ret
f9:
push	rbx
mov	rax,	[rbx+8]
mov	rcx,	[rbx+0]
mov	[rcx+0],	rax
mov	[rcx+8],	rdx
mov	rcx,	[rbx+0]
mov	qword	[rcx+8],	0
pop	rbx
ret
f10:
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
f11:
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
f12:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
pop	rbx
ret
f13:
push	rdx
push	rbx
mov	rcx,	[rsp+8]
mov	rax,	[rcx+16]
mov	rdx,	[rcx+24]
mov	[rsp-8],	rax
mov	rcx,	[rbx+32]
mov	rax,	[rcx+0]
mov	rdx,	[rcx+8]
mov	[rsp-16],	rax
mov	rax,	[rsp-16]
mov	rcx,	[rbx+32]
add	rax,	[rcx+8]
mov	[rsp-16],	rax
mov	rcx,	[rsp+8]
mov	rax,	[rcx+24]
mov	[rsp-24],	rax
mov	rcx,	[rbx+32]
mov	rax,	[rcx+8]
add	rax,	[rsp-24]
mov	rcx,	[rbx+32]
mov	[rcx+8],	rax
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
mov	rax,	[rsp-16]
add	rax,	1
mov	[rsp-16],	rax
mov	rax,	[rsp-8]
add	rax,	1
mov	[rsp-8],	rax
mov	rax,	[rsp-24]
sub	rax,	1
mov	[rsp-24],	rax
jmp	b2
b3:
pop	rbx
pop	rdx
ret
f14:
push	rbx
mov	rcx,	[rbx+0]
mov	rcx,	[rcx+0]
mov	rax,	[rcx+0]
mov	rcx,	[rbx+0]
cmp	rax,	[rcx+8]
sete	al
movzx	rax,	al
pop	rbx
ret
f15:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
mov	rcx,	[rbx+0]
mov	rcx,	[rcx+0]
mov	[rcx+0],	rax
pop	rbx
ret
f16:
push	rbx
mov	rax,	[rbx+16]
mov	rdx,	[rbx+24]
mov	[rsp-16],	rax
mov	[rsp-8],	rdx
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f3
add	rsp,	24
mov	rbx,	[rsp]
mov	qword	[rsp-16],	s1
mov	qword	[rsp-8],	12
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f3
add	rsp,	24
mov	rbx,	[rsp]
mov	rax,	[rbx+8]
mov	[rsp-8],	rax
mov	rax,	[rbx+0]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f7
add	rsp,	16
mov	rbx,	[rsp]
mov	qword	[rsp-16],	s2
mov	qword	[rsp-8],	13
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f3
add	rsp,	24
mov	rbx,	[rsp]
mov	rax,	[rbx+0]
mov	[rsp-8],	rax
lea	rbx,	[rsp-8]
sub	rsp,	8
call	f5
add	rsp,	8
mov	rbx,	[rsp]
pop	rbx
ret
f17:
push	rbx
lea	rax,	[rbx+0]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f12
add	rsp,	16
mov	rbx,	[rsp]
mov	[rsp-8],	rax
mov	qword	[rsp-16],	0
b4:
mov	rax,	[rsp-16]
cmp	rax,	[rsp-8]
setl	al
movzx	rax,	al
cmp	rax,	0
je	b5
mov	rax,	[rsp-16]
mov	[rsp-24],	rax
lea	rax,	[rbx+0]
mov	[rsp-32],	rax
lea	rbx,	[rsp-32]
sub	rsp,	32
call	f11
add	rsp,	32
mov	rbx,	[rsp]
cmp	rax,	46
sete	al
movzx	rax,	al
cmp	rax,	0
je	b6
lea	rax,	[rbx+0]
mov	[rsp-40],	rax
mov	qword	[rsp-24],	33
mov	rax,	[rsp-16]
mov	[rsp-32],	rax
lea	rbx,	[rsp-40]
sub	rsp,	40
call	f10
add	rsp,	40
mov	rbx,	[rsp]
b6:
mov	rax,	[rsp-16]
add	rax,	1
mov	[rsp-16],	rax
jmp	b4
b5:
pop	rbx
ret
f0:
mov	rax,	[rbx+0]
mov	rdx,	[rbx+8]
mov	rdi,	[rbx+16]
mov	rsi,	[rbx+24]
syscall
ret
SECTION .data
s1	db	'. You have $'
s2	db	' in the bank.'
s3	db	'Attention'
s4	db	'Warning'
