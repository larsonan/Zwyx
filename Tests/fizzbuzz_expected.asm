global	_start
_start:
lea	rbx,	[rsp-32]
lea	rax,	[rel+f12]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-72]
mov	qword	[rbx+8],	0
lea	rax,	[rel+f27]
mov	[rbx+24],	rax
mov	[rbx+32],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-32]
mov	[rsp-72],	rax
mov	qword	[rsp-56],	100
lea	rbx,	[rsp-72]
sub	rsp,	72
call	f26
add	rsp,	72
mov	rbx,	[rsp]
lea	rax,	[rsp-32]
mov	[rsp-72],	rax
mov	qword	[rsp-64],	0
mov	qword	[rsp-56],	100
lea	rax,	[rel+f28]
mov	[rsp-48],	rax
mov	[rsp-40],	rsp
lea	rbx,	[rsp-72]
sub	rsp,	72
call	f26
add	rsp,	72
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
mov	qword	[rsp-32],	0
mov	rax,	[rbx+16]
mov	[rsp-24],	rax
mov	qword	[rsp-16],	2
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
f3:
push	rbx
mov	qword	[rsp-32],	2
mov	qword	[rsp-24],	0
mov	rax,	[rbx+0]
mov	rdx,	[rbx+8]
mov	[rsp-16],	rax
mov	qword	[rsp-8],	1
lea	rbx,	[rsp-32]
sub	rsp,	32
call	f0
add	rsp,	32
mov	rbx,	[rsp]
pop	rbx
ret
f4:
push	rbx
mov	qword	[rsp-32],	3
mov	rax,	[rbx+0]
mov	[rsp-16],	rax
lea	rbx,	[rsp-32]
sub	rsp,	32
call	f0
add	rsp,	32
mov	rbx,	[rsp]
pop	rbx
ret
f5:
push	rbx
mov	qword	[rsp-32],	1
mov	rax,	[rbx+8]
mov	[rsp-24],	rax
mov	rax,	[rbx+16]
mov	[rsp-16],	rax
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
f6:
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
f7:
push	rbx
mov	rax,	[rbx+8]
mov	rdx,	[rbx+16]
mov	rcx,	[rbx+0]
mov	[rcx+16],	rax
mov	[rcx+24],	rdx
mov	rbx,	[rbx+0]
sub	rsp,	0
call	f6
add	rsp,	0
mov	rbx,	[rsp]
pop	rbx
ret
f8:
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
call	f6
add	rsp,	8
mov	rbx,	[rsp]
pop	rbx
ret
f9:
push	rbx
mov	qword	[rsp-8],	10
mov	rax,	[rbx+0]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f8
add	rsp,	16
mov	rbx,	[rsp]
pop	rbx
ret
f10:
push	rbx
mov	rax,	[rbx+8]
mov	rdx,	[rbx+16]
mov	[rsp-16],	rax
mov	[rsp-8],	rdx
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f7
add	rsp,	24
mov	rbx,	[rsp]
mov	rax,	[rbx+0]
mov	[rsp-8],	rax
lea	rbx,	[rsp-8]
sub	rsp,	8
call	f9
add	rsp,	8
mov	rbx,	[rsp]
pop	rbx
ret
f11:
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
call	f6
add	rsp,	64
mov	rbx,	[rsp]
pop	rbx
ret
f12:
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
f13:
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
f14:
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
f15:
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
f16:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
pop	rbx
ret
f17:
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
f18:
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
f19:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
mov	rcx,	[rbx+0]
mov	rcx,	[rcx+0]
mov	[rcx+0],	rax
pop	rbx
ret
f20:
push	rbx
lea	rax,	[rsp-1]
mov	[rsp-32],	rax
mov	qword	[rsp-24],	1
mov	qword	[rsp-16],	1
lea	rbx,	[rsp-32]
sub	rsp,	32
call	f2
add	rsp,	32
mov	rbx,	[rsp]
mov	qword	[rsp-16],	0
mov	rax,	[rsp-16]
mov	al,	[rsp-1]
pop	rbx
ret
f21:
push	rbx
mov	rax,	[rbx+0]
mov	[rbx+24],	rax
b4:
mov	rax,	[rbx+24]
cmp	rax,	[rbx+8]
setl	al
movzx	rax,	al
cmp	rax,	0
je	b5
mov	rdx,	[rbx+40]
mov	rax,	[rbx+32]
lea	rbx,	[rbx+0]
sub	rsp,	0
call	rax
add	rsp,	0
mov	rbx,	[rsp]
mov	rax,	[rbx+24]
add	rax,	[rbx+16]
mov	[rbx+24],	rax
jmp	b4
b5:
pop	rbx
ret
f22:
push	rbx
lea	rax,	[rsp-20]
mov	[rsp-56],	rax
mov	qword	[rsp-48],	20
lea	rax,	[rsp-40]
mov	[rsp-64],	rax
lea	rbx,	[rsp-64]
sub	rsp,	64
call	f13
add	rsp,	64
mov	rbx,	[rsp]
lea	rax,	[rsp-40]
mov	[rsp-48],	rax
lea	rbx,	[rsp-80]
lea	rax,	[rel+f17]
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
call	f7
add	rsp,	104
mov	rbx,	[rsp]
mov	qword	[rsp-88],	0
lea	rax,	[rsp-80]
mov	[rsp-96],	rax
lea	rbx,	[rsp-96]
sub	rsp,	96
call	f8
add	rsp,	96
mov	rbx,	[rsp]
mov	rax,	[rsp-40]
mov	rdx,	[rsp-32]
mov	[rsp-40],	rax
mov	[rsp-32],	rdx
lea	rbx,	[rsp-40]
sub	rsp,	40
call	f3
add	rsp,	40
mov	rbx,	[rsp]
mov	rcx,	[rbx+0]
mov	[rcx+16],	rax
pop	rbx
ret
f23:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+16]
mov	[rsp-8],	rax
lea	rbx,	[rsp-8]
sub	rsp,	8
call	f4
add	rsp,	8
mov	rbx,	[rsp]
pop	rbx
ret
f24:
push	rdx
push	rbx
mov	rcx,	[rbx+32]
mov	rax,	[rcx+16]
mov	[rsp-8],	rax
mov	rcx,	[rsp+8]
mov	rax,	[rcx+16]
mov	rdx,	[rcx+24]
mov	[rsp-24],	rax
mov	[rsp-16],	rdx
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f5
add	rsp,	24
mov	rbx,	[rsp]
pop	rbx
pop	rdx
ret
f25:
push	rbx
mov	rax,	[rbx+32]
xor	rdx,	rdx
div	qword	[rbx+8]
mov	rax,	rdx
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b6
mov	rax,	[rbx+16]
mov	rdx,	[rbx+24]
mov	[rsp-16],	rax
mov	[rsp-8],	rdx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f7
add	rsp,	24
mov	rbx,	[rsp]
mov	qword	[rbx+40],	1
b6:
pop	rbx
ret
f26:
push	rbx
mov	[rsp-48],	rbx
mov	rax,	[rbx+8]
mov	[rsp-16],	rax
b7:
mov	rax,	[rsp-16]
cmp	rax,	[rbx+16]
setl	al
movzx	rax,	al
cmp	rax,	0
je	b8
mov	qword	[rsp-8],	0
mov	rdx,	[rbx+32]
mov	rax,	[rbx+24]
lea	rbx,	[rsp-48]
sub	rsp,	48
call	rax
add	rsp,	48
mov	rbx,	[rsp]
mov	rax,	[rsp-8]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b9
mov	rax,	[rsp-16]
mov	[rsp-56],	rax
mov	rax,	[rbx+0]
mov	[rsp-64],	rax
lea	rbx,	[rsp-64]
sub	rsp,	64
call	f11
add	rsp,	64
mov	rbx,	[rsp]
b9:
mov	rax,	[rbx+0]
mov	[rsp-56],	rax
lea	rbx,	[rsp-56]
sub	rsp,	56
call	f9
add	rsp,	56
mov	rbx,	[rsp]
mov	rax,	[rsp-16]
add	rax,	1
mov	[rsp-16],	rax
jmp	b7
b8:
pop	rbx
ret
f27:
push	rdx
push	rbx
mov	qword	[rbx+8],	3
mov	qword	[rbx+16],	s1
mov	qword	[rbx+24],	4
sub	rsp,	0
call	f25
add	rsp,	0
mov	rbx,	[rsp]
mov	qword	[rbx+8],	5
mov	qword	[rbx+16],	s2
mov	qword	[rbx+24],	4
sub	rsp,	0
call	f25
add	rsp,	0
mov	rbx,	[rsp]
pop	rbx
pop	rdx
ret
f28:
push	rdx
push	rbx
mov	qword	[rbx+8],	3
mov	qword	[rbx+16],	s3
mov	qword	[rbx+24],	4
sub	rsp,	0
call	f25
add	rsp,	0
mov	rbx,	[rsp]
mov	qword	[rbx+8],	5
mov	qword	[rbx+16],	s4
mov	qword	[rbx+24],	4
sub	rsp,	0
call	f25
add	rsp,	0
mov	rbx,	[rsp]
mov	qword	[rbx+8],	7
mov	qword	[rbx+16],	s5
mov	qword	[rbx+24],	4
sub	rsp,	0
call	f25
add	rsp,	0
mov	rbx,	[rsp]
mov	qword	[rbx+8],	11
mov	qword	[rbx+16],	s6
mov	qword	[rbx+24],	4
sub	rsp,	0
call	f25
add	rsp,	0
mov	rbx,	[rsp]
pop	rbx
pop	rdx
ret
f0:
mov	rax,	[rbx+0]
mov	rdx,	[rbx+8]
mov	rdi,	[rbx+16]
mov	rsi,	[rbx+24]
syscall
ret
SECTION .data
s1	db	'fizz'
s2	db	'buzz'
s3	db	'fizz'
s4	db	'buzz'
s5	db	'fuzz'
s6	db	'jazz'
