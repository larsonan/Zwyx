global	_start
_start:
mov	qword	[rsp-8],	104
lea	rbx,	[rsp-8]
sub	rsp,	8
call	f1
add	rsp,	8
mov	rbx,	[rsp]
mov	qword	[rsp-8],	71
lea	rbx,	[rsp-8]
sub	rsp,	8
call	f1
add	rsp,	8
mov	rbx,	[rsp]
mov	qword	[rsp-8],	43
lea	rbx,	[rsp-8]
sub	rsp,	8
call	f1
add	rsp,	8
mov	rbx,	[rsp]
mov	qword	[rsp-8],	52
lea	rbx,	[rsp-8]
sub	rsp,	8
call	f1
add	rsp,	8
mov	rbx,	[rsp]
mov	rax,	60
mov	rdi,	0
syscall
f1:
push	rbx
mov	rax,	[rbx+0]
cmp	rax,	75
setge	al
movzx	rax,	al
mov	[rsp-8],	rax
mov	rax,	[rbx+0]
cmp	rax,	50
setl	al
movzx	rax,	al
mov	[rsp-16],	rax
mov	rax,	[rsp-8]
or	rax,	[rsp-16]
cmp	rax,	0
je	b0
mov	qword	[rsp-16],	s1
mov	qword	[rsp-8],	24
lea	rbx,	[rsp-32]
lea	rax,	[rel+f2]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-32]
sub	rsp,	32
call	f3
add	rsp,	32
mov	rbx,	[rsp]
jmp	b1
b0:
mov	qword	[rsp-16],	s2
mov	qword	[rsp-8],	20
lea	rbx,	[rsp-32]
lea	rax,	[rel+f2]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-32]
sub	rsp,	32
call	f3
add	rsp,	32
mov	rbx,	[rsp]
b1:
lea	rbx,	[rsp-32]
lea	rax,	[rel+f2]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
mov	qword	[rsp-48],	s3
mov	qword	[rsp-40],	19
lea	rax,	[rsp-32]
mov	[rsp-56],	rax
lea	rbx,	[rsp-56]
sub	rsp,	56
call	f4
add	rsp,	56
mov	rbx,	[rsp]
mov	rax,	[rbx+0]
cmp	rax,	32
setle	al
movzx	rax,	al
cmp	rax,	0
je	b2
mov	qword	[rsp-48],	s4
mov	qword	[rsp-40],	9
lea	rax,	[rsp-32]
mov	[rsp-56],	rax
lea	rbx,	[rsp-56]
sub	rsp,	56
call	f4
add	rsp,	56
mov	rbx,	[rsp]
b2:
mov	rax,	[rbx+0]
cmp	rax,	32
setg	al
movzx	rax,	al
mov	[rsp-40],	rax
mov	rax,	[rbx+0]
cmp	rax,	50
setl	al
movzx	rax,	al
mov	[rsp-48],	rax
mov	rax,	[rsp-40]
and	rax,	[rsp-48]
cmp	rax,	0
je	b3
mov	qword	[rsp-48],	s5
mov	qword	[rsp-40],	9
lea	rax,	[rsp-32]
mov	[rsp-56],	rax
lea	rbx,	[rsp-56]
sub	rsp,	56
call	f4
add	rsp,	56
mov	rbx,	[rsp]
b3:
mov	rax,	[rbx+0]
cmp	rax,	50
setge	al
movzx	rax,	al
mov	[rsp-40],	rax
mov	rax,	[rbx+0]
cmp	rax,	65
setl	al
movzx	rax,	al
mov	[rsp-48],	rax
mov	rax,	[rsp-40]
and	rax,	[rsp-48]
cmp	rax,	0
je	b4
mov	qword	[rsp-48],	s6
mov	qword	[rsp-40],	5
lea	rax,	[rsp-32]
mov	[rsp-56],	rax
lea	rbx,	[rsp-56]
sub	rsp,	56
call	f4
add	rsp,	56
mov	rbx,	[rsp]
b4:
mov	rax,	[rbx+0]
cmp	rax,	65
setge	al
movzx	rax,	al
mov	[rsp-40],	rax
mov	rax,	[rbx+0]
cmp	rax,	75
setl	al
movzx	rax,	al
mov	[rsp-48],	rax
mov	rax,	[rsp-40]
and	rax,	[rsp-48]
cmp	rax,	0
je	b5
mov	qword	[rsp-48],	s7
mov	qword	[rsp-40],	8
lea	rax,	[rsp-32]
mov	[rsp-56],	rax
lea	rbx,	[rsp-56]
sub	rsp,	56
call	f4
add	rsp,	56
mov	rbx,	[rsp]
b5:
mov	rax,	[rbx+0]
cmp	rax,	75
setge	al
movzx	rax,	al
mov	[rsp-40],	rax
mov	rax,	[rbx+0]
cmp	rax,	90
setl	al
movzx	rax,	al
mov	[rsp-48],	rax
mov	rax,	[rsp-40]
and	rax,	[rsp-48]
cmp	rax,	0
je	b6
mov	qword	[rsp-48],	s8
mov	qword	[rsp-40],	8
lea	rax,	[rsp-32]
mov	[rsp-56],	rax
lea	rbx,	[rsp-56]
sub	rsp,	56
call	f4
add	rsp,	56
mov	rbx,	[rsp]
b6:
mov	rax,	[rbx+0]
cmp	rax,	90
setge	al
movzx	rax,	al
cmp	rax,	0
je	b7
mov	qword	[rsp-48],	s9
mov	qword	[rsp-40],	10
lea	rax,	[rsp-32]
mov	[rsp-56],	rax
lea	rbx,	[rsp-56]
sub	rsp,	56
call	f4
add	rsp,	56
mov	rbx,	[rsp]
b7:
lea	rax,	[rsp-32]
mov	[rsp-40],	rax
lea	rbx,	[rsp-40]
sub	rsp,	40
call	f5
add	rsp,	40
mov	rbx,	[rsp]
pop	rbx
ret
f2:
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
call	f6
add	rsp,	80
mov	rbx,	[rsp]
pop	rbx
pop	rdx
ret
f3:
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
f4:
push	rbx
mov	rax,	[rbx+8]
mov	rdx,	[rbx+16]
mov	rcx,	[rbx+0]
mov	[rcx+16],	rax
mov	[rcx+24],	rdx
mov	rbx,	[rbx+0]
sub	rsp,	0
call	f3
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
call	f7
add	rsp,	16
mov	rbx,	[rsp]
pop	rbx
ret
f6:
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
call	f8
add	rsp,	0
mov	rbx,	[rsp]
pop	rbx
ret
f7:
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
call	f3
add	rsp,	8
mov	rbx,	[rsp]
pop	rbx
ret
f8:
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
s1	db	'I am not going outside. '
s2	db	'I am going outside. '
s3	db	'The temperature is '
s4	db	'freezing!'
s5	db	'too cold.'
s6	db	'okay.'
s7	db	'perfect.'
s8	db	'too hot.'
s9	db	'scorching!'
