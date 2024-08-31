global	_start
_start:
mov	qword	[rsp-16],	0
mov	qword	[rsp-8],	1
mov	qword	[rsp-32],	2
mov	qword	[rsp-24],	5
mov	qword	[rsp-48],	0
mov	qword	[rsp-40],	5
mov	qword	[rsp-64],	2
mov	qword	[rsp-56],	7
mov	qword	[rsp-80],	4
mov	qword	[rsp-72],	1
lea	rax,	[rsp-128]
mov	[rsp-152],	rax
lea	rax,	[rsp-144]
mov	[rsp-160],	rax
lea	rbx,	[rsp-160]
sub	rsp,	160
call	f9
add	rsp,	160
mov	rbx,	[rsp]
lea	rax,	[rsp-144]
mov	[rsp-160],	rax
lea	rax,	[rsp-16]
mov	[rsp-152],	rax
lea	rbx,	[rsp-160]
sub	rsp,	160
call	f12
add	rsp,	160
mov	rbx,	[rsp]
lea	rax,	[rsp-32]
mov	[rsp-152],	rax
lea	rbx,	[rsp-160]
sub	rsp,	160
call	f12
add	rsp,	160
mov	rbx,	[rsp]
lea	rax,	[rsp-48]
mov	[rsp-152],	rax
lea	rbx,	[rsp-160]
sub	rsp,	160
call	f12
add	rsp,	160
mov	rbx,	[rsp]
lea	rax,	[rsp-64]
mov	[rsp-152],	rax
lea	rbx,	[rsp-160]
sub	rsp,	160
call	f12
add	rsp,	160
mov	rbx,	[rsp]
lea	rax,	[rsp-80]
mov	[rsp-152],	rax
lea	rbx,	[rsp-160]
sub	rsp,	160
call	f12
add	rsp,	160
mov	rbx,	[rsp]
lea	rax,	[rel+f21]
mov	[rsp-160],	rax
mov	[rsp-152],	rsp
lea	rax,	[rsp-144]
mov	[rsp-168],	rax
lea	rbx,	[rsp-168]
sub	rsp,	168
call	f20
add	rsp,	168
mov	rbx,	[rsp]
lea	rbx,	[rsp-184]
lea	rax,	[rel+f8]
mov	[rbx+8],	rax
mov	[rbx+16],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-224]
mov	[rsp-248],	rax
lea	rax,	[rsp-240]
mov	[rsp-256],	rax
lea	rbx,	[rsp-256]
sub	rsp,	256
call	f9
add	rsp,	256
mov	rbx,	[rsp]
lea	rax,	[rsp-240]
mov	[rsp-280],	rax
lea	rbx,	[rsp-280]
lea	rax,	[rel+f17]
mov	[rbx+8],	rax
mov	[rbx+16],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-280]
mov	[rsp-288],	rax
lea	rbx,	[rsp-288]
sub	rsp,	288
call	f22
add	rsp,	288
mov	rbx,	[rsp]
lea	rax,	[rsp-184]
mov	[rsp-248],	rax
lea	rbx,	[rsp-248]
sub	rsp,	248
call	f22
add	rsp,	248
mov	rbx,	[rsp]
lea	rax,	[rsp-240]
mov	[rsp-264],	rax
mov	qword	[rsp-248],	70
mov	qword	[rsp-256],	1
lea	rbx,	[rsp-264]
sub	rsp,	264
call	f15
add	rsp,	264
mov	rbx,	[rsp]
mov	qword	[rsp-256],	2
lea	rbx,	[rsp-264]
sub	rsp,	264
call	f15
add	rsp,	264
mov	rbx,	[rsp]
mov	qword	[rsp-256],	3
lea	rbx,	[rsp-264]
sub	rsp,	264
call	f15
add	rsp,	264
mov	rbx,	[rsp]
mov	qword	[rsp-256],	4
lea	rbx,	[rsp-264]
sub	rsp,	264
call	f15
add	rsp,	264
mov	rbx,	[rsp]
mov	rax,	[rsp-240]
mov	rdx,	[rsp-232]
mov	[rsp-256],	rax
mov	[rsp-248],	rdx
lea	rax,	[rsp-184]
mov	[rsp-264],	rax
lea	rbx,	[rsp-264]
sub	rsp,	264
call	f3
add	rsp,	264
mov	rbx,	[rsp]
mov	qword	[rsp-248],	1749
lea	rax,	[rsp-184]
mov	[rsp-256],	rax
lea	rbx,	[rsp-256]
sub	rsp,	256
call	f7
add	rsp,	256
mov	rbx,	[rsp]
mov	qword	[rsp-248],	102
lea	rax,	[rsp-184]
mov	[rsp-256],	rax
lea	rbx,	[rsp-256]
sub	rsp,	256
call	f4
add	rsp,	256
mov	rbx,	[rsp]
mov	qword	[rsp-248],	0
lea	rax,	[rsp-184]
mov	[rsp-256],	rax
lea	rbx,	[rsp-256]
sub	rsp,	256
call	f7
add	rsp,	256
mov	rbx,	[rsp]
mov	qword	[rsp-248],	90
lea	rax,	[rsp-184]
mov	[rsp-256],	rax
lea	rbx,	[rsp-256]
sub	rsp,	256
call	f4
add	rsp,	256
mov	rbx,	[rsp]
lea	rax,	[rsp-184]
mov	[rsp-248],	rax
lea	rbx,	[rsp-248]
sub	rsp,	248
call	f5
add	rsp,	248
mov	rbx,	[rsp]
lea	rbx,	[rsp-184]
lea	rax,	[rel+f8]
mov	[rbx+8],	rax
mov	[rbx+16],	rbx
mov	rbx,	[rsp]
mov	qword	[rsp-192],	7
lea	rbx,	[rsp-192]
sub	rsp,	192
call	f23
add	rsp,	192
mov	rbx,	[rsp]
mov	[rsp-192],	rax
lea	rax,	[rsp-184]
mov	[rsp-200],	rax
lea	rbx,	[rsp-200]
sub	rsp,	200
call	f7
add	rsp,	200
mov	rbx,	[rsp]
lea	rax,	[rsp-184]
mov	[rsp-192],	rax
lea	rbx,	[rsp-192]
sub	rsp,	192
call	f5
add	rsp,	192
mov	rbx,	[rsp]
lea	rax,	[rsp-168]
mov	[rsp-176],	rax
lea	rax,	[rsp-152]
mov	[rsp-168],	rax
lea	rbx,	[rsp-168]
mov	qword	[rbx+8],	4
mov	rbx,	[rsp]
lea	rbx,	[rsp-176]
sub	rsp,	176
call	f19
add	rsp,	176
mov	rbx,	[rsp]
lea	rbx,	[rsp-192]
lea	rax,	[rel+f8]
mov	[rbx+8],	rax
mov	[rbx+16],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-208]
mov	[rsp-216],	rax
lea	rax,	[rsp-152]
mov	[rsp-208],	rax
lea	rbx,	[rsp-208]
mov	qword	[rbx+8],	4
mov	rbx,	[rsp]
lea	rbx,	[rsp-216]
sub	rsp,	216
call	f18
add	rsp,	216
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
lea	rax,	[rsp-208]
mov	[rsp-216],	rax
lea	rax,	[rsp-152]
mov	[rsp-208],	rax
lea	rbx,	[rsp-208]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-216]
sub	rsp,	216
call	f18
add	rsp,	216
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
lea	rbx,	[rsp-192]
lea	rax,	[rel+f8]
mov	[rbx+8],	rax
mov	[rbx+16],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-192]
mov	[rsp-208],	rax
mov	rax,	[rsp-152]
mov	[rsp-200],	rax
lea	rbx,	[rsp-208]
sub	rsp,	208
call	f24
add	rsp,	208
mov	rbx,	[rsp]
lea	rax,	[rsp-224]
mov	[rsp-232],	rax
lea	rax,	[rsp-152]
mov	[rsp-224],	rax
lea	rbx,	[rsp-224]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-232]
sub	rsp,	232
call	f19
add	rsp,	232
mov	rbx,	[rsp]
mov	rax,	[rsp-152]
mov	[rsp-200],	rax
lea	rbx,	[rsp-208]
sub	rsp,	208
call	f24
add	rsp,	208
mov	rbx,	[rsp]
mov	qword	[rsp-160],	4
lea	rax,	[rel+f25]
mov	[rsp-176],	rax
mov	[rsp-168],	rsp
lea	rax,	[rsp-144]
mov	[rsp-184],	rax
lea	rbx,	[rsp-184]
sub	rsp,	184
call	f20
add	rsp,	184
mov	rbx,	[rsp]
lea	rax,	[rel+f26]
mov	[rsp-176],	rax
mov	[rsp-168],	rsp
lea	rax,	[rsp-144]
mov	[rsp-184],	rax
lea	rbx,	[rsp-184]
sub	rsp,	184
call	f20
add	rsp,	184
mov	rbx,	[rsp]
lea	rax,	[rsp-200]
mov	[rsp-208],	rax
lea	rbx,	[rsp-200]
lea	rax,	[rel+f8]
mov	[rbx+8],	rax
mov	[rbx+16],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-208]
sub	rsp,	208
call	f5
add	rsp,	208
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
mov	rdx,	[rbx+16]
mov	rax,	[rbx+8]
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
mov	[rcx+24],	rax
mov	[rcx+32],	rdx
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
mov	[rcx+24],	rax
mov	qword	[rcx+32],	1
mov	rcx,	[rbx+0]
mov	qword	[rcx+32],	1
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
mov	[rcx+24],	rax
mov	[rcx+32],	rdx
mov	rax,	[rsp-64]
mov	rcx,	[rbx+0]
mov	[rcx+32],	rax
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
mov	rax,	[rcx+24]
mov	rdx,	[rcx+32]
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
mov	rax,	[rcx+24]
mov	rdx,	[rcx+32]
mov	[rsp-8],	rax
mov	rcx,	[rbx+0]
mov	rax,	[rcx+0]
mov	rdx,	[rcx+8]
mov	[rsp-16],	rax
mov	rax,	[rsp-16]
mov	rcx,	[rbx+0]
add	rax,	[rcx+8]
mov	[rsp-16],	rax
mov	rcx,	[rsp+8]
mov	rax,	[rcx+32]
mov	[rsp-24],	rax
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
add	rax,	[rsp-24]
mov	rcx,	[rbx+0]
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
mov	rcx,	[rcx]
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
mov	rcx,	[rcx]
mov	[rcx+0],	rax
pop	rbx
ret
f20:
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
f21:
push	rdx
push	rbx
mov	rax,	[rbx+0]
add	rax,	[rbx+8]
mov	[rsp-48],	rax
lea	rax,	[rsp-40]
mov	[rsp-56],	rax
lea	rbx,	[rsp-40]
lea	rax,	[rel+f8]
mov	[rbx+8],	rax
mov	[rbx+16],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-56]
sub	rsp,	56
call	f7
add	rsp,	56
mov	rbx,	[rsp]
pop	rbx
pop	rdx
ret
f22:
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
f23:
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
call	f23
add	rsp,	16
mov	rbx,	[rsp]
mov	[rsp-16],	rax
mov	rax,	[rsp-8]
xor	rdx,	rdx
mul	qword	[rsp-16]
b7:
pop	rbx
ret
f24:
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
f25:
push	rdx
push	rbx
mov	rcx,	[rsp+8]
mov	rax,	[rcx-160]
mov	[rbx+8],	rax
mov	rcx,	[rsp+8]
mov	rax,	[rcx-160]
sub	rax,	1
mov	rcx,	[rsp+8]
mov	[rcx-160],	rax
pop	rbx
pop	rdx
ret
f26:
push	rdx
push	rbx
mov	rax,	[rbx+0]
add	rax,	[rbx+8]
mov	[rsp-48],	rax
lea	rax,	[rsp-40]
mov	[rsp-56],	rax
lea	rbx,	[rsp-40]
lea	rax,	[rel+f8]
mov	[rbx+8],	rax
mov	[rbx+16],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-56]
sub	rsp,	56
call	f7
add	rsp,	56
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
