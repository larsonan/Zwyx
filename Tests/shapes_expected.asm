global	_start
_start:
lea	rbx,	[rsp-32]
lea	rax,	[rel+f1]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
mov	qword	[rsp-16],	6
mov	qword	[rsp-8],	7
lea	rbx,	[rsp-64]
lea	rax,	[rel+f2]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
mov	qword	[rsp-48],	6
mov	qword	[rsp-40],	7
lea	rbx,	[rsp-88]
lea	rax,	[rel+f3]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
mov	qword	[rsp-72],	2
lea	rbx,	[rsp-144]
lea	rax,	[rel+f4]
mov	[rbx+16],	rax
mov	[rbx+24],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-112]
mov	[rsp-160],	rax
mov	qword	[rsp-152],	24
lea	rax,	[rsp-144]
mov	[rsp-168],	rax
lea	rbx,	[rsp-168]
sub	rsp,	168
call	f5
add	rsp,	168
mov	rbx,	[rsp]
lea	rax,	[rsp-144]
mov	[rsp-160],	rax
lea	rax,	[rsp-32]
mov	[rsp-152],	rax
lea	rbx,	[rsp-160]
sub	rsp,	160
call	f6
add	rsp,	160
mov	rbx,	[rsp]
lea	rax,	[rsp-64]
mov	[rsp-152],	rax
lea	rbx,	[rsp-160]
sub	rsp,	160
call	f6
add	rsp,	160
mov	rbx,	[rsp]
lea	rax,	[rsp-88]
mov	[rsp-152],	rax
lea	rbx,	[rsp-160]
sub	rsp,	160
call	f6
add	rsp,	160
mov	rbx,	[rsp]
lea	rax,	[rel+f7]
mov	[rsp-160],	rax
mov	[rsp-152],	rsp
lea	rax,	[rsp-144]
mov	[rsp-168],	rax
lea	rbx,	[rsp-168]
sub	rsp,	168
call	f8
add	rsp,	168
mov	rbx,	[rsp]
mov	rax,	60
mov	rdi,	0
syscall
f1:
push	rdx
push	rbx
mov	rcx,	[rsp+8]
mov	rax,	[rcx+16]
mov	rcx,	[rsp+8]
xor	rdx,	rdx
mul	qword	[rcx+24]
pop	rbx
pop	rdx
ret
f2:
push	rdx
push	rbx
mov	rcx,	[rsp+8]
mov	rax,	[rcx+16]
mov	rcx,	[rsp+8]
xor	rdx,	rdx
mul	qword	[rcx+24]
xor	rdx,	rdx
mov	qword	rcx,	2
div	qword	rcx
pop	rbx
pop	rdx
ret
f3:
push	rdx
push	rbx
mov	rcx,	[rsp+8]
mov	rax,	[rcx+16]
mov	rcx,	[rsp+8]
xor	rdx,	rdx
mul	qword	[rcx+16]
xor	rdx,	rdx
mov	qword	rcx,	3
mul	qword	rcx
pop	rbx
pop	rdx
ret
f4:
push	rdx
push	rbx
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
mov	[rsp-16],	rax
mov	rax,	[rbx+8]
mov	[rsp-8],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f9
add	rsp,	24
mov	rbx,	[rsp]
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
add	rax,	1
mov	rcx,	[rbx+0]
mov	[rcx+8],	rax
pop	rbx
pop	rdx
ret
f5:
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
f6:
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
f7:
push	rdx
push	rbx
lea	rbx,	[rsp-32]
lea	rax,	[rel+f10]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
mov	[rsp-40],	rbx
lea	rbx,	[rsp-40]
sub	rsp,	40
call	f11
add	rsp,	40
mov	rbx,	[rsp]
mov	[rsp-40],	rax
lea	rax,	[rsp-32]
mov	[rsp-48],	rax
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f12
add	rsp,	48
mov	rbx,	[rsp]
lea	rax,	[rsp-32]
mov	[rsp-40],	rax
lea	rbx,	[rsp-40]
sub	rsp,	40
call	f13
add	rsp,	40
mov	rbx,	[rsp]
pop	rbx
pop	rdx
ret
f8:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+0]
mov	rdx,	[rcx+8]
mov	[rsp-8],	rax
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
mov	[rsp-16],	rax
b0:
mov	rax,	[rsp-16]
cmp	rax,	0
setg	al
movzx	rax,	al
cmp	rax,	0
je	b1
mov	rcx,	[rsp-8]
mov	rax,	[rcx+0]
mov	[rsp-24],	rax
mov	rdx,	[rbx+16]
mov	rax,	[rbx+8]
mov	rbx,	[rsp-24]
sub	rsp,	24
call	rax
add	rsp,	24
mov	rbx,	[rsp]
mov	rax,	[rsp-8]
add	rax,	8
mov	[rsp-8],	rax
mov	rax,	[rsp-16]
sub	rax,	1
mov	[rsp-16],	rax
jmp	b0
b1:
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
mov	qword	rcx,	8
mul	qword	rcx
mov	[rsp-24],	rax
mov	rax,	[rsp-16]
add	rax,	[rsp-24]
mov	[rsp-8],	rax
mov	rax,	[rbx+16]
mov	rcx,	[rsp-8]
mov	[rcx+0],	rax
pop	rbx
ret
f10:
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
call	f14
add	rsp,	80
mov	rbx,	[rsp]
pop	rbx
pop	rdx
ret
f11:
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
f12:
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
b2:
mov	rax,	[rbx+8]
cmp	rax,	0
setg	al
movzx	rax,	al
cmp	rax,	0
je	b3
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
jmp	b2
b3:
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
call	f15
add	rsp,	64
mov	rbx,	[rsp]
pop	rbx
ret
f13:
push	rbx
mov	qword	[rsp-8],	10
mov	rax,	[rbx+0]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f16
add	rsp,	16
mov	rbx,	[rsp]
pop	rbx
ret
f14:
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
call	f17
add	rsp,	0
mov	rbx,	[rsp]
pop	rbx
ret
f15:
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
f16:
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
call	f15
add	rsp,	8
mov	rbx,	[rsp]
pop	rbx
ret
f17:
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
SECTION .data
