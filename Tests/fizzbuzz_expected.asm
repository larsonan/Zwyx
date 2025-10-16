global	_start
_start:
lea	rbx,	[rsp-32]
lea	rax,	[rel+f1]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-72]
mov	qword	[rbx+8],	0
lea	rax,	[rel+f2]
mov	[rbx+24],	rax
mov	[rbx+32],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-32]
mov	[rsp-72],	rax
mov	qword	[rsp-56],	100
lea	rbx,	[rsp-72]
sub	rsp,	72
call	f3
add	rsp,	72
mov	rbx,	[rsp]
lea	rax,	[rsp-32]
mov	[rsp-72],	rax
mov	qword	[rsp-64],	0
mov	qword	[rsp-56],	100
lea	rax,	[rel+f4]
mov	[rsp-48],	rax
mov	[rsp-40],	rsp
lea	rbx,	[rsp-72]
sub	rsp,	72
call	f3
add	rsp,	72
mov	rbx,	[rsp]
mov	rax,	60
mov	rdi,	0
syscall
f1:
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
call	f5
add	rsp,	80
mov	rbx,	[rsp]
pop	rbx
pop	rdx
ret
f2:
push	rdx
push	rbx
mov	qword	[rbx+8],	3
mov	qword	[rbx+16],	s1
mov	qword	[rbx+24],	4
sub	rsp,	0
call	f6
add	rsp,	0
mov	rbx,	[rsp]
mov	qword	[rbx+8],	5
mov	qword	[rbx+16],	s2
mov	qword	[rbx+24],	4
sub	rsp,	0
call	f6
add	rsp,	0
mov	rbx,	[rsp]
pop	rbx
pop	rdx
ret
f3:
push	rbx
mov	[rsp-48],	rbx
mov	rax,	[rbx+8]
mov	[rsp-16],	rax
b0:
mov	rax,	[rsp-16]
cmp	rax,	[rbx+16]
setl	al
movzx	rax,	al
cmp	rax,	0
je	b1
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
je	b2
mov	rax,	[rsp-16]
mov	[rsp-56],	rax
mov	rax,	[rbx+0]
mov	[rsp-64],	rax
lea	rbx,	[rsp-64]
sub	rsp,	64
call	f7
add	rsp,	64
mov	rbx,	[rsp]
b2:
mov	rax,	[rbx+0]
mov	[rsp-56],	rax
lea	rbx,	[rsp-56]
sub	rsp,	56
call	f8
add	rsp,	56
mov	rbx,	[rsp]
mov	rax,	[rsp-16]
add	rax,	1
mov	[rsp-16],	rax
jmp	b0
b1:
pop	rbx
ret
f4:
push	rdx
push	rbx
mov	qword	[rbx+8],	3
mov	qword	[rbx+16],	s3
mov	qword	[rbx+24],	4
sub	rsp,	0
call	f6
add	rsp,	0
mov	rbx,	[rsp]
mov	qword	[rbx+8],	5
mov	qword	[rbx+16],	s4
mov	qword	[rbx+24],	4
sub	rsp,	0
call	f6
add	rsp,	0
mov	rbx,	[rsp]
mov	qword	[rbx+8],	7
mov	qword	[rbx+16],	s5
mov	qword	[rbx+24],	4
sub	rsp,	0
call	f6
add	rsp,	0
mov	rbx,	[rsp]
mov	qword	[rbx+8],	11
mov	qword	[rbx+16],	s6
mov	qword	[rbx+24],	4
sub	rsp,	0
call	f6
add	rsp,	0
mov	rbx,	[rsp]
pop	rbx
pop	rdx
ret
f5:
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
call	f9
add	rsp,	0
mov	rbx,	[rsp]
pop	rbx
ret
f6:
push	rbx
mov	rax,	[rbx+32]
xor	rdx,	rdx
div	qword	[rbx+8]
mov	rax,	rdx
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b3
mov	rax,	[rbx+16]
mov	rdx,	[rbx+24]
mov	[rsp-16],	rax
mov	[rsp-8],	rdx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f10
add	rsp,	24
mov	rbx,	[rsp]
mov	qword	[rbx+40],	1
b3:
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
b4:
mov	rax,	[rbx+8]
cmp	rax,	0
setg	al
movzx	rax,	al
cmp	rax,	0
je	b5
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
jmp	b4
b5:
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
call	f11
add	rsp,	64
mov	rbx,	[rsp]
pop	rbx
ret
f8:
push	rbx
mov	qword	[rsp-8],	10
mov	rax,	[rbx+0]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f12
add	rsp,	16
mov	rbx,	[rsp]
pop	rbx
ret
f9:
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
f10:
push	rbx
mov	rax,	[rbx+8]
mov	rdx,	[rbx+16]
mov	rcx,	[rbx+0]
mov	[rcx+16],	rax
mov	[rcx+24],	rdx
mov	rbx,	[rbx+0]
sub	rsp,	0
call	f11
add	rsp,	0
mov	rbx,	[rsp]
pop	rbx
ret
f11:
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
f12:
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
call	f11
add	rsp,	8
mov	rbx,	[rsp]
pop	rbx
ret
SECTION .data
s1	db	'fizz'
s2	db	'buzz'
s3	db	'fizz'
s4	db	'buzz'
s5	db	'fuzz'
s6	db	'jazz'
