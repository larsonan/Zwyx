global	_start
_start:
mov	qword	[rsp-48],	s1
mov	qword	[rsp-40],	13
lea	rax,	[rsp-32]
mov	[rsp-56],	rax
lea	rbx,	[rsp-32]
lea	rax,	[rel+f1]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-56]
sub	rsp,	56
call	f2
add	rsp,	56
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
call	f3
add	rsp,	80
mov	rbx,	[rsp]
pop	rbx
pop	rdx
ret
f2:
push	rbx
mov	rax,	[rbx+8]
mov	rdx,	[rbx+16]
mov	[rsp-16],	rax
mov	[rsp-8],	rdx
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f4
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
f3:
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
call	f6
add	rsp,	0
mov	rbx,	[rsp]
pop	rbx
ret
f4:
push	rbx
mov	rax,	[rbx+8]
mov	rdx,	[rbx+16]
mov	rcx,	[rbx+0]
mov	[rcx+16],	rax
mov	[rcx+24],	rdx
mov	rbx,	[rbx+0]
sub	rsp,	0
call	f7
add	rsp,	0
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
call	f8
add	rsp,	16
mov	rbx,	[rsp]
pop	rbx
ret
f6:
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
f7:
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
call	f7
add	rsp,	8
mov	rbx,	[rsp]
pop	rbx
ret
SECTION .data
s1	db	'Hello, World!'
