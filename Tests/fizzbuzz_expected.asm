global	_start
_start:
mov	rcx,	static_mem
lea	rbx,	[rcx+400]
lea	rax,	[rel+f36]
mov	[rbx+40],	rax
mov	[rbx+48],	rbx
lea	rax,	[rel+f38]
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
lea	rax,	[rel+f41]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
lea	rax,	[rel+f42]
mov	[rbx+16],	rax
mov	[rbx+24],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-32]
lea	rax,	[rel+f13]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-72]
mov	qword	[rbx+8],	0
lea	rax,	[rel+f47]
mov	[rbx+24],	rax
mov	[rbx+32],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-32]
mov	[rsp-72],	rax
mov	qword	[rsp-56],	100
lea	rbx,	[rsp-72]
sub	rsp,	72
call	f46
add	rsp,	72
mov	rbx,	[rsp]
lea	rax,	[rsp-32]
mov	[rsp-72],	rax
mov	qword	[rsp-64],	0
mov	qword	[rsp-56],	100
lea	rax,	[rel+f48]
mov	[rsp-48],	rax
mov	[rsp-40],	rsp
lea	rbx,	[rsp-72]
sub	rsp,	72
call	f46
add	rsp,	72
mov	rbx,	[rsp]
mov	rax,	60
mov	rdi,	0
syscall
f1:
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
f2:
push	rbx
mov	qword	[rsp-56],	0
mov	rax,	[rbx+16]
mov	[rsp-48],	rax
mov	qword	[rsp-40],	2
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
f3:
push	rbx
mov	qword	[rsp-56],	2
mov	qword	[rsp-48],	0
mov	rax,	[rbx+0]
mov	rdx,	[rbx+8]
mov	[rsp-40],	rax
mov	qword	[rsp-32],	1
lea	rbx,	[rsp-56]
sub	rsp,	56
call	f0
add	rsp,	56
mov	rbx,	[rsp]
pop	rbx
ret
f4:
push	rbx
mov	qword	[rsp-56],	3
mov	rax,	[rbx+0]
mov	[rsp-40],	rax
lea	rbx,	[rsp-56]
sub	rsp,	56
call	f0
add	rsp,	56
mov	rbx,	[rsp]
pop	rbx
ret
f5:
push	rbx
mov	qword	[rsp-56],	1
mov	rax,	[rbx+8]
mov	[rsp-48],	rax
mov	rax,	[rbx+16]
mov	[rsp-40],	rax
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
f6:
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
call	f7
add	rsp,	8
mov	rbx,	[rsp]
pop	rbx
ret
f10:
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
f11:
push	rbx
mov	rax,	[rbx+8]
mov	rdx,	[rbx+16]
mov	[rsp-16],	rax
mov	[rsp-8],	rdx
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f8
add	rsp,	24
mov	rbx,	[rsp]
mov	rax,	[rbx+0]
mov	[rsp-8],	rax
lea	rbx,	[rsp-8]
sub	rsp,	8
call	f10
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
call	f7
add	rsp,	64
mov	rbx,	[rsp]
pop	rbx
ret
f13:
push	rdx
push	rbx
mov	rax,	[rbx+16]
mov	rdx,	[rbx+24]
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
f14:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
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
mov	rax,	[rcx+0]
mov	rdx,	[rcx+8]
add	rax,	[rbx+8]
mov	[rsp-8],	rax
mov	rax,	[rbx+16]
mov	rcx,	[rsp-8]
mov	[rcx+0],	al
pop	rbx
ret
f17:
push	rbx
mov	rcx,	[rbx+0]
mov	qword	[rcx+8],	0
pop	rbx
ret
f18:
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
f19:
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
f20:
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
call	f18
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
f21:
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
f22:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
mov	rcx,	[rbx+0]
mov	rcx,	[rcx+0]
mov	[rcx+0],	rax
pop	rbx
ret
f23:
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
f24:
push	rbx
b4:
mov	rax,	[rbx+0]
cmp	rax,	[rbx+8]
setl	al
movzx	rax,	al
cmp	rax,	0
je	b5
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
jmp	b4
b5:
pop	rbx
ret
f25:
push	rbx
lea	rax,	[rsp-20]
mov	[rsp-56],	rax
mov	qword	[rsp-48],	20
lea	rax,	[rsp-40]
mov	[rsp-64],	rax
lea	rbx,	[rsp-64]
sub	rsp,	64
call	f19
add	rsp,	64
mov	rbx,	[rsp]
lea	rax,	[rsp-40]
mov	[rsp-48],	rax
lea	rbx,	[rsp-80]
lea	rax,	[rel+f20]
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
f26:
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
f27:
push	rdx
push	rbx
mov	rcx,	[rbx+32]
mov	rax,	[rcx+16]
mov	[rsp-8],	rax
mov	rax,	[rbx+16]
mov	rdx,	[rbx+24]
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
f28:
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
f29:
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
f30:
push	rdx
push	rbx
mov	rax,	[rbx+8]
xor	rdx,	rdx
mov	qword	rcx,	8
div	qword	rcx
mov	rax,	rdx
cmp	rax,	0
je	b6
mov	rax,	[rbx+8]
xor	rdx,	rdx
mov	qword	rcx,	8
div	qword	rcx
xor	rdx,	rdx
mov	qword	rcx,	8
mul	qword	rcx
add	rax,	8
mov	[rbx+8],	rax
b6:
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
b7:
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
je	b8
mov	rcx,	[rsp-40]
mov	rax,	[rcx+0]
and	rax,	0x8000
cmp	rax,	0
je	b9
mov	qword	[rsp-8],	0
mov	rax,	[rsp-40]
mov	[rsp-32],	rax
jmp	b10
b9:
mov	rax,	[rsp-8]
cmp	rax,	0
setg	al
movzx	rax,	al
cmp	rax,	0
je	b11
mov	rax,	[rsp-8]
add	rax,	8
mov	rcx,	[rsp-40]
add	rax,	[rcx+0]
mov	[rsp-8],	rax
mov	rax,	[rsp-8]
mov	rcx,	[rsp-32]
mov	[rcx+0],	rax
jmp	b12
b11:
mov	rax,	[rsp-40]
mov	[rsp-32],	rax
mov	rcx,	[rsp-32]
mov	rax,	[rcx+0]
mov	[rsp-8],	rax
b12:
b10:
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
jmp	b7
b8:
mov	rcx,	[rsp-32]
mov	rax,	[rcx+0]
cmp	rax,	0xFFFF
sete	al
movzx	rax,	al
cmp	rax,	0
je	b13
mov	rax,	0
jmp	b14
b13:
mov	rax,	[rsp-8]
cmp	rax,	[rbx+8]
setg	al
movzx	rax,	al
cmp	rax,	0
je	b15
mov	rax,	[rsp-32]
add	rax,	8
add	rax,	[rbx+8]
mov	[rsp-40],	rax
mov	rax,	[rsp-8]
sub	rax,	[rbx+8]
sub	rax,	8
mov	rcx,	[rsp-40]
mov	[rcx+0],	rax
b15:
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
je	b16
mov	rax,	[rsp-40]
add	rax,	8
mov	[rsp-24],	rax
mov	[rsp-16],	rdx
mov	rax,	[rsp-24]
mov	rdx,	[rsp-16]
mov	rcx,	[rsp+8]
mov	[rcx+48],	rax
b16:
mov	rax,	[rsp-32]
add	rax,	8
b14:
pop	rbx
pop	rdx
ret
f31:
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
je	b17
mov	rax,	[rbx+8]
mov	rdx,	[rbx+16]
mov	rcx,	[rsp+8]
mov	[rcx+48],	rax
b17:
pop	rbx
pop	rdx
ret
f32:
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
lea	rax,	[rel+f33]
mov	[rsp-24],	rax
mov	[rsp-16],	rsp
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f24
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
f33:
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
f34:
push	rbx
mov	rcx,	[rbx+0]
mov	rdx,	[rcx+32]
mov	rax,	[rcx+24]
lea	rbx,	[rbx+0]
sub	rsp,	8
call	rax
add	rsp,	8
mov	rbx,	[rsp]
pop	rbx
ret
f35:
push	rbx
mov	rcx,	[rbx+0]
mov	rdx,	[rcx+48]
mov	rax,	[rcx+40]
lea	rbx,	[rbx+0]
sub	rsp,	8
call	rax
add	rsp,	8
mov	rbx,	[rsp]
pop	rbx
ret
f36:
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
lea	rax,	[rel+f37]
mov	[rsp-24],	rax
mov	[rsp-16],	rsp
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f24
add	rsp,	48
mov	rbx,	[rsp]
pop	rbx
pop	rdx
ret
f37:
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
f38:
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
f39:
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
f40:
push	rbx
mov	rcx,	[rbx+0]
mov	qword	[rcx+16],	0
mov	rax,	[rbx+8]
mov	rdx,	[rbx+16]
mov	rcx,	[rbx+0]
mov	[rcx+0],	rax
mov	[rcx+8],	rdx
mov	rcx,	[rbx+0]
mov	qword	[rcx+8],	0
pop	rbx
ret
f41:
push	rdx
push	rbx
mov	qword	[rsp-16],	0
mov	[rsp-8],	rdx
mov	qword	[rsp-24],	0
b18:
mov	rax,	[rsp-16]
mov	rdx,	[rsp-8]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b19
mov	rax,	[rsp-24]
mov	[rsp-32],	rax
mov	rcx,	static_mem
lea	rax,	[rcx+400]
mov	[rsp-40],	rax
lea	rbx,	[rsp-40]
sub	rsp,	40
call	f39
add	rsp,	40
mov	rbx,	[rsp]
mov	[rsp-32],	rax
mov	rcx,	[rsp-32]
mov	rax,	[rcx+56]
cmp	rax,	[rbx+8]
setg	al
movzx	rax,	al
cmp	rax,	0
je	b20
mov	rax,	[rbx+8]
mov	[rsp-40],	rax
mov	rcx,	[rsp-32]
lea	rax,	[rcx+0]
mov	[rsp-48],	rax
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f28
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
jmp	b21
b20:
mov	rcx,	[rsp-32]
mov	rax,	[rcx+32]
mov	rdx,	[rcx+40]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b22
mov	rcx,	[rsp-32]
lea	rbx,	[rcx+0]
lea	rax,	[rel+f30]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
lea	rax,	[rel+f31]
mov	[rbx+16],	rax
mov	[rbx+24],	rbx
mov	rbx,	[rsp]
mov	qword	[rsp-40],	4096
b23:
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
je	b24
mov	rax,	[rsp-40]
xor	rdx,	rdx
mov	qword	rcx,	2
mul	qword	rcx
mov	[rsp-40],	rax
jmp	b23
b24:
mov	rax,	[rsp-40]
mov	[rsp-40],	rax
lea	rbx,	[rsp-40]
sub	rsp,	40
call	f6
add	rsp,	40
mov	rbx,	[rsp]
mov	[rsp-48],	rax
mov	[rsp-40],	rdx
mov	rcx,	[rsp-32]
lea	rax,	[rcx+0]
mov	[rsp-56],	rax
lea	rbx,	[rsp-56]
sub	rsp,	56
call	f32
add	rsp,	56
mov	rbx,	[rsp]
mov	rax,	[rbx+8]
mov	[rsp-40],	rax
lea	rax,	[rcx+0]
mov	[rsp-48],	rax
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f28
add	rsp,	48
mov	rbx,	[rsp]
mov	[rsp-16],	rax
mov	[rsp-8],	rdx
mov	rax,	[rcx+40]
sub	rax,	[rbx+8]
sub	rax,	16
mov	rcx,	[rsp-32]
mov	[rcx+56],	rax
b22:
b21:
mov	rax,	[rsp-24]
add	rax,	1
mov	[rsp-24],	rax
jmp	b18
b19:
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
f42:
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
call	f39
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
call	f29
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
f43:
push	rdx
push	rbx
mov	rax,	[rbx+24]
mov	[rsp-8],	rax
mov	qword	[rsp-16],	0
mov	rcx,	[rbx+32]
mov	rax,	[rcx+8]
add	rax,	[rsp-8]
mov	rcx,	[rbx+32]
cmp	rax,	[rcx+16]
setg	al
movzx	rax,	al
cmp	rax,	0
je	b25
mov	qword	[rsp-24],	1
mov	rcx,	[rbx+32]
mov	rax,	[rcx+16]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b26
mov	rcx,	[rbx+32]
mov	qword	[rcx+16],	16
mov	qword	[rsp-24],	0
mov	rcx,	[rbx+32]
mov	qword	[rcx+8],	0
b26:
b27:
mov	rcx,	[rbx+32]
mov	rax,	[rcx+8]
add	rax,	[rsp-8]
mov	rcx,	[rbx+32]
cmp	rax,	[rcx+16]
setg	al
movzx	rax,	al
cmp	rax,	0
je	b28
mov	rcx,	[rbx+32]
mov	rax,	[rcx+16]
xor	rdx,	rdx
mov	qword	rcx,	2
mul	qword	rcx
mov	rcx,	[rbx+32]
mov	[rcx+16],	rax
jmp	b27
b28:
mov	rcx,	[rbx+32]
mov	rax,	[rcx+16]
mov	[rsp-48],	rax
mov	rcx,	[rbx+32]
mov	rax,	[rcx+24]
mov	[rsp-56],	rax
lea	rbx,	[rsp-56]
sub	rsp,	56
call	f28
add	rsp,	56
mov	rbx,	[rsp]
mov	[rsp-40],	rax
mov	[rsp-32],	rdx
mov	rax,	[rsp-40]
mov	rdx,	[rsp-32]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b29
mov	qword	[rsp-16],	1
jmp	b30
b29:
mov	rcx,	[rbx+32]
mov	rax,	[rcx+8]
mov	[rsp-32],	rax
mov	rax,	[rsp-40]
mov	rdx,	[rsp-32]
mov	[rsp-56],	rax
mov	[rsp-48],	rdx
mov	rcx,	[rbx+32]
mov	rax,	[rcx+0]
mov	rdx,	[rcx+8]
mov	[rsp-72],	rax
mov	[rsp-64],	rdx
lea	rbx,	[rsp-72]
sub	rsp,	72
call	f18
add	rsp,	72
mov	rbx,	[rsp]
mov	rax,	[rsp-24]
cmp	rax,	0
je	b31
mov	rcx,	[rbx+32]
mov	rax,	[rcx+0]
mov	rdx,	[rcx+8]
mov	[rsp-56],	rax
mov	[rsp-48],	rdx
mov	rcx,	[rbx+32]
mov	rax,	[rcx+24]
mov	[rsp-64],	rax
lea	rbx,	[rsp-64]
sub	rsp,	64
call	f29
add	rsp,	64
mov	rbx,	[rsp]
b31:
mov	rax,	[rsp-40]
mov	rdx,	[rsp-32]
mov	rcx,	[rbx+32]
mov	[rcx+0],	rax
mov	[rcx+8],	rdx
b30:
b25:
mov	rax,	[rsp-16]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b32
mov	rcx,	[rbx+32]
mov	rax,	[rcx+0]
mov	rdx,	[rcx+8]
mov	rcx,	[rbx+32]
add	rax,	[rcx+8]
mov	[rsp-32],	rax
mov	[rsp-24],	rdx
mov	rax,	[rbx+16]
mov	rdx,	[rbx+24]
mov	[rsp-48],	rax
mov	[rsp-40],	rdx
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f18
add	rsp,	48
mov	rbx,	[rsp]
mov	rcx,	[rbx+32]
mov	rax,	[rcx+8]
add	rax,	[rsp-8]
mov	rcx,	[rbx+32]
mov	[rcx+8],	rax
b32:
pop	rbx
pop	rdx
ret
f44:
push	rbx
mov	rax,	[rbx+0]
mov	[rsp-8],	rax
lea	rbx,	[rsp-8]
sub	rsp,	8
call	f17
add	rsp,	8
mov	rbx,	[rsp]
mov	rcx,	[rbx+0]
mov	qword	[rcx+16],	0
mov	rcx,	[rbx+0]
mov	rax,	[rcx+0]
mov	rdx,	[rcx+8]
mov	[rsp-16],	rax
mov	[rsp-8],	rdx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+24]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f29
add	rsp,	24
mov	rbx,	[rsp]
pop	rbx
ret
f45:
push	rbx
mov	rax,	[rbx+32]
xor	rdx,	rdx
div	qword	[rbx+8]
mov	rax,	rdx
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b33
mov	rax,	[rbx+16]
mov	rdx,	[rbx+24]
mov	[rsp-16],	rax
mov	[rsp-8],	rdx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f8
add	rsp,	24
mov	rbx,	[rsp]
mov	qword	[rbx+40],	1
b33:
pop	rbx
ret
f46:
push	rbx
mov	[rsp-48],	rbx
mov	rax,	[rbx+8]
mov	[rsp-16],	rax
b34:
mov	rax,	[rsp-16]
cmp	rax,	[rbx+16]
setl	al
movzx	rax,	al
cmp	rax,	0
je	b35
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
je	b36
mov	rax,	[rsp-16]
mov	[rsp-56],	rax
mov	rax,	[rbx+0]
mov	[rsp-64],	rax
lea	rbx,	[rsp-64]
sub	rsp,	64
call	f12
add	rsp,	64
mov	rbx,	[rsp]
b36:
mov	rax,	[rbx+0]
mov	[rsp-56],	rax
lea	rbx,	[rsp-56]
sub	rsp,	56
call	f10
add	rsp,	56
mov	rbx,	[rsp]
mov	rax,	[rsp-16]
add	rax,	1
mov	[rsp-16],	rax
jmp	b34
b35:
pop	rbx
ret
f47:
push	rdx
push	rbx
mov	qword	[rbx+8],	3
mov	qword	[rbx+16],	s1
mov	qword	[rbx+24],	4
sub	rsp,	0
call	f45
add	rsp,	0
mov	rbx,	[rsp]
mov	qword	[rbx+8],	5
mov	qword	[rbx+16],	s2
mov	qword	[rbx+24],	4
sub	rsp,	0
call	f45
add	rsp,	0
mov	rbx,	[rsp]
pop	rbx
pop	rdx
ret
f48:
push	rdx
push	rbx
mov	qword	[rbx+8],	3
mov	qword	[rbx+16],	s3
mov	qword	[rbx+24],	4
sub	rsp,	0
call	f45
add	rsp,	0
mov	rbx,	[rsp]
mov	qword	[rbx+8],	5
mov	qword	[rbx+16],	s4
mov	qword	[rbx+24],	4
sub	rsp,	0
call	f45
add	rsp,	0
mov	rbx,	[rsp]
mov	qword	[rbx+8],	7
mov	qword	[rbx+16],	s5
mov	qword	[rbx+24],	4
sub	rsp,	0
call	f45
add	rsp,	0
mov	rbx,	[rsp]
mov	qword	[rbx+8],	11
mov	qword	[rbx+16],	s6
mov	qword	[rbx+24],	4
sub	rsp,	0
call	f45
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
mov     r8,     [rbx+32]
mov     r9,     [rbx+40]
mov     r10,    [rbx+48]
syscall
ret
SECTION .bss
static_mem	resb	488
SECTION .data
s1	db	'fizz'
s2	db	'buzz'
s3	db	'fizz'
s4	db	'buzz'
s5	db	'fuzz'
s6	db	'jazz'
