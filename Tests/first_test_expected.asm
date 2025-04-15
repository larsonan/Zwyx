global	_start
_start:
lea	rax,	[rsp-128]
mov	[rsp-184],	rax
mov	qword	[rsp-176],	80
lea	rax,	[rsp-168]
mov	[rsp-192],	rax
lea	rbx,	[rsp-192]
sub	rsp,	192
call	f48
add	rsp,	192
mov	rbx,	[rsp]
lea	rax,	[rsp-48]
mov	[rsp-184],	rax
mov	qword	[rsp-176],	48
lea	rax,	[rsp-168]
mov	[rsp-192],	rax
lea	rbx,	[rsp-192]
sub	rsp,	192
call	f42
add	rsp,	192
mov	rbx,	[rsp]
mov	qword	[rsp-152],	16
lea	rax,	[rsp-168]
mov	[rsp-192],	rax
lea	rax,	[rel+f50]
mov	[rsp-184],	rax
mov	[rsp-176],	rsp
lea	rbx,	[rsp-192]
sub	rsp,	192
call	f49
add	rsp,	192
mov	rbx,	[rsp]
lea	rax,	[rel+f51]
mov	[rsp-184],	rax
mov	[rsp-176],	rsp
lea	rbx,	[rsp-192]
sub	rsp,	192
call	f49
add	rsp,	192
mov	rbx,	[rsp]
lea	rax,	[rel+f52]
mov	[rsp-184],	rax
mov	[rsp-176],	rsp
lea	rbx,	[rsp-192]
sub	rsp,	192
call	f49
add	rsp,	192
mov	rbx,	[rsp]
lea	rax,	[rel+f53]
mov	[rsp-184],	rax
mov	[rsp-176],	rsp
lea	rbx,	[rsp-192]
sub	rsp,	192
call	f49
add	rsp,	192
mov	rbx,	[rsp]
lea	rax,	[rel+f54]
mov	[rsp-184],	rax
mov	[rsp-176],	rsp
lea	rbx,	[rsp-192]
sub	rsp,	192
call	f49
add	rsp,	192
mov	rbx,	[rsp]
lea	rax,	[rel+f55]
mov	[rsp-184],	rax
mov	[rsp-176],	rsp
lea	rax,	[rsp-168]
mov	[rsp-192],	rax
lea	rbx,	[rsp-192]
sub	rsp,	192
call	f47
add	rsp,	192
mov	rbx,	[rsp]
lea	rbx,	[rsp-168]
sub	rsp,	168
call	f20
add	rsp,	168
mov	rbx,	[rsp]
lea	rbx,	[rsp-200]
lea	rax,	[rel+f9]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-240]
mov	[rsp-272],	rax
mov	qword	[rsp-264],	40
lea	rax,	[rsp-256]
mov	[rsp-280],	rax
lea	rbx,	[rsp-280]
sub	rsp,	280
call	f10
add	rsp,	280
mov	rbx,	[rsp]
lea	rax,	[rsp-256]
mov	[rsp-264],	rax
lea	rbx,	[rsp-296]
lea	rax,	[rel+f14]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-296]
mov	[rsp-304],	rax
lea	rbx,	[rsp-304]
sub	rsp,	304
call	f19
add	rsp,	304
mov	rbx,	[rsp]
lea	rax,	[rsp-256]
mov	[rsp-280],	rax
mov	qword	[rsp-264],	70
mov	qword	[rsp-272],	1
lea	rbx,	[rsp-280]
sub	rsp,	280
call	f11
add	rsp,	280
mov	rbx,	[rsp]
mov	qword	[rsp-272],	2
lea	rbx,	[rsp-280]
sub	rsp,	280
call	f11
add	rsp,	280
mov	rbx,	[rsp]
mov	qword	[rsp-272],	3
lea	rbx,	[rsp-280]
sub	rsp,	280
call	f11
add	rsp,	280
mov	rbx,	[rsp]
mov	qword	[rsp-272],	4
lea	rbx,	[rsp-280]
sub	rsp,	280
call	f11
add	rsp,	280
mov	rbx,	[rsp]
mov	rax,	[rsp-256]
mov	rdx,	[rsp-248]
mov	[rsp-272],	rax
mov	[rsp-264],	rdx
lea	rax,	[rsp-200]
mov	[rsp-280],	rax
lea	rbx,	[rsp-280]
sub	rsp,	280
call	f4
add	rsp,	280
mov	rbx,	[rsp]
mov	qword	[rsp-264],	1749
lea	rax,	[rsp-200]
mov	[rsp-272],	rax
lea	rbx,	[rsp-272]
sub	rsp,	272
call	f8
add	rsp,	272
mov	rbx,	[rsp]
mov	qword	[rsp-264],	102
lea	rax,	[rsp-200]
mov	[rsp-272],	rax
lea	rbx,	[rsp-272]
sub	rsp,	272
call	f5
add	rsp,	272
mov	rbx,	[rsp]
mov	qword	[rsp-264],	0
lea	rax,	[rsp-200]
mov	[rsp-272],	rax
lea	rbx,	[rsp-272]
sub	rsp,	272
call	f8
add	rsp,	272
mov	rbx,	[rsp]
mov	qword	[rsp-264],	90
lea	rax,	[rsp-200]
mov	[rsp-272],	rax
lea	rbx,	[rsp-272]
sub	rsp,	272
call	f5
add	rsp,	272
mov	rbx,	[rsp]
lea	rax,	[rsp-200]
mov	[rsp-264],	rax
lea	rbx,	[rsp-264]
sub	rsp,	264
call	f6
add	rsp,	264
mov	rbx,	[rsp]
lea	rbx,	[rsp-200]
lea	rax,	[rel+f9]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
mov	qword	[rsp-208],	7
lea	rbx,	[rsp-208]
sub	rsp,	208
call	f21
add	rsp,	208
mov	rbx,	[rsp]
mov	[rsp-208],	rax
lea	rax,	[rsp-200]
mov	[rsp-216],	rax
lea	rbx,	[rsp-216]
sub	rsp,	216
call	f8
add	rsp,	216
mov	rbx,	[rsp]
lea	rax,	[rsp-200]
mov	[rsp-208],	rax
lea	rbx,	[rsp-208]
sub	rsp,	208
call	f6
add	rsp,	208
mov	rbx,	[rsp]
lea	rax,	[rsp-192]
mov	[rsp-200],	rax
lea	rax,	[rsp-176]
mov	[rsp-192],	rax
lea	rbx,	[rsp-192]
mov	qword	[rbx+8],	4
mov	rbx,	[rsp]
lea	rbx,	[rsp-200]
sub	rsp,	200
call	f16
add	rsp,	200
mov	rbx,	[rsp]
lea	rbx,	[rsp-208]
lea	rax,	[rel+f9]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-224]
mov	[rsp-232],	rax
lea	rax,	[rsp-176]
mov	[rsp-224],	rax
lea	rbx,	[rsp-224]
mov	qword	[rbx+8],	4
mov	rbx,	[rsp]
lea	rbx,	[rsp-232]
sub	rsp,	232
call	f15
add	rsp,	232
mov	rbx,	[rsp]
mov	[rsp-216],	rax
lea	rax,	[rsp-208]
mov	[rsp-224],	rax
lea	rbx,	[rsp-224]
sub	rsp,	224
call	f8
add	rsp,	224
mov	rbx,	[rsp]
lea	rax,	[rsp-208]
mov	[rsp-216],	rax
lea	rbx,	[rsp-216]
sub	rsp,	216
call	f6
add	rsp,	216
mov	rbx,	[rsp]
lea	rax,	[rsp-224]
mov	[rsp-232],	rax
lea	rax,	[rsp-176]
mov	[rsp-224],	rax
lea	rbx,	[rsp-224]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-232]
sub	rsp,	232
call	f15
add	rsp,	232
mov	rbx,	[rsp]
mov	[rsp-216],	rax
lea	rax,	[rsp-208]
mov	[rsp-224],	rax
lea	rbx,	[rsp-224]
sub	rsp,	224
call	f8
add	rsp,	224
mov	rbx,	[rsp]
lea	rax,	[rsp-208]
mov	[rsp-216],	rax
lea	rbx,	[rsp-216]
sub	rsp,	216
call	f6
add	rsp,	216
mov	rbx,	[rsp]
lea	rbx,	[rsp-208]
lea	rax,	[rel+f9]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-208]
mov	[rsp-224],	rax
mov	rax,	[rsp-176]
mov	[rsp-216],	rax
lea	rbx,	[rsp-224]
sub	rsp,	224
call	f22
add	rsp,	224
mov	rbx,	[rsp]
lea	rax,	[rsp-240]
mov	[rsp-248],	rax
lea	rax,	[rsp-176]
mov	[rsp-240],	rax
lea	rbx,	[rsp-240]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-248]
sub	rsp,	248
call	f16
add	rsp,	248
mov	rbx,	[rsp]
mov	rax,	[rsp-176]
mov	[rsp-216],	rax
lea	rbx,	[rsp-224]
sub	rsp,	224
call	f22
add	rsp,	224
mov	rbx,	[rsp]
mov	qword	[rsp-184],	4
lea	rax,	[rel+f56]
mov	[rsp-200],	rax
mov	[rsp-192],	rsp
lea	rax,	[rsp-168]
mov	[rsp-208],	rax
lea	rbx,	[rsp-208]
sub	rsp,	208
call	f47
add	rsp,	208
mov	rbx,	[rsp]
lea	rax,	[rel+f57]
mov	[rsp-200],	rax
mov	[rsp-192],	rsp
lea	rax,	[rsp-168]
mov	[rsp-208],	rax
lea	rbx,	[rsp-208]
sub	rsp,	208
call	f47
add	rsp,	208
mov	rbx,	[rsp]
lea	rax,	[rsp-216]
mov	[rsp-224],	rax
lea	rbx,	[rsp-216]
lea	rax,	[rel+f9]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-224]
sub	rsp,	224
call	f6
add	rsp,	224
mov	rbx,	[rsp]
mov	qword	[rsp-200],	13
mov	qword	[rsp-192],	2
lea	rbx,	[rsp-200]
sub	rsp,	200
call	f24
add	rsp,	200
mov	rbx,	[rsp]
mov	qword	[rsp-200],	7
mov	qword	[rsp-192],	0
lea	rbx,	[rsp-200]
sub	rsp,	200
call	f24
add	rsp,	200
mov	rbx,	[rsp]
mov	qword	[rsp-200],	0
lea	rax,	[rsp-168]
mov	[rsp-208],	rax
lea	rbx,	[rsp-208]
sub	rsp,	208
call	f43
add	rsp,	208
mov	rbx,	[rsp]
mov	[rsp-192],	rax
mov	rcx,	[rsp-192]
mov	qword	[rcx+0],	0
mov	rcx,	[rsp-192]
mov	qword	[rcx+8],	1
mov	qword	[rsp-200],	1
lea	rax,	[rsp-168]
mov	[rsp-208],	rax
lea	rbx,	[rsp-208]
sub	rsp,	208
call	f43
add	rsp,	208
mov	rbx,	[rsp]
mov	[rsp-192],	rax
mov	rcx,	[rsp-192]
mov	qword	[rcx+0],	2
mov	rcx,	[rsp-192]
mov	qword	[rcx+8],	4
mov	qword	[rsp-200],	2
lea	rax,	[rsp-168]
mov	[rsp-208],	rax
lea	rbx,	[rsp-208]
sub	rsp,	208
call	f43
add	rsp,	208
mov	rbx,	[rsp]
mov	[rsp-192],	rax
mov	rcx,	[rsp-192]
mov	qword	[rcx+0],	2
mov	rcx,	[rsp-192]
mov	qword	[rcx+8],	4
mov	qword	[rsp-200],	3
lea	rax,	[rsp-168]
mov	[rsp-208],	rax
lea	rbx,	[rsp-208]
sub	rsp,	208
call	f43
add	rsp,	208
mov	rbx,	[rsp]
mov	[rsp-192],	rax
mov	rcx,	[rsp-192]
mov	qword	[rcx+0],	0
mov	rcx,	[rsp-192]
mov	qword	[rcx+8],	1
mov	qword	[rsp-200],	4
lea	rax,	[rsp-168]
mov	[rsp-208],	rax
lea	rbx,	[rsp-208]
sub	rsp,	208
call	f43
add	rsp,	208
mov	rbx,	[rsp]
mov	[rsp-192],	rax
mov	rcx,	[rsp-192]
mov	qword	[rcx+0],	2
mov	rcx,	[rsp-192]
mov	qword	[rcx+8],	4
mov	rax,	6
mov	[rsp-200],	rax
mov	rax,	4
xor	rdx,	rdx
mov	qword	rcx,	2
div	qword	rcx
mov	[rsp-208],	rax
mov	rax,	[rsp-200]
sub	rax,	[rsp-208]
mov	[rsp-200],	rax
mov	rax,	5
xor	rdx,	rdx
mov	qword	rcx,	9
mul	qword	rcx
mov	[rsp-208],	rax
mov	rax,	[rsp-200]
add	rax,	[rsp-208]
mov	[rsp-232],	rax
lea	rax,	[rsp-224]
mov	[rsp-240],	rax
lea	rbx,	[rsp-224]
lea	rax,	[rel+f9]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-240]
sub	rsp,	240
call	f8
add	rsp,	240
mov	rbx,	[rsp]
lea	rax,	[rsp-224]
mov	[rsp-232],	rax
lea	rbx,	[rsp-224]
lea	rax,	[rel+f9]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-232]
sub	rsp,	232
call	f6
add	rsp,	232
mov	rbx,	[rsp]
lea	rax,	[rsp-240]
mov	[rsp-272],	rax
mov	qword	[rsp-264],	48
lea	rax,	[rsp-256]
mov	[rsp-280],	rax
lea	rbx,	[rsp-280]
sub	rsp,	280
call	f58
add	rsp,	280
mov	rbx,	[rsp]
lea	rax,	[rsp-168]
mov	[rsp-272],	rax
lea	rax,	[rsp-256]
mov	[rsp-264],	rax
lea	rbx,	[rsp-272]
sub	rsp,	272
call	f39
add	rsp,	272
mov	rbx,	[rsp]
lea	rax,	[rel+f64]
mov	[rsp-272],	rax
mov	[rsp-264],	rsp
lea	rax,	[rsp-256]
mov	[rsp-280],	rax
lea	rbx,	[rsp-280]
sub	rsp,	280
call	f63
add	rsp,	280
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
f6:
push	rbx
mov	qword	[rsp-8],	10
mov	rax,	[rbx+0]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f5
add	rsp,	16
mov	rbx,	[rsp]
pop	rbx
ret
f7:
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
call	f6
add	rsp,	8
mov	rbx,	[rsp]
pop	rbx
ret
f8:
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
call	f3
add	rsp,	64
mov	rbx,	[rsp]
pop	rbx
ret
f9:
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
f10:
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
f11:
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
f12:
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
f13:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
pop	rbx
ret
f14:
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
f15:
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
f16:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
mov	rcx,	[rbx+0]
mov	rcx,	[rcx+0]
mov	[rcx+0],	rax
pop	rbx
ret
f17:
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
f18:
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
f19:
push	rbx
mov	qword	[rsp-8],	67
mov	rax,	[rbx+0]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f5
add	rsp,	16
mov	rbx,	[rsp]
mov	qword	[rsp-8],	76
mov	rax,	[rbx+0]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f5
add	rsp,	16
mov	rbx,	[rsp]
mov	qword	[rsp-8],	79
mov	rax,	[rbx+0]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f5
add	rsp,	16
mov	rbx,	[rsp]
mov	qword	[rsp-8],	83
mov	rax,	[rbx+0]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f5
add	rsp,	16
mov	rbx,	[rsp]
mov	qword	[rsp-8],	69
mov	rax,	[rbx+0]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f5
add	rsp,	16
mov	rbx,	[rsp]
pop	rbx
ret
f20:
push	rbx
lea	rbx,	[rsp-32]
lea	rax,	[rel+f9]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-32]
mov	[rsp-40],	rax
lea	rbx,	[rsp-40]
sub	rsp,	40
call	f19
add	rsp,	40
mov	rbx,	[rsp]
pop	rbx
ret
f21:
push	rbx
mov	rax,	[rbx+0]
cmp	rax,	2
setl	al
movzx	rax,	al
cmp	rax,	0
je	b6
mov	rax,	1
jmp	b7
b6:
mov	rax,	[rbx+0]
mov	[rsp-8],	rax
mov	rax,	[rbx+0]
sub	rax,	1
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f21
add	rsp,	16
mov	rbx,	[rsp]
mov	[rsp-16],	rax
mov	rax,	[rsp-8]
xor	rdx,	rdx
mul	qword	[rsp-16]
b7:
pop	rbx
ret
f22:
push	rbx
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
lea	rax,	[rbx+8]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	0
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f15
add	rsp,	24
mov	rbx,	[rsp]
cmp	rax,	0
je	b8
mov	qword	[rsp-16],	s1
mov	qword	[rsp-8],	3
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f4
add	rsp,	24
mov	rbx,	[rsp]
jmp	b9
b8:
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
lea	rax,	[rbx+8]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	1
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f15
add	rsp,	24
mov	rbx,	[rsp]
cmp	rax,	0
je	b10
mov	qword	[rsp-16],	s2
mov	qword	[rsp-8],	5
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f4
add	rsp,	24
mov	rbx,	[rsp]
jmp	b11
b10:
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
lea	rax,	[rbx+8]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f15
add	rsp,	24
mov	rbx,	[rsp]
cmp	rax,	0
je	b12
mov	qword	[rsp-16],	s3
mov	qword	[rsp-8],	6
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f4
add	rsp,	24
mov	rbx,	[rsp]
jmp	b13
b12:
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
lea	rax,	[rbx+8]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	3
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f15
add	rsp,	24
mov	rbx,	[rsp]
cmp	rax,	0
je	b14
mov	qword	[rsp-16],	s4
mov	qword	[rsp-8],	6
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f4
add	rsp,	24
mov	rbx,	[rsp]
jmp	b15
b14:
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
lea	rax,	[rbx+8]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	4
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f15
add	rsp,	24
mov	rbx,	[rsp]
cmp	rax,	0
je	b16
mov	qword	[rsp-16],	s5
mov	qword	[rsp-8],	4
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f4
add	rsp,	24
mov	rbx,	[rsp]
b16:
b15:
b13:
b11:
b9:
mov	rax,	[rbx+0]
mov	[rsp-8],	rax
lea	rbx,	[rsp-8]
sub	rsp,	8
call	f6
add	rsp,	8
mov	rbx,	[rsp]
pop	rbx
ret
f23:
push	rbx
mov	rax,	[rbx+8]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b17
mov	qword	[rbx+32],	s7
mov	qword	[rbx+40],	22
jmp	b18
b17:
mov	rax,	[rbx+0]
xor	rdx,	rdx
div	qword	[rbx+8]
mov	[rbx+24],	rax
mov	rax,	[rbx+0]
xor	rdx,	rdx
div	qword	[rbx+8]
mov	rax,	rdx
mov	[rbx+16],	rax
b18:
pop	rbx
ret
f24:
push	rbx
lea	rbx,	[rsp-48]
mov	qword	[rbx+32],	s6
mov	qword	[rbx+40],	0
mov	rbx,	[rsp]
mov	rax,	[rbx+0]
mov	[rsp-48],	rax
mov	rax,	[rbx+8]
mov	[rsp-40],	rax
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f23
add	rsp,	48
mov	rbx,	[rsp]
lea	rax,	[rsp-16]
mov	[rsp-56],	rax
lea	rbx,	[rsp-56]
sub	rsp,	56
call	f13
add	rsp,	56
mov	rbx,	[rsp]
cmp	rax,	0
setg	al
movzx	rax,	al
cmp	rax,	0
je	b19
mov	rax,	[rsp-16]
mov	rdx,	[rsp-8]
mov	[rsp-96],	rax
mov	[rsp-88],	rdx
lea	rax,	[rsp-80]
mov	[rsp-104],	rax
lea	rbx,	[rsp-80]
lea	rax,	[rel+f9]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-104]
sub	rsp,	104
call	f7
add	rsp,	104
mov	rbx,	[rsp]
jmp	b20
b19:
lea	rbx,	[rsp-80]
lea	rax,	[rel+f9]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
mov	qword	[rsp-96],	s8
mov	qword	[rsp-88],	10
lea	rax,	[rsp-80]
mov	[rsp-104],	rax
lea	rbx,	[rsp-104]
sub	rsp,	104
call	f4
add	rsp,	104
mov	rbx,	[rsp]
mov	rax,	[rsp-24]
mov	[rsp-88],	rax
lea	rax,	[rsp-80]
mov	[rsp-96],	rax
lea	rbx,	[rsp-96]
sub	rsp,	96
call	f8
add	rsp,	96
mov	rbx,	[rsp]
mov	qword	[rsp-96],	s9
mov	qword	[rsp-88],	5
lea	rax,	[rsp-80]
mov	[rsp-104],	rax
lea	rbx,	[rsp-104]
sub	rsp,	104
call	f4
add	rsp,	104
mov	rbx,	[rsp]
mov	rax,	[rsp-32]
mov	[rsp-88],	rax
lea	rax,	[rsp-80]
mov	[rsp-96],	rax
lea	rbx,	[rsp-96]
sub	rsp,	96
call	f8
add	rsp,	96
mov	rbx,	[rsp]
lea	rax,	[rsp-80]
mov	[rsp-88],	rax
lea	rbx,	[rsp-88]
sub	rsp,	88
call	f6
add	rsp,	88
mov	rbx,	[rsp]
b20:
pop	rbx
ret
f25:
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
f26:
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
mov	rcx,	[rsp-8]
mov	rax,	[rcx+0]
pop	rbx
ret
f27:
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
f28:
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
call	f27
add	rsp,	24
mov	rbx,	[rsp]
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
add	rax,	1
mov	rcx,	[rbx+0]
mov	[rcx+8],	rax
pop	rbx
ret
f29:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
pop	rbx
ret
f30:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+0]
mov	rdx,	[rcx+8]
mov	[rsp-8],	rax
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
mov	[rsp-16],	rax
b21:
mov	rax,	[rsp-16]
cmp	rax,	0
setg	al
movzx	rax,	al
cmp	rax,	0
je	b22
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
jmp	b21
b22:
pop	rbx
ret
f31:
push	rbx
mov	rax,	[rbx+8]
mov	rdx,	[rbx+16]
mov	rcx,	[rbx+0]
mov	[rcx+24],	rax
mov	[rcx+32],	rdx
mov	rcx,	[rbx+0]
mov	qword	[rcx+32],	0
pop	rbx
ret
f32:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+24]
mov	rdx,	[rcx+32]
mov	rcx,	[rbx+0]
add	rax,	[rcx+32]
mov	[rsp-8],	rax
mov	rdx,	[rbx+16]
mov	rax,	[rbx+8]
mov	rbx,	[rsp-8]
sub	rsp,	8
call	rax
add	rsp,	8
mov	rbx,	[rsp]
mov	rcx,	[rbx+0]
mov	rax,	[rcx+32]
mov	rcx,	[rbx+0]
add	rax,	[rcx+16]
mov	rcx,	[rbx+0]
mov	[rcx+32],	rax
mov	rax,	[rsp-8]
mov	[rsp-16],	rax
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f28
add	rsp,	24
mov	rbx,	[rsp]
pop	rbx
ret
f33:
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
f34:
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
mov	rcx,	[rsp-8]
mov	rax,	[rcx+0]
pop	rbx
ret
f35:
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
f36:
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
call	f35
add	rsp,	24
mov	rbx,	[rsp]
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
add	rax,	1
mov	rcx,	[rbx+0]
mov	[rcx+8],	rax
pop	rbx
ret
f37:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
pop	rbx
ret
f38:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+0]
mov	rdx,	[rcx+8]
mov	[rsp-8],	rax
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
mov	[rsp-16],	rax
b23:
mov	rax,	[rsp-16]
cmp	rax,	0
setg	al
movzx	rax,	al
cmp	rax,	0
je	b24
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
jmp	b23
b24:
pop	rbx
ret
f39:
push	rbx
lea	rax,	[rel+f40]
mov	[rsp-16],	rax
mov	[rsp-8],	rsp
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f30
add	rsp,	24
mov	rbx,	[rsp]
pop	rbx
ret
f40:
push	rdx
push	rbx
mov	qword	[rsp-8],	0
lea	rax,	[rel+f41]
mov	[rsp-24],	rax
mov	[rsp-16],	rsp
mov	rcx,	[rsp+8]
mov	rcx,	[rcx]
mov	rax,	[rcx+8]
mov	[rsp-32],	rax
lea	rbx,	[rsp-32]
sub	rsp,	32
call	f38
add	rsp,	32
mov	rbx,	[rsp]
mov	rax,	[rsp-8]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b25
mov	rax,	[rsp-0]
mov	[rsp-16],	rax
mov	rcx,	[rsp+8]
mov	rcx,	[rcx]
mov	rax,	[rcx+8]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f36
add	rsp,	24
mov	rbx,	[rsp]
b25:
pop	rbx
pop	rdx
ret
f41:
push	rdx
push	rbx
mov	rax,	[rbx+0]
mov	rcx,	[rsp+8]
mov	rcx,	[rcx-0]
cmp	rax,	[rcx+0]
sete	al
movzx	rax,	al
mov	[rsp-8],	rax
mov	rax,	[rbx+8]
mov	rcx,	[rsp+8]
mov	rcx,	[rcx-0]
cmp	rax,	[rcx+8]
sete	al
movzx	rax,	al
mov	[rsp-16],	rax
mov	rax,	[rsp-8]
and	rax,	[rsp-16]
cmp	rax,	0
je	b26
mov	rcx,	[rsp+8]
mov	qword	[rcx-8],	1
b26:
pop	rbx
pop	rdx
ret
f42:
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
f43:
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
mov	rcx,	[rsp-8]
mov	rax,	[rcx+0]
pop	rbx
ret
f44:
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
f45:
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
call	f44
add	rsp,	24
mov	rbx,	[rsp]
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
add	rax,	1
mov	rcx,	[rbx+0]
mov	[rcx+8],	rax
pop	rbx
ret
f46:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
pop	rbx
ret
f47:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+0]
mov	rdx,	[rcx+8]
mov	[rsp-8],	rax
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
mov	[rsp-16],	rax
b27:
mov	rax,	[rsp-16]
cmp	rax,	0
setg	al
movzx	rax,	al
cmp	rax,	0
je	b28
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
jmp	b27
b28:
pop	rbx
ret
f48:
push	rbx
mov	rax,	[rbx+8]
mov	rdx,	[rbx+16]
mov	rcx,	[rbx+0]
mov	[rcx+24],	rax
mov	[rcx+32],	rdx
mov	rcx,	[rbx+0]
mov	qword	[rcx+32],	0
pop	rbx
ret
f49:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+24]
mov	rdx,	[rcx+32]
mov	rcx,	[rbx+0]
add	rax,	[rcx+32]
mov	[rsp-8],	rax
mov	rdx,	[rbx+16]
mov	rax,	[rbx+8]
mov	rbx,	[rsp-8]
sub	rsp,	8
call	rax
add	rsp,	8
mov	rbx,	[rsp]
mov	rcx,	[rbx+0]
mov	rax,	[rcx+32]
mov	rcx,	[rbx+0]
add	rax,	[rcx+16]
mov	rcx,	[rbx+0]
mov	[rcx+32],	rax
mov	rax,	[rsp-8]
mov	[rsp-16],	rax
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f45
add	rsp,	24
mov	rbx,	[rsp]
pop	rbx
ret
f50:
push	rdx
push	rbx
mov	qword	[rbx+0],	1
mov	qword	[rbx+8],	0
pop	rbx
pop	rdx
ret
f51:
push	rdx
push	rbx
mov	qword	[rbx+0],	2
mov	qword	[rbx+8],	5
pop	rbx
pop	rdx
ret
f52:
push	rdx
push	rbx
mov	qword	[rbx+0],	0
mov	qword	[rbx+8],	5
pop	rbx
pop	rdx
ret
f53:
push	rdx
push	rbx
mov	qword	[rbx+0],	2
mov	qword	[rbx+8],	7
pop	rbx
pop	rdx
ret
f54:
push	rdx
push	rbx
mov	qword	[rbx+0],	4
mov	qword	[rbx+8],	1
pop	rbx
pop	rdx
ret
f55:
push	rdx
push	rbx
mov	rax,	[rbx+0]
add	rax,	[rbx+8]
mov	[rsp-40],	rax
lea	rax,	[rsp-32]
mov	[rsp-48],	rax
lea	rbx,	[rsp-32]
lea	rax,	[rel+f9]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f8
add	rsp,	48
mov	rbx,	[rsp]
pop	rbx
pop	rdx
ret
f56:
push	rdx
push	rbx
mov	rcx,	[rsp+8]
mov	rax,	[rcx-184]
mov	[rbx+8],	rax
mov	rcx,	[rsp+8]
mov	rax,	[rcx-184]
sub	rax,	1
mov	rcx,	[rsp+8]
mov	[rcx-184],	rax
pop	rbx
pop	rdx
ret
f57:
push	rdx
push	rbx
mov	rax,	[rbx+0]
add	rax,	[rbx+8]
mov	[rsp-40],	rax
lea	rax,	[rsp-32]
mov	[rsp-48],	rax
lea	rbx,	[rsp-32]
lea	rax,	[rel+f9]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f8
add	rsp,	48
mov	rbx,	[rsp]
pop	rbx
pop	rdx
ret
f58:
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
f59:
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
mov	rcx,	[rsp-8]
mov	rax,	[rcx+0]
pop	rbx
ret
f60:
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
f61:
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
call	f60
add	rsp,	24
mov	rbx,	[rsp]
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
add	rax,	1
mov	rcx,	[rbx+0]
mov	[rcx+8],	rax
pop	rbx
ret
f62:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
pop	rbx
ret
f63:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+0]
mov	rdx,	[rcx+8]
mov	[rsp-8],	rax
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
mov	[rsp-16],	rax
b29:
mov	rax,	[rsp-16]
cmp	rax,	0
setg	al
movzx	rax,	al
cmp	rax,	0
je	b30
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
jmp	b29
b30:
pop	rbx
ret
f64:
push	rdx
push	rbx
lea	rbx,	[rsp-32]
lea	rax,	[rel+f9]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
mov	rax,	[rbx+0]
mov	[rsp-40],	rax
lea	rax,	[rsp-32]
mov	[rsp-48],	rax
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f8
add	rsp,	48
mov	rbx,	[rsp]
mov	rax,	[rbx+8]
mov	[rsp-40],	rax
lea	rax,	[rsp-32]
mov	[rsp-48],	rax
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f8
add	rsp,	48
mov	rbx,	[rsp]
lea	rax,	[rsp-32]
mov	[rsp-40],	rax
lea	rbx,	[rsp-40]
sub	rsp,	40
call	f6
add	rsp,	40
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
s6	db	''
s7	db	'Cannot divide by zero!'
s8	db	'Result is '
s9	db	' and '
