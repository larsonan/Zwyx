global	_start
_start:
lea	rax,	[rsp-128]
mov	[rsp-168],	rax
lea	rax,	[rsp-160]
mov	[rsp-176],	rax
lea	rbx,	[rsp-176]
sub	rsp,	176
call	f20
add	rsp,	176
mov	rbx,	[rsp]
lea	rax,	[rsp-48]
mov	[rsp-168],	rax
lea	rax,	[rsp-160]
mov	[rsp-176],	rax
lea	rbx,	[rsp-176]
sub	rsp,	176
call	f9
add	rsp,	176
mov	rbx,	[rsp]
lea	rax,	[rsp-160]
mov	[rsp-184],	rax
lea	rax,	[rel+f23]
mov	[rsp-176],	rax
mov	[rsp-168],	rsp
lea	rbx,	[rsp-184]
sub	rsp,	184
call	f22
add	rsp,	184
mov	rbx,	[rsp]
lea	rax,	[rel+f24]
mov	[rsp-176],	rax
mov	[rsp-168],	rsp
lea	rbx,	[rsp-184]
sub	rsp,	184
call	f22
add	rsp,	184
mov	rbx,	[rsp]
lea	rax,	[rel+f25]
mov	[rsp-176],	rax
mov	[rsp-168],	rsp
lea	rbx,	[rsp-184]
sub	rsp,	184
call	f22
add	rsp,	184
mov	rbx,	[rsp]
lea	rax,	[rel+f26]
mov	[rsp-176],	rax
mov	[rsp-168],	rsp
lea	rbx,	[rsp-184]
sub	rsp,	184
call	f22
add	rsp,	184
mov	rbx,	[rsp]
lea	rax,	[rel+f27]
mov	[rsp-176],	rax
mov	[rsp-168],	rsp
lea	rbx,	[rsp-184]
sub	rsp,	184
call	f22
add	rsp,	184
mov	rbx,	[rsp]
lea	rax,	[rel+f28]
mov	[rsp-176],	rax
mov	[rsp-168],	rsp
lea	rax,	[rsp-160]
mov	[rsp-184],	rax
lea	rbx,	[rsp-184]
sub	rsp,	184
call	f21
add	rsp,	184
mov	rbx,	[rsp]
lea	rbx,	[rsp-192]
lea	rax,	[rel+f8]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-232]
mov	[rsp-256],	rax
lea	rax,	[rsp-248]
mov	[rsp-264],	rax
lea	rbx,	[rsp-264]
sub	rsp,	264
call	f9
add	rsp,	264
mov	rbx,	[rsp]
lea	rax,	[rsp-248]
mov	[rsp-256],	rax
lea	rbx,	[rsp-288]
lea	rax,	[rel+f17]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-288]
mov	[rsp-296],	rax
lea	rbx,	[rsp-296]
sub	rsp,	296
call	f29
add	rsp,	296
mov	rbx,	[rsp]
lea	rax,	[rsp-192]
mov	[rsp-256],	rax
lea	rbx,	[rsp-256]
sub	rsp,	256
call	f29
add	rsp,	256
mov	rbx,	[rsp]
lea	rax,	[rsp-248]
mov	[rsp-272],	rax
mov	qword	[rsp-256],	70
mov	qword	[rsp-264],	1
lea	rbx,	[rsp-272]
sub	rsp,	272
call	f15
add	rsp,	272
mov	rbx,	[rsp]
mov	qword	[rsp-264],	2
lea	rbx,	[rsp-272]
sub	rsp,	272
call	f15
add	rsp,	272
mov	rbx,	[rsp]
mov	qword	[rsp-264],	3
lea	rbx,	[rsp-272]
sub	rsp,	272
call	f15
add	rsp,	272
mov	rbx,	[rsp]
mov	qword	[rsp-264],	4
lea	rbx,	[rsp-272]
sub	rsp,	272
call	f15
add	rsp,	272
mov	rbx,	[rsp]
mov	rax,	[rsp-248]
mov	rdx,	[rsp-240]
mov	[rsp-264],	rax
mov	[rsp-256],	rdx
lea	rax,	[rsp-192]
mov	[rsp-272],	rax
lea	rbx,	[rsp-272]
sub	rsp,	272
call	f3
add	rsp,	272
mov	rbx,	[rsp]
mov	qword	[rsp-256],	1749
lea	rax,	[rsp-192]
mov	[rsp-264],	rax
lea	rbx,	[rsp-264]
sub	rsp,	264
call	f7
add	rsp,	264
mov	rbx,	[rsp]
mov	qword	[rsp-256],	102
lea	rax,	[rsp-192]
mov	[rsp-264],	rax
lea	rbx,	[rsp-264]
sub	rsp,	264
call	f4
add	rsp,	264
mov	rbx,	[rsp]
mov	qword	[rsp-256],	0
lea	rax,	[rsp-192]
mov	[rsp-264],	rax
lea	rbx,	[rsp-264]
sub	rsp,	264
call	f7
add	rsp,	264
mov	rbx,	[rsp]
mov	qword	[rsp-256],	90
lea	rax,	[rsp-192]
mov	[rsp-264],	rax
lea	rbx,	[rsp-264]
sub	rsp,	264
call	f4
add	rsp,	264
mov	rbx,	[rsp]
lea	rax,	[rsp-192]
mov	[rsp-256],	rax
lea	rbx,	[rsp-256]
sub	rsp,	256
call	f5
add	rsp,	256
mov	rbx,	[rsp]
lea	rbx,	[rsp-192]
lea	rax,	[rel+f8]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
mov	qword	[rsp-200],	7
lea	rbx,	[rsp-200]
sub	rsp,	200
call	f30
add	rsp,	200
mov	rbx,	[rsp]
mov	[rsp-200],	rax
lea	rax,	[rsp-192]
mov	[rsp-208],	rax
lea	rbx,	[rsp-208]
sub	rsp,	208
call	f7
add	rsp,	208
mov	rbx,	[rsp]
lea	rax,	[rsp-192]
mov	[rsp-200],	rax
lea	rbx,	[rsp-200]
sub	rsp,	200
call	f5
add	rsp,	200
mov	rbx,	[rsp]
lea	rax,	[rsp-184]
mov	[rsp-192],	rax
lea	rax,	[rsp-168]
mov	[rsp-184],	rax
lea	rbx,	[rsp-184]
mov	qword	[rbx+8],	4
mov	rbx,	[rsp]
lea	rbx,	[rsp-192]
sub	rsp,	192
call	f19
add	rsp,	192
mov	rbx,	[rsp]
lea	rbx,	[rsp-200]
lea	rax,	[rel+f8]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-216]
mov	[rsp-224],	rax
lea	rax,	[rsp-168]
mov	[rsp-216],	rax
lea	rbx,	[rsp-216]
mov	qword	[rbx+8],	4
mov	rbx,	[rsp]
lea	rbx,	[rsp-224]
sub	rsp,	224
call	f18
add	rsp,	224
mov	rbx,	[rsp]
mov	[rsp-208],	rax
lea	rax,	[rsp-200]
mov	[rsp-216],	rax
lea	rbx,	[rsp-216]
sub	rsp,	216
call	f7
add	rsp,	216
mov	rbx,	[rsp]
lea	rax,	[rsp-200]
mov	[rsp-208],	rax
lea	rbx,	[rsp-208]
sub	rsp,	208
call	f5
add	rsp,	208
mov	rbx,	[rsp]
lea	rax,	[rsp-216]
mov	[rsp-224],	rax
lea	rax,	[rsp-168]
mov	[rsp-216],	rax
lea	rbx,	[rsp-216]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-224]
sub	rsp,	224
call	f18
add	rsp,	224
mov	rbx,	[rsp]
mov	[rsp-208],	rax
lea	rax,	[rsp-200]
mov	[rsp-216],	rax
lea	rbx,	[rsp-216]
sub	rsp,	216
call	f7
add	rsp,	216
mov	rbx,	[rsp]
lea	rax,	[rsp-200]
mov	[rsp-208],	rax
lea	rbx,	[rsp-208]
sub	rsp,	208
call	f5
add	rsp,	208
mov	rbx,	[rsp]
lea	rbx,	[rsp-200]
lea	rax,	[rel+f8]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-200]
mov	[rsp-216],	rax
mov	rax,	[rsp-168]
mov	[rsp-208],	rax
lea	rbx,	[rsp-216]
sub	rsp,	216
call	f31
add	rsp,	216
mov	rbx,	[rsp]
lea	rax,	[rsp-232]
mov	[rsp-240],	rax
lea	rax,	[rsp-168]
mov	[rsp-232],	rax
lea	rbx,	[rsp-232]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-240]
sub	rsp,	240
call	f19
add	rsp,	240
mov	rbx,	[rsp]
mov	rax,	[rsp-168]
mov	[rsp-208],	rax
lea	rbx,	[rsp-216]
sub	rsp,	216
call	f31
add	rsp,	216
mov	rbx,	[rsp]
mov	qword	[rsp-176],	4
lea	rax,	[rel+f32]
mov	[rsp-192],	rax
mov	[rsp-184],	rsp
lea	rax,	[rsp-160]
mov	[rsp-200],	rax
lea	rbx,	[rsp-200]
sub	rsp,	200
call	f21
add	rsp,	200
mov	rbx,	[rsp]
lea	rax,	[rel+f33]
mov	[rsp-192],	rax
mov	[rsp-184],	rsp
lea	rax,	[rsp-160]
mov	[rsp-200],	rax
lea	rbx,	[rsp-200]
sub	rsp,	200
call	f21
add	rsp,	200
mov	rbx,	[rsp]
lea	rax,	[rsp-208]
mov	[rsp-216],	rax
lea	rbx,	[rsp-208]
lea	rax,	[rel+f8]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-216]
sub	rsp,	216
call	f5
add	rsp,	216
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
mov	[rsp-8],	rax
mov	rax,	[rbx+8]
xor	rdx,	rdx
mov	qword	rcx,	8
mul	qword	rcx
mov	[rsp-16],	rax
mov	rax,	[rsp-8]
add	rax,	[rsp-16]
mov	[rsp-8],	rax
mov	rcx,	[rsp-8]
mov	rax,	[rcx+0]
pop	rbx
ret
f11:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+0]
mov	rdx,	[rcx+8]
mov	[rsp-8],	rax
mov	rax,	[rbx+8]
xor	rdx,	rdx
mov	qword	rcx,	8
mul	qword	rcx
mov	[rsp-16],	rax
mov	rax,	[rsp-8]
add	rax,	[rsp-16]
mov	[rsp-8],	rax
mov	rax,	[rbx+16]
mov	rcx,	[rsp-8]
mov	[rcx+0],	rax
pop	rbx
ret
f12:
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
call	f11
add	rsp,	24
mov	rbx,	[rsp]
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
add	rax,	1
mov	rcx,	[rbx+0]
mov	[rcx+8],	rax
pop	rbx
ret
f13:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
pop	rbx
ret
f14:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+0]
mov	rdx,	[rcx+8]
mov	[rsp-8],	rax
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
mov	[rsp-16],	rax
b2:
mov	rax,	[rsp-16]
cmp	rax,	0
setg	al
movzx	rax,	al
cmp	rax,	0
je	b3
mov	rcx,	[rsp-8]
mov	rax,	[rcx+0]
mov	[rsp-24],	rax
mov	rdx,	[rbx+16]
mov	rax,	[rbx+8]
mov	rbx,	[rsp-24]
sub	rsp,	32
call	rax
add	rsp,	32
mov	rbx,	[rsp]
mov	rax,	[rsp-8]
add	rax,	8
mov	[rsp-8],	rax
mov	rax,	[rsp-16]
sub	rax,	1
mov	[rsp-16],	rax
jmp	b2
b3:
pop	rbx
ret
f15:
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
f16:
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
b4:
mov	rax,	[rsp-24]
cmp	rax,	0
setg	al
movzx	rax,	al
cmp	rax,	0
je	b5
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
jmp	b4
b5:
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
mov	rax,	[rbx+8]
mov	rcx,	[rbx+0]
mov	[rcx+24],	rax
mov	rcx,	[rbx+0]
mov	qword	[rcx+16],	0
pop	rbx
ret
f21:
push	rbx
mov	rax,	[rbx+8]
mov	rdx,	[rbx+16]
mov	[rsp-16],	rax
mov	[rsp-8],	rdx
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f14
add	rsp,	24
mov	rbx,	[rsp]
pop	rbx
ret
f22:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+24]
mov	rcx,	[rbx+0]
add	rax,	[rcx+16]
mov	[rsp-8],	rax
mov	rdx,	[rbx+16]
mov	rax,	[rbx+8]
mov	rbx,	[rsp-8]
sub	rsp,	16
call	rax
add	rsp,	16
mov	rbx,	[rsp]
mov	rcx,	[rbx+0]
mov	rax,	[rcx+16]
add	rax,	16
mov	rcx,	[rbx+0]
mov	[rcx+16],	rax
mov	rax,	[rsp-8]
mov	[rsp-16],	rax
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f12
add	rsp,	24
mov	rbx,	[rsp]
pop	rbx
ret
f23:
push	rdx
push	rbx
mov	qword	[rbx+0],	1
mov	qword	[rbx+8],	0
pop	rbx
pop	rdx
ret
f24:
push	rdx
push	rbx
mov	qword	[rbx+0],	2
mov	qword	[rbx+8],	5
pop	rbx
pop	rdx
ret
f25:
push	rdx
push	rbx
mov	qword	[rbx+0],	0
mov	qword	[rbx+8],	5
pop	rbx
pop	rdx
ret
f26:
push	rdx
push	rbx
mov	qword	[rbx+0],	2
mov	qword	[rbx+8],	7
pop	rbx
pop	rdx
ret
f27:
push	rdx
push	rbx
mov	qword	[rbx+0],	4
mov	qword	[rbx+8],	1
pop	rbx
pop	rdx
ret
f28:
push	rdx
push	rbx
mov	rax,	[rbx+0]
add	rax,	[rbx+8]
mov	[rsp-40],	rax
lea	rax,	[rsp-32]
mov	[rsp-48],	rax
lea	rbx,	[rsp-32]
lea	rax,	[rel+f8]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f7
add	rsp,	48
mov	rbx,	[rsp]
pop	rbx
pop	rdx
ret
f29:
push	rbx
mov	qword	[rsp-16],	67
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f4
add	rsp,	24
mov	rbx,	[rsp]
mov	qword	[rsp-16],	76
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f4
add	rsp,	24
mov	rbx,	[rsp]
mov	qword	[rsp-16],	79
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f4
add	rsp,	24
mov	rbx,	[rsp]
mov	qword	[rsp-16],	83
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f4
add	rsp,	24
mov	rbx,	[rsp]
mov	qword	[rsp-16],	69
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f4
add	rsp,	24
mov	rbx,	[rsp]
pop	rbx
ret
f30:
push	rbx
mov	rax,	[rbx+0]
cmp	rax,	2
setl	al
movzx	rax,	al
cmp	rax,	0
je	b6
mov	al,	1
jmp	b7
b6:
mov	rax,	[rbx+0]
mov	[rsp-8],	rax
mov	rax,	[rbx+0]
sub	rax,	1
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f30
add	rsp,	16
mov	rbx,	[rsp]
mov	[rsp-16],	rax
mov	rax,	[rsp-8]
xor	rdx,	rdx
mul	qword	[rsp-16]
b7:
pop	rbx
ret
f31:
push	rbx
lea	rax,	[rsp-32]
mov	[rsp-40],	rax
lea	rax,	[rbx+8]
mov	[rsp-32],	rax
lea	rbx,	[rsp-32]
mov	qword	[rbx+8],	0
mov	rbx,	[rsp]
lea	rbx,	[rsp-40]
sub	rsp,	40
call	f18
add	rsp,	40
mov	rbx,	[rsp]
cmp	rax,	0
je	b8
mov	qword	[rsp-32],	s1
mov	qword	[rsp-24],	3
mov	rax,	[rbx+0]
mov	[rsp-40],	rax
lea	rbx,	[rsp-40]
sub	rsp,	40
call	f3
add	rsp,	40
mov	rbx,	[rsp]
jmp	b9
b8:
lea	rax,	[rsp-32]
mov	[rsp-40],	rax
lea	rax,	[rbx+8]
mov	[rsp-32],	rax
lea	rbx,	[rsp-32]
mov	qword	[rbx+8],	1
mov	rbx,	[rsp]
lea	rbx,	[rsp-40]
sub	rsp,	40
call	f18
add	rsp,	40
mov	rbx,	[rsp]
cmp	rax,	0
je	b10
mov	qword	[rsp-32],	s2
mov	qword	[rsp-24],	5
mov	rax,	[rbx+0]
mov	[rsp-40],	rax
lea	rbx,	[rsp-40]
sub	rsp,	40
call	f3
add	rsp,	40
mov	rbx,	[rsp]
jmp	b11
b10:
lea	rax,	[rsp-32]
mov	[rsp-40],	rax
lea	rax,	[rbx+8]
mov	[rsp-32],	rax
lea	rbx,	[rsp-32]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-40]
sub	rsp,	40
call	f18
add	rsp,	40
mov	rbx,	[rsp]
cmp	rax,	0
je	b12
mov	qword	[rsp-32],	s3
mov	qword	[rsp-24],	6
mov	rax,	[rbx+0]
mov	[rsp-40],	rax
lea	rbx,	[rsp-40]
sub	rsp,	40
call	f3
add	rsp,	40
mov	rbx,	[rsp]
jmp	b13
b12:
lea	rax,	[rsp-32]
mov	[rsp-40],	rax
lea	rax,	[rbx+8]
mov	[rsp-32],	rax
lea	rbx,	[rsp-32]
mov	qword	[rbx+8],	3
mov	rbx,	[rsp]
lea	rbx,	[rsp-40]
sub	rsp,	40
call	f18
add	rsp,	40
mov	rbx,	[rsp]
cmp	rax,	0
je	b14
mov	qword	[rsp-32],	s4
mov	qword	[rsp-24],	6
mov	rax,	[rbx+0]
mov	[rsp-40],	rax
lea	rbx,	[rsp-40]
sub	rsp,	40
call	f3
add	rsp,	40
mov	rbx,	[rsp]
jmp	b15
b14:
lea	rax,	[rsp-32]
mov	[rsp-40],	rax
lea	rax,	[rbx+8]
mov	[rsp-32],	rax
lea	rbx,	[rsp-32]
mov	qword	[rbx+8],	4
mov	rbx,	[rsp]
lea	rbx,	[rsp-40]
sub	rsp,	40
call	f18
add	rsp,	40
mov	rbx,	[rsp]
cmp	rax,	0
je	b16
mov	qword	[rsp-32],	s5
mov	qword	[rsp-24],	4
mov	rax,	[rbx+0]
mov	[rsp-40],	rax
lea	rbx,	[rsp-40]
sub	rsp,	40
call	f3
add	rsp,	40
mov	rbx,	[rsp]
b16:
b15:
b13:
b11:
b9:
mov	rax,	[rbx+0]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f5
add	rsp,	16
mov	rbx,	[rsp]
pop	rbx
ret
f32:
push	rdx
push	rbx
mov	rcx,	[rsp+8]
mov	rax,	[rcx-176]
mov	[rbx+8],	rax
mov	rcx,	[rsp+8]
mov	rax,	[rcx-176]
sub	rax,	1
mov	rcx,	[rsp+8]
mov	[rcx-176],	rax
pop	rbx
pop	rdx
ret
f33:
push	rdx
push	rbx
mov	rax,	[rbx+0]
add	rax,	[rbx+8]
mov	[rsp-40],	rax
lea	rax,	[rsp-32]
mov	[rsp-48],	rax
lea	rbx,	[rsp-32]
lea	rax,	[rel+f8]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f7
add	rsp,	48
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
s1	db	'RED'
s2	db	'GREEN'
s3	db	'ORANGE'
s4	db	'YELLOW'
s5	db	'BLUE'
