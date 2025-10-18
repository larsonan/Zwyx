global	_start
_start:
lea	rbx,	[rsp-80]
lea	rax,	[rel+f1]
mov	[rbx+16],	rax
mov	[rbx+24],	rbx
lea	rax,	[rel+f2]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
lea	rax,	[rel+f3]
mov	[rbx+64],	rax
mov	[rbx+72],	rbx
mov	rbx,	[rsp]
mov	rcx,	static_mem
lea	rax,	[rcx+0]
mov	[rsp-96],	rax
mov	qword	[rsp-88],	80
lea	rax,	[rsp-80]
mov	[rsp-104],	rax
lea	rbx,	[rsp-104]
sub	rsp,	104
call	f4
add	rsp,	104
mov	rbx,	[rsp]
lea	rax,	[rsp-80]
mov	[rsp-104],	rax
lea	rax,	[rel+f5]
mov	[rsp-96],	rax
mov	[rsp-88],	rsp
lea	rbx,	[rsp-104]
sub	rsp,	104
call	f6
add	rsp,	104
mov	rbx,	[rsp]
lea	rax,	[rel+f7]
mov	[rsp-96],	rax
mov	[rsp-88],	rsp
lea	rbx,	[rsp-104]
sub	rsp,	104
call	f6
add	rsp,	104
mov	rbx,	[rsp]
lea	rax,	[rel+f8]
mov	[rsp-96],	rax
mov	[rsp-88],	rsp
lea	rbx,	[rsp-104]
sub	rsp,	104
call	f6
add	rsp,	104
mov	rbx,	[rsp]
lea	rax,	[rel+f9]
mov	[rsp-96],	rax
mov	[rsp-88],	rsp
lea	rbx,	[rsp-104]
sub	rsp,	104
call	f6
add	rsp,	104
mov	rbx,	[rsp]
lea	rax,	[rel+f10]
mov	[rsp-96],	rax
mov	[rsp-88],	rsp
lea	rbx,	[rsp-104]
sub	rsp,	104
call	f6
add	rsp,	104
mov	rbx,	[rsp]
lea	rax,	[rel+f11]
mov	[rsp-96],	rax
mov	[rsp-88],	rsp
lea	rax,	[rsp-80]
mov	[rsp-104],	rax
lea	rbx,	[rsp-104]
sub	rsp,	104
call	f12
add	rsp,	104
mov	rbx,	[rsp]
lea	rbx,	[rsp-80]
sub	rsp,	80
call	f13
add	rsp,	80
mov	rbx,	[rsp]
lea	rbx,	[rsp-112]
lea	rax,	[rel+f14]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-152]
mov	[rsp-184],	rax
mov	qword	[rsp-176],	40
lea	rax,	[rsp-168]
mov	[rsp-192],	rax
lea	rbx,	[rsp-192]
sub	rsp,	192
call	f15
add	rsp,	192
mov	rbx,	[rsp]
lea	rax,	[rsp-168]
mov	[rsp-176],	rax
lea	rbx,	[rsp-208]
lea	rax,	[rel+f16]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-208]
mov	[rsp-216],	rax
lea	rbx,	[rsp-216]
sub	rsp,	216
call	f17
add	rsp,	216
mov	rbx,	[rsp]
lea	rax,	[rsp-168]
mov	[rsp-192],	rax
mov	qword	[rsp-176],	70
mov	qword	[rsp-184],	1
lea	rbx,	[rsp-192]
sub	rsp,	192
call	f18
add	rsp,	192
mov	rbx,	[rsp]
mov	qword	[rsp-184],	2
lea	rbx,	[rsp-192]
sub	rsp,	192
call	f18
add	rsp,	192
mov	rbx,	[rsp]
mov	qword	[rsp-184],	3
lea	rbx,	[rsp-192]
sub	rsp,	192
call	f18
add	rsp,	192
mov	rbx,	[rsp]
mov	qword	[rsp-184],	4
lea	rbx,	[rsp-192]
sub	rsp,	192
call	f18
add	rsp,	192
mov	rbx,	[rsp]
mov	rax,	[rsp-168]
mov	rdx,	[rsp-160]
mov	[rsp-184],	rax
mov	[rsp-176],	rdx
lea	rax,	[rsp-112]
mov	[rsp-192],	rax
lea	rbx,	[rsp-192]
sub	rsp,	192
call	f19
add	rsp,	192
mov	rbx,	[rsp]
mov	qword	[rsp-176],	1749
lea	rax,	[rsp-112]
mov	[rsp-184],	rax
lea	rbx,	[rsp-184]
sub	rsp,	184
call	f20
add	rsp,	184
mov	rbx,	[rsp]
mov	qword	[rsp-176],	102
lea	rax,	[rsp-112]
mov	[rsp-184],	rax
lea	rbx,	[rsp-184]
sub	rsp,	184
call	f21
add	rsp,	184
mov	rbx,	[rsp]
mov	qword	[rsp-176],	0
lea	rax,	[rsp-112]
mov	[rsp-184],	rax
lea	rbx,	[rsp-184]
sub	rsp,	184
call	f20
add	rsp,	184
mov	rbx,	[rsp]
mov	qword	[rsp-176],	90
lea	rax,	[rsp-112]
mov	[rsp-184],	rax
lea	rbx,	[rsp-184]
sub	rsp,	184
call	f21
add	rsp,	184
mov	rbx,	[rsp]
lea	rax,	[rsp-112]
mov	[rsp-176],	rax
lea	rbx,	[rsp-176]
sub	rsp,	176
call	f22
add	rsp,	176
mov	rbx,	[rsp]
lea	rbx,	[rsp-112]
lea	rax,	[rel+f14]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
mov	qword	[rsp-120],	7
lea	rbx,	[rsp-120]
sub	rsp,	120
call	f23
add	rsp,	120
mov	rbx,	[rsp]
mov	[rsp-120],	rax
lea	rax,	[rsp-112]
mov	[rsp-128],	rax
lea	rbx,	[rsp-128]
sub	rsp,	128
call	f20
add	rsp,	128
mov	rbx,	[rsp]
lea	rax,	[rsp-112]
mov	[rsp-120],	rax
lea	rbx,	[rsp-120]
sub	rsp,	120
call	f22
add	rsp,	120
mov	rbx,	[rsp]
lea	rax,	[rsp-104]
mov	[rsp-112],	rax
lea	rax,	[rsp-88]
mov	[rsp-104],	rax
lea	rbx,	[rsp-104]
mov	qword	[rbx+8],	4
mov	rbx,	[rsp]
lea	rbx,	[rsp-112]
sub	rsp,	112
call	f24
add	rsp,	112
mov	rbx,	[rsp]
lea	rbx,	[rsp-120]
lea	rax,	[rel+f14]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-136]
mov	[rsp-144],	rax
lea	rax,	[rsp-88]
mov	[rsp-136],	rax
lea	rbx,	[rsp-136]
mov	qword	[rbx+8],	4
mov	rbx,	[rsp]
lea	rbx,	[rsp-144]
sub	rsp,	144
call	f25
add	rsp,	144
mov	rbx,	[rsp]
mov	[rsp-128],	rax
lea	rax,	[rsp-120]
mov	[rsp-136],	rax
lea	rbx,	[rsp-136]
sub	rsp,	136
call	f20
add	rsp,	136
mov	rbx,	[rsp]
lea	rax,	[rsp-120]
mov	[rsp-128],	rax
lea	rbx,	[rsp-128]
sub	rsp,	128
call	f22
add	rsp,	128
mov	rbx,	[rsp]
lea	rax,	[rsp-136]
mov	[rsp-144],	rax
lea	rax,	[rsp-88]
mov	[rsp-136],	rax
lea	rbx,	[rsp-136]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-144]
sub	rsp,	144
call	f25
add	rsp,	144
mov	rbx,	[rsp]
mov	[rsp-128],	rax
lea	rax,	[rsp-120]
mov	[rsp-136],	rax
lea	rbx,	[rsp-136]
sub	rsp,	136
call	f20
add	rsp,	136
mov	rbx,	[rsp]
lea	rax,	[rsp-120]
mov	[rsp-128],	rax
lea	rbx,	[rsp-128]
sub	rsp,	128
call	f22
add	rsp,	128
mov	rbx,	[rsp]
lea	rbx,	[rsp-120]
lea	rax,	[rel+f14]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-120]
mov	[rsp-136],	rax
mov	rax,	[rsp-88]
mov	[rsp-128],	rax
lea	rbx,	[rsp-136]
sub	rsp,	136
call	f26
add	rsp,	136
mov	rbx,	[rsp]
lea	rax,	[rsp-152]
mov	[rsp-160],	rax
lea	rax,	[rsp-88]
mov	[rsp-152],	rax
lea	rbx,	[rsp-152]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-160]
sub	rsp,	160
call	f24
add	rsp,	160
mov	rbx,	[rsp]
mov	rax,	[rsp-88]
mov	[rsp-128],	rax
lea	rbx,	[rsp-136]
sub	rsp,	136
call	f26
add	rsp,	136
mov	rbx,	[rsp]
mov	qword	[rsp-96],	4
lea	rax,	[rel+f27]
mov	[rsp-112],	rax
mov	[rsp-104],	rsp
lea	rax,	[rsp-80]
mov	[rsp-120],	rax
lea	rbx,	[rsp-120]
sub	rsp,	120
call	f12
add	rsp,	120
mov	rbx,	[rsp]
lea	rax,	[rel+f28]
mov	[rsp-112],	rax
mov	[rsp-104],	rsp
lea	rax,	[rsp-80]
mov	[rsp-120],	rax
lea	rbx,	[rsp-120]
sub	rsp,	120
call	f12
add	rsp,	120
mov	rbx,	[rsp]
lea	rax,	[rsp-128]
mov	[rsp-136],	rax
lea	rbx,	[rsp-128]
lea	rax,	[rel+f14]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-136]
sub	rsp,	136
call	f22
add	rsp,	136
mov	rbx,	[rsp]
mov	qword	[rsp-112],	13
mov	qword	[rsp-104],	2
lea	rbx,	[rsp-112]
sub	rsp,	112
call	f29
add	rsp,	112
mov	rbx,	[rsp]
mov	qword	[rsp-112],	7
mov	qword	[rsp-104],	0
lea	rbx,	[rsp-112]
sub	rsp,	112
call	f29
add	rsp,	112
mov	rbx,	[rsp]
lea	rax,	[rsp-80]
mov	[rsp-112],	rax
mov	qword	[rsp-104],	0
lea	rbx,	[rsp-112]
sub	rsp,	112
call	f30
add	rsp,	112
mov	rbx,	[rsp]
mov	[rsp-120],	rax
mov	rcx,	[rsp-120]
mov	qword	[rcx+0],	0
mov	rcx,	[rsp-120]
mov	qword	[rcx+8],	1
mov	qword	[rsp-104],	1
lea	rbx,	[rsp-112]
sub	rsp,	112
call	f30
add	rsp,	112
mov	rbx,	[rsp]
mov	[rsp-120],	rax
mov	rcx,	[rsp-120]
mov	qword	[rcx+0],	2
mov	rcx,	[rsp-120]
mov	qword	[rcx+8],	4
mov	qword	[rsp-104],	2
lea	rbx,	[rsp-112]
sub	rsp,	112
call	f30
add	rsp,	112
mov	rbx,	[rsp]
mov	[rsp-120],	rax
mov	rcx,	[rsp-120]
mov	qword	[rcx+0],	2
mov	rcx,	[rsp-120]
mov	qword	[rcx+8],	4
mov	qword	[rsp-104],	3
lea	rbx,	[rsp-112]
sub	rsp,	112
call	f30
add	rsp,	112
mov	rbx,	[rsp]
mov	[rsp-120],	rax
mov	rcx,	[rsp-120]
mov	qword	[rcx+0],	0
mov	rcx,	[rsp-120]
mov	qword	[rcx+8],	1
mov	qword	[rsp-104],	4
lea	rbx,	[rsp-112]
sub	rsp,	112
call	f30
add	rsp,	112
mov	rbx,	[rsp]
mov	[rsp-120],	rax
mov	rcx,	[rsp-120]
mov	qword	[rcx+0],	2
mov	rcx,	[rsp-120]
mov	qword	[rcx+8],	4
mov	rax,	6
mov	[rsp-104],	rax
mov	rax,	4
xor	rdx,	rdx
mov	qword	rcx,	2
div	qword	rcx
mov	[rsp-112],	rax
mov	rax,	[rsp-104]
sub	rax,	[rsp-112]
mov	[rsp-104],	rax
mov	rax,	5
xor	rdx,	rdx
mov	qword	rcx,	9
mul	qword	rcx
mov	[rsp-112],	rax
mov	rax,	[rsp-104]
add	rax,	[rsp-112]
mov	[rsp-136],	rax
lea	rax,	[rsp-128]
mov	[rsp-144],	rax
lea	rbx,	[rsp-128]
lea	rax,	[rel+f14]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-144]
sub	rsp,	144
call	f20
add	rsp,	144
mov	rbx,	[rsp]
lea	rax,	[rsp-128]
mov	[rsp-136],	rax
lea	rbx,	[rsp-128]
lea	rax,	[rel+f14]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-136]
sub	rsp,	136
call	f22
add	rsp,	136
mov	rbx,	[rsp]
lea	rbx,	[rsp-224]
lea	rax,	[rel+f31]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
lea	rax,	[rel+f32]
mov	[rbx+16],	rax
mov	[rbx+24],	rbx
mov	rax,	[rbx+80]
lea	rax,	[rel+f33]
mov	[rbx+64],	rax
mov	[rbx+72],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-144]
mov	[rsp-240],	rax
mov	qword	[rsp-232],	48
lea	rax,	[rsp-224]
mov	[rsp-248],	rax
lea	rbx,	[rsp-248]
sub	rsp,	248
call	f34
add	rsp,	248
mov	rbx,	[rsp]
lea	rax,	[rsp-80]
mov	[rsp-240],	rax
lea	rax,	[rsp-224]
mov	[rsp-232],	rax
lea	rbx,	[rsp-240]
sub	rsp,	240
call	f35
add	rsp,	240
mov	rbx,	[rsp]
lea	rax,	[rel+f36]
mov	[rsp-240],	rax
mov	[rsp-232],	rsp
lea	rax,	[rsp-224]
mov	[rsp-248],	rax
lea	rbx,	[rsp-248]
sub	rsp,	248
call	f37
add	rsp,	248
mov	rbx,	[rsp]
mov	qword	[rsp-272],	s10
mov	qword	[rsp-264],	23
lea	rax,	[rsp-256]
mov	[rsp-280],	rax
lea	rbx,	[rsp-256]
lea	rax,	[rel+f14]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-280]
sub	rsp,	280
call	f38
add	rsp,	280
mov	rbx,	[rsp]
lea	rax,	[rsp-264]
mov	[rsp-336],	rax
mov	qword	[rsp-328],	40
lea	rax,	[rsp-320]
mov	[rsp-344],	rax
lea	rbx,	[rsp-344]
sub	rsp,	344
call	f15
add	rsp,	344
mov	rbx,	[rsp]
mov	qword	[rsp-344],	s11
mov	qword	[rsp-336],	5
lea	rax,	[rsp-320]
mov	[rsp-328],	rax
lea	rbx,	[rsp-360]
lea	rax,	[rel+f16]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-360]
sub	rsp,	360
call	f39
add	rsp,	360
mov	rbx,	[rsp]
lea	rax,	[rsp-304]
mov	[rsp-352],	rax
mov	qword	[rsp-344],	40
lea	rax,	[rsp-336]
mov	[rsp-360],	rax
lea	rbx,	[rsp-360]
sub	rsp,	360
call	f15
add	rsp,	360
mov	rbx,	[rsp]
mov	qword	[rsp-360],	s12
mov	qword	[rsp-352],	5
lea	rax,	[rsp-336]
mov	[rsp-344],	rax
lea	rbx,	[rsp-376]
lea	rax,	[rel+f16]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-376]
sub	rsp,	376
call	f39
add	rsp,	376
mov	rbx,	[rsp]
lea	rax,	[rsp-352]
mov	[rsp-376],	rax
mov	qword	[rsp-368],	1
mov	qword	[rsp-360],	71
lea	rax,	[rsp-320]
mov	[rsp-376],	rax
lea	rbx,	[rsp-376]
sub	rsp,	376
call	f18
add	rsp,	376
mov	rbx,	[rsp]
lea	rax,	[rsp-336]
mov	[rsp-376],	rax
lea	rbx,	[rsp-376]
sub	rsp,	376
call	f18
add	rsp,	376
mov	rbx,	[rsp]
lea	rbx,	[rsp-368]
lea	rax,	[rel+f14]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
mov	rax,	[rsp-320]
mov	rdx,	[rsp-312]
mov	[rsp-384],	rax
mov	[rsp-376],	rdx
lea	rax,	[rsp-368]
mov	[rsp-392],	rax
lea	rbx,	[rsp-392]
sub	rsp,	392
call	f19
add	rsp,	392
mov	rbx,	[rsp]
lea	rax,	[rsp-368]
mov	[rsp-376],	rax
lea	rbx,	[rsp-376]
sub	rsp,	376
call	f22
add	rsp,	376
mov	rbx,	[rsp]
mov	rax,	[rsp-336]
mov	rdx,	[rsp-328]
mov	[rsp-384],	rax
mov	[rsp-376],	rdx
lea	rax,	[rsp-368]
mov	[rsp-392],	rax
lea	rbx,	[rsp-392]
sub	rsp,	392
call	f19
add	rsp,	392
mov	rbx,	[rsp]
lea	rax,	[rsp-368]
mov	[rsp-376],	rax
lea	rbx,	[rsp-376]
sub	rsp,	376
call	f22
add	rsp,	376
mov	rbx,	[rsp]
mov	rax,	60
mov	rdi,	0
syscall
f1:
push	rdx
push	rbx
mov	rcx,	[rsp+8]
mov	rax,	[rcx+40]
mov	rdx,	[rcx+48]
mov	[rsp-8],	rax
lea	rbx,	[rsp-48]
mov	qword	[rbx+0],	0
mov	qword	[rbx+16],	1
mov	rbx,	[rsp]
mov	rcx,	[rsp+8]
mov	rax,	[rcx+56]
mov	[rsp-40],	rax
lea	rax,	[rel+f40]
mov	[rsp-24],	rax
mov	[rsp-16],	rsp
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f41
add	rsp,	48
mov	rbx,	[rsp]
pop	rbx
pop	rdx
ret
f2:
push	rdx
push	rbx
mov	rcx,	[rsp+8]
mov	rax,	[rcx+40]
mov	rdx,	[rcx+48]
mov	[rsp-8],	rax
mov	rax,	[rbx+8]
xor	rdx,	rdx
mov	qword	rcx,	16
mul	qword	rcx
mov	[rsp-16],	rax
mov	rax,	[rsp-8]
add	rax,	[rsp-16]
pop	rbx
pop	rdx
ret
f3:
push	rdx
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+40]
mov	rdx,	[rcx+48]
mov	[rsp-16],	rax
mov	rcx,	[rbx+0]
mov	rax,	[rcx+56]
xor	rdx,	rdx
mov	qword	rcx,	16
mul	qword	rcx
mov	[rsp-24],	rax
mov	rax,	[rsp-16]
add	rax,	[rsp-24]
mov	[rsp-8],	rax
mov	rdx,	[rbx+16]
mov	rax,	[rbx+8]
mov	rbx,	[rsp-8]
sub	rsp,	8
call	rax
add	rsp,	8
mov	rbx,	[rsp]
mov	rcx,	[rbx+0]
mov	rax,	[rcx+56]
add	rax,	1
mov	rcx,	[rbx+0]
mov	[rcx+56],	rax
pop	rbx
pop	rdx
ret
f4:
push	rbx
mov	rcx,	[rbx+0]
mov	qword	[rcx+56],	0
mov	rax,	[rbx+8]
mov	rdx,	[rbx+16]
mov	rcx,	[rbx+0]
mov	[rcx+40],	rax
mov	[rcx+48],	rdx
pop	rbx
ret
f5:
push	rdx
push	rbx
mov	qword	[rbx+0],	1
mov	qword	[rbx+8],	0
pop	rbx
pop	rdx
ret
f6:
push	rbx
mov	rcx,	[rbx+0]
mov	rdx,	[rcx+72]
mov	rax,	[rcx+64]
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
mov	qword	[rbx+0],	2
mov	qword	[rbx+8],	5
pop	rbx
pop	rdx
ret
f8:
push	rdx
push	rbx
mov	qword	[rbx+0],	0
mov	qword	[rbx+8],	5
pop	rbx
pop	rdx
ret
f9:
push	rdx
push	rbx
mov	qword	[rbx+0],	2
mov	qword	[rbx+8],	7
pop	rbx
pop	rdx
ret
f10:
push	rdx
push	rbx
mov	qword	[rbx+0],	4
mov	qword	[rbx+8],	1
pop	rbx
pop	rdx
ret
f11:
push	rdx
push	rbx
mov	rax,	[rbx+0]
add	rax,	[rbx+8]
mov	[rsp-40],	rax
lea	rax,	[rsp-32]
mov	[rsp-48],	rax
lea	rbx,	[rsp-32]
lea	rax,	[rel+f14]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f20
add	rsp,	48
mov	rbx,	[rsp]
pop	rbx
pop	rdx
ret
f12:
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
f13:
push	rbx
lea	rbx,	[rsp-32]
lea	rax,	[rel+f14]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-32]
mov	[rsp-40],	rax
lea	rbx,	[rsp-40]
sub	rsp,	40
call	f17
add	rsp,	40
mov	rbx,	[rsp]
pop	rbx
ret
f14:
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
call	f42
add	rsp,	80
mov	rbx,	[rsp]
pop	rbx
pop	rdx
ret
f15:
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
f16:
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
call	f43
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
f17:
push	rbx
mov	qword	[rsp-8],	67
mov	rax,	[rbx+0]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f21
add	rsp,	16
mov	rbx,	[rsp]
mov	qword	[rsp-8],	76
mov	rax,	[rbx+0]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f21
add	rsp,	16
mov	rbx,	[rsp]
mov	qword	[rsp-8],	79
mov	rax,	[rbx+0]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f21
add	rsp,	16
mov	rbx,	[rsp]
mov	qword	[rsp-8],	83
mov	rax,	[rbx+0]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f21
add	rsp,	16
mov	rbx,	[rsp]
mov	qword	[rsp-8],	69
mov	rax,	[rbx+0]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f21
add	rsp,	16
mov	rbx,	[rsp]
pop	rbx
ret
f18:
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
f19:
push	rbx
mov	rax,	[rbx+8]
mov	rdx,	[rbx+16]
mov	rcx,	[rbx+0]
mov	[rcx+16],	rax
mov	[rcx+24],	rdx
mov	rbx,	[rbx+0]
sub	rsp,	0
call	f39
add	rsp,	0
mov	rbx,	[rsp]
pop	rbx
ret
f20:
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
call	f39
add	rsp,	64
mov	rbx,	[rsp]
pop	rbx
ret
f21:
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
call	f39
add	rsp,	8
mov	rbx,	[rsp]
pop	rbx
ret
f22:
push	rbx
mov	qword	[rsp-8],	10
mov	rax,	[rbx+0]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f21
add	rsp,	16
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
je	b2
mov	rax,	1
jmp	b3
b2:
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
b3:
pop	rbx
ret
f24:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
mov	rcx,	[rbx+0]
mov	rcx,	[rcx+0]
mov	[rcx+0],	rax
pop	rbx
ret
f25:
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
f26:
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
call	f25
add	rsp,	24
mov	rbx,	[rsp]
cmp	rax,	0
je	b4
mov	qword	[rsp-16],	s1
mov	qword	[rsp-8],	3
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f19
add	rsp,	24
mov	rbx,	[rsp]
jmp	b5
b4:
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
lea	rax,	[rbx+8]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	1
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f25
add	rsp,	24
mov	rbx,	[rsp]
cmp	rax,	0
je	b6
mov	qword	[rsp-16],	s2
mov	qword	[rsp-8],	5
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f19
add	rsp,	24
mov	rbx,	[rsp]
jmp	b7
b6:
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
lea	rax,	[rbx+8]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f25
add	rsp,	24
mov	rbx,	[rsp]
cmp	rax,	0
je	b8
mov	qword	[rsp-16],	s3
mov	qword	[rsp-8],	6
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f19
add	rsp,	24
mov	rbx,	[rsp]
jmp	b9
b8:
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
lea	rax,	[rbx+8]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	3
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f25
add	rsp,	24
mov	rbx,	[rsp]
cmp	rax,	0
je	b10
mov	qword	[rsp-16],	s4
mov	qword	[rsp-8],	6
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f19
add	rsp,	24
mov	rbx,	[rsp]
jmp	b11
b10:
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
lea	rax,	[rbx+8]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	4
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f25
add	rsp,	24
mov	rbx,	[rsp]
cmp	rax,	0
je	b12
mov	qword	[rsp-16],	s5
mov	qword	[rsp-8],	4
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f19
add	rsp,	24
mov	rbx,	[rsp]
b12:
b11:
b9:
b7:
b5:
mov	rax,	[rbx+0]
mov	[rsp-8],	rax
lea	rbx,	[rsp-8]
sub	rsp,	8
call	f22
add	rsp,	8
mov	rbx,	[rsp]
pop	rbx
ret
f27:
push	rdx
push	rbx
mov	rcx,	[rsp+8]
mov	rax,	[rcx-96]
mov	[rbx+8],	rax
mov	rcx,	[rsp+8]
mov	rax,	[rcx-96]
sub	rax,	1
mov	rcx,	[rsp+8]
mov	[rcx-96],	rax
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
lea	rax,	[rel+f14]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f20
add	rsp,	48
mov	rbx,	[rsp]
pop	rbx
pop	rdx
ret
f29:
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
call	f44
add	rsp,	48
mov	rbx,	[rsp]
lea	rax,	[rsp-16]
mov	[rsp-56],	rax
lea	rbx,	[rsp-56]
sub	rsp,	56
call	f45
add	rsp,	56
mov	rbx,	[rsp]
cmp	rax,	0
setg	al
movzx	rax,	al
cmp	rax,	0
je	b13
mov	rax,	[rsp-16]
mov	rdx,	[rsp-8]
mov	[rsp-96],	rax
mov	[rsp-88],	rdx
lea	rax,	[rsp-80]
mov	[rsp-104],	rax
lea	rbx,	[rsp-80]
lea	rax,	[rel+f14]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-104]
sub	rsp,	104
call	f38
add	rsp,	104
mov	rbx,	[rsp]
jmp	b14
b13:
lea	rbx,	[rsp-80]
lea	rax,	[rel+f14]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
mov	qword	[rsp-96],	s8
mov	qword	[rsp-88],	10
lea	rax,	[rsp-80]
mov	[rsp-104],	rax
lea	rbx,	[rsp-104]
sub	rsp,	104
call	f19
add	rsp,	104
mov	rbx,	[rsp]
mov	rax,	[rsp-24]
mov	[rsp-88],	rax
lea	rax,	[rsp-80]
mov	[rsp-96],	rax
lea	rbx,	[rsp-96]
sub	rsp,	96
call	f20
add	rsp,	96
mov	rbx,	[rsp]
mov	qword	[rsp-96],	s9
mov	qword	[rsp-88],	5
lea	rax,	[rsp-80]
mov	[rsp-104],	rax
lea	rbx,	[rsp-104]
sub	rsp,	104
call	f19
add	rsp,	104
mov	rbx,	[rsp]
mov	rax,	[rsp-32]
mov	[rsp-88],	rax
lea	rax,	[rsp-80]
mov	[rsp-96],	rax
lea	rbx,	[rsp-96]
sub	rsp,	96
call	f20
add	rsp,	96
mov	rbx,	[rsp]
lea	rax,	[rsp-80]
mov	[rsp-88],	rax
lea	rbx,	[rsp-88]
sub	rsp,	88
call	f22
add	rsp,	88
mov	rbx,	[rsp]
b14:
pop	rbx
ret
f30:
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
f31:
push	rdx
push	rbx
mov	rcx,	[rsp+8]
mov	rax,	[rcx+40]
mov	rdx,	[rcx+48]
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
pop	rdx
ret
f32:
push	rdx
push	rbx
mov	rcx,	[rsp+8]
mov	rax,	[rcx+40]
mov	rdx,	[rcx+48]
mov	[rsp-8],	rax
mov	rcx,	[rsp+8]
mov	rax,	[rcx+56]
mov	[rsp-16],	rax
b15:
mov	rax,	[rsp-16]
cmp	rax,	0
setg	al
movzx	rax,	al
cmp	rax,	0
je	b16
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
jmp	b15
b16:
pop	rbx
pop	rdx
ret
f33:
push	rdx
push	rbx
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
mov	rcx,	[rbx+0]
mov	rax,	[rcx+56]
mov	[rsp-16],	rax
mov	rax,	[rbx+8]
mov	[rsp-8],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f46
add	rsp,	24
mov	rbx,	[rsp]
mov	rcx,	[rbx+0]
mov	rax,	[rcx+56]
add	rax,	1
mov	rcx,	[rbx+0]
mov	[rcx+56],	rax
pop	rbx
pop	rdx
ret
f34:
push	rbx
mov	rax,	[rbx+8]
mov	rdx,	[rbx+16]
mov	rcx,	[rbx+0]
mov	[rcx+40],	rax
mov	[rcx+48],	rdx
mov	rcx,	[rbx+0]
mov	qword	[rcx+56],	0
pop	rbx
ret
f35:
push	rbx
lea	rax,	[rel+f47]
mov	[rsp-16],	rax
mov	[rsp-8],	rsp
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f48
add	rsp,	24
mov	rbx,	[rsp]
pop	rbx
ret
f36:
push	rdx
push	rbx
lea	rbx,	[rsp-32]
lea	rax,	[rel+f14]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
mov	rax,	[rbx+0]
mov	[rsp-40],	rax
lea	rax,	[rsp-32]
mov	[rsp-48],	rax
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f20
add	rsp,	48
mov	rbx,	[rsp]
mov	rax,	[rbx+8]
mov	[rsp-40],	rax
lea	rax,	[rsp-32]
mov	[rsp-48],	rax
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f20
add	rsp,	48
mov	rbx,	[rsp]
lea	rax,	[rsp-32]
mov	[rsp-40],	rax
lea	rbx,	[rsp-40]
sub	rsp,	40
call	f22
add	rsp,	40
mov	rbx,	[rsp]
pop	rbx
pop	rdx
ret
f37:
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
f38:
push	rbx
mov	rax,	[rbx+8]
mov	rdx,	[rbx+16]
mov	[rsp-16],	rax
mov	[rsp-8],	rdx
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f19
add	rsp,	24
mov	rbx,	[rsp]
mov	rax,	[rbx+0]
mov	[rsp-8],	rax
lea	rbx,	[rsp-8]
sub	rsp,	8
call	f22
add	rsp,	8
mov	rbx,	[rsp]
pop	rbx
ret
f39:
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
f40:
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
add	rax,	16
mov	rcx,	[rsp+8]
mov	[rcx-8],	rax
pop	rbx
pop	rdx
ret
f41:
push	rbx
b17:
mov	rax,	[rbx+0]
cmp	rax,	[rbx+8]
setl	al
movzx	rax,	al
cmp	rax,	0
je	b18
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
jmp	b17
b18:
pop	rbx
ret
f42:
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
call	f49
add	rsp,	0
mov	rbx,	[rsp]
pop	rbx
ret
f43:
push	rbx
mov	rax,	[rbx+0]
mov	rdx,	[rbx+8]
mov	[rsp-8],	rax
mov	rax,	[rbx+16]
mov	rdx,	[rbx+24]
mov	[rsp-16],	rax
mov	rax,	[rbx+8]
mov	[rsp-24],	rax
b19:
mov	rax,	[rsp-24]
cmp	rax,	0
setg	al
movzx	rax,	al
cmp	rax,	0
je	b20
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
jmp	b19
b20:
pop	rbx
ret
f44:
push	rbx
mov	rax,	[rbx+8]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b21
mov	qword	[rbx+32],	s7
mov	qword	[rbx+40],	22
jmp	b22
b21:
mov	rax,	[rbx+0]
xor	rdx,	rdx
div	qword	[rbx+8]
mov	[rbx+24],	rax
mov	rax,	[rbx+0]
xor	rdx,	rdx
div	qword	[rbx+8]
mov	rax,	rdx
mov	[rbx+16],	rax
b22:
pop	rbx
ret
f45:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
pop	rbx
ret
f46:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+40]
mov	rdx,	[rcx+48]
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
f47:
push	rdx
push	rbx
mov	qword	[rsp-8],	0
lea	rax,	[rel+f50]
mov	[rsp-24],	rax
mov	[rsp-16],	rsp
mov	rcx,	[rsp+8]
mov	rcx,	[rcx]
mov	rax,	[rcx+8]
mov	[rsp-32],	rax
lea	rbx,	[rsp-32]
sub	rsp,	32
call	f51
add	rsp,	32
mov	rbx,	[rsp]
mov	rax,	[rsp-8]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b23
mov	rax,	[rsp-0]
mov	[rsp-16],	rax
mov	rcx,	[rsp+8]
mov	rcx,	[rcx]
mov	rax,	[rcx+8]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f52
add	rsp,	24
mov	rbx,	[rsp]
b23:
pop	rbx
pop	rdx
ret
f48:
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
f49:
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
f50:
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
je	b24
mov	rcx,	[rsp+8]
mov	qword	[rcx-8],	1
b24:
pop	rbx
pop	rdx
ret
f51:
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
f52:
push	rbx
mov	rcx,	[rbx+0]
mov	rdx,	[rcx+72]
mov	rax,	[rcx+64]
lea	rbx,	[rbx+0]
sub	rsp,	8
call	rax
add	rsp,	8
mov	rbx,	[rsp]
pop	rbx
ret
SECTION .bss
static_mem	resb	80
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
s10	db	'This is in fact a line.'
s11	db	'FIRST'
s12	db	'AFTER'
