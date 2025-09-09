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
lea	rbx,	[rsp-56]
lea	rax,	[rel+f70]
mov	[rbx+40],	rax
mov	[rbx+48],	rbx
lea	rax,	[rel+f72]
mov	[rbx+24],	rax
mov	[rbx+32],	rbx
mov	rbx,	[rsp]
mov	rcx,	static_mem
lea	rax,	[rcx+488]
mov	[rsp-72],	rax
mov	qword	[rsp-64],	80
lea	rax,	[rsp-56]
mov	[rsp-80],	rax
lea	rbx,	[rsp-80]
sub	rsp,	80
call	f74
add	rsp,	80
mov	rbx,	[rsp]
lea	rax,	[rsp-56]
mov	[rsp-80],	rax
lea	rax,	[rel+f75]
mov	[rsp-72],	rax
mov	[rsp-64],	rsp
lea	rbx,	[rsp-80]
sub	rsp,	80
call	f68
add	rsp,	80
mov	rbx,	[rsp]
lea	rax,	[rel+f76]
mov	[rsp-72],	rax
mov	[rsp-64],	rsp
lea	rbx,	[rsp-80]
sub	rsp,	80
call	f68
add	rsp,	80
mov	rbx,	[rsp]
lea	rax,	[rel+f77]
mov	[rsp-72],	rax
mov	[rsp-64],	rsp
lea	rbx,	[rsp-80]
sub	rsp,	80
call	f68
add	rsp,	80
mov	rbx,	[rsp]
lea	rax,	[rel+f78]
mov	[rsp-72],	rax
mov	[rsp-64],	rsp
lea	rbx,	[rsp-80]
sub	rsp,	80
call	f68
add	rsp,	80
mov	rbx,	[rsp]
lea	rax,	[rel+f79]
mov	[rsp-72],	rax
mov	[rsp-64],	rsp
lea	rbx,	[rsp-80]
sub	rsp,	80
call	f68
add	rsp,	80
mov	rbx,	[rsp]
lea	rax,	[rel+f80]
mov	[rsp-72],	rax
mov	[rsp-64],	rsp
lea	rax,	[rsp-56]
mov	[rsp-80],	rax
lea	rbx,	[rsp-80]
sub	rsp,	80
call	f69
add	rsp,	80
mov	rbx,	[rsp]
lea	rbx,	[rsp-56]
sub	rsp,	56
call	f46
add	rsp,	56
mov	rbx,	[rsp]
lea	rbx,	[rsp-88]
lea	rax,	[rel+f13]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-128]
mov	[rsp-160],	rax
mov	qword	[rsp-152],	40
lea	rax,	[rsp-144]
mov	[rsp-168],	rax
lea	rbx,	[rsp-168]
sub	rsp,	168
call	f19
add	rsp,	168
mov	rbx,	[rsp]
lea	rax,	[rsp-144]
mov	[rsp-152],	rax
lea	rbx,	[rsp-184]
lea	rax,	[rel+f20]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-184]
mov	[rsp-192],	rax
lea	rbx,	[rsp-192]
sub	rsp,	192
call	f45
add	rsp,	192
mov	rbx,	[rsp]
lea	rax,	[rsp-144]
mov	[rsp-168],	rax
mov	qword	[rsp-152],	70
mov	qword	[rsp-160],	1
lea	rbx,	[rsp-168]
sub	rsp,	168
call	f16
add	rsp,	168
mov	rbx,	[rsp]
mov	qword	[rsp-160],	2
lea	rbx,	[rsp-168]
sub	rsp,	168
call	f16
add	rsp,	168
mov	rbx,	[rsp]
mov	qword	[rsp-160],	3
lea	rbx,	[rsp-168]
sub	rsp,	168
call	f16
add	rsp,	168
mov	rbx,	[rsp]
mov	qword	[rsp-160],	4
lea	rbx,	[rsp-168]
sub	rsp,	168
call	f16
add	rsp,	168
mov	rbx,	[rsp]
mov	rax,	[rsp-144]
mov	rdx,	[rsp-136]
mov	[rsp-160],	rax
mov	[rsp-152],	rdx
lea	rax,	[rsp-88]
mov	[rsp-168],	rax
lea	rbx,	[rsp-168]
sub	rsp,	168
call	f8
add	rsp,	168
mov	rbx,	[rsp]
mov	qword	[rsp-152],	1749
lea	rax,	[rsp-88]
mov	[rsp-160],	rax
lea	rbx,	[rsp-160]
sub	rsp,	160
call	f12
add	rsp,	160
mov	rbx,	[rsp]
mov	qword	[rsp-152],	102
lea	rax,	[rsp-88]
mov	[rsp-160],	rax
lea	rbx,	[rsp-160]
sub	rsp,	160
call	f9
add	rsp,	160
mov	rbx,	[rsp]
mov	qword	[rsp-152],	0
lea	rax,	[rsp-88]
mov	[rsp-160],	rax
lea	rbx,	[rsp-160]
sub	rsp,	160
call	f12
add	rsp,	160
mov	rbx,	[rsp]
mov	qword	[rsp-152],	90
lea	rax,	[rsp-88]
mov	[rsp-160],	rax
lea	rbx,	[rsp-160]
sub	rsp,	160
call	f9
add	rsp,	160
mov	rbx,	[rsp]
lea	rax,	[rsp-88]
mov	[rsp-152],	rax
lea	rbx,	[rsp-152]
sub	rsp,	152
call	f10
add	rsp,	152
mov	rbx,	[rsp]
lea	rbx,	[rsp-88]
lea	rax,	[rel+f13]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
mov	qword	[rsp-96],	7
lea	rbx,	[rsp-96]
sub	rsp,	96
call	f47
add	rsp,	96
mov	rbx,	[rsp]
mov	[rsp-96],	rax
lea	rax,	[rsp-88]
mov	[rsp-104],	rax
lea	rbx,	[rsp-104]
sub	rsp,	104
call	f12
add	rsp,	104
mov	rbx,	[rsp]
lea	rax,	[rsp-88]
mov	[rsp-96],	rax
lea	rbx,	[rsp-96]
sub	rsp,	96
call	f10
add	rsp,	96
mov	rbx,	[rsp]
lea	rax,	[rsp-80]
mov	[rsp-88],	rax
lea	rax,	[rsp-64]
mov	[rsp-80],	rax
lea	rbx,	[rsp-80]
mov	qword	[rbx+8],	4
mov	rbx,	[rsp]
lea	rbx,	[rsp-88]
sub	rsp,	88
call	f22
add	rsp,	88
mov	rbx,	[rsp]
lea	rbx,	[rsp-96]
lea	rax,	[rel+f13]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-112]
mov	[rsp-120],	rax
lea	rax,	[rsp-64]
mov	[rsp-112],	rax
lea	rbx,	[rsp-112]
mov	qword	[rbx+8],	4
mov	rbx,	[rsp]
lea	rbx,	[rsp-120]
sub	rsp,	120
call	f21
add	rsp,	120
mov	rbx,	[rsp]
mov	[rsp-104],	rax
lea	rax,	[rsp-96]
mov	[rsp-112],	rax
lea	rbx,	[rsp-112]
sub	rsp,	112
call	f12
add	rsp,	112
mov	rbx,	[rsp]
lea	rax,	[rsp-96]
mov	[rsp-104],	rax
lea	rbx,	[rsp-104]
sub	rsp,	104
call	f10
add	rsp,	104
mov	rbx,	[rsp]
lea	rax,	[rsp-112]
mov	[rsp-120],	rax
lea	rax,	[rsp-64]
mov	[rsp-112],	rax
lea	rbx,	[rsp-112]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-120]
sub	rsp,	120
call	f21
add	rsp,	120
mov	rbx,	[rsp]
mov	[rsp-104],	rax
lea	rax,	[rsp-96]
mov	[rsp-112],	rax
lea	rbx,	[rsp-112]
sub	rsp,	112
call	f12
add	rsp,	112
mov	rbx,	[rsp]
lea	rax,	[rsp-96]
mov	[rsp-104],	rax
lea	rbx,	[rsp-104]
sub	rsp,	104
call	f10
add	rsp,	104
mov	rbx,	[rsp]
lea	rbx,	[rsp-96]
lea	rax,	[rel+f13]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-96]
mov	[rsp-112],	rax
mov	rax,	[rsp-64]
mov	[rsp-104],	rax
lea	rbx,	[rsp-112]
sub	rsp,	112
call	f48
add	rsp,	112
mov	rbx,	[rsp]
lea	rax,	[rsp-128]
mov	[rsp-136],	rax
lea	rax,	[rsp-64]
mov	[rsp-128],	rax
lea	rbx,	[rsp-128]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-136]
sub	rsp,	136
call	f22
add	rsp,	136
mov	rbx,	[rsp]
mov	rax,	[rsp-64]
mov	[rsp-104],	rax
lea	rbx,	[rsp-112]
sub	rsp,	112
call	f48
add	rsp,	112
mov	rbx,	[rsp]
mov	qword	[rsp-72],	4
lea	rax,	[rel+f81]
mov	[rsp-88],	rax
mov	[rsp-80],	rsp
lea	rax,	[rsp-56]
mov	[rsp-96],	rax
lea	rbx,	[rsp-96]
sub	rsp,	96
call	f69
add	rsp,	96
mov	rbx,	[rsp]
lea	rax,	[rel+f82]
mov	[rsp-88],	rax
mov	[rsp-80],	rsp
lea	rax,	[rsp-56]
mov	[rsp-96],	rax
lea	rbx,	[rsp-96]
sub	rsp,	96
call	f69
add	rsp,	96
mov	rbx,	[rsp]
lea	rax,	[rsp-104]
mov	[rsp-112],	rax
lea	rbx,	[rsp-104]
lea	rax,	[rel+f13]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-112]
sub	rsp,	112
call	f10
add	rsp,	112
mov	rbx,	[rsp]
mov	qword	[rsp-88],	13
mov	qword	[rsp-80],	2
lea	rbx,	[rsp-88]
sub	rsp,	88
call	f50
add	rsp,	88
mov	rbx,	[rsp]
mov	qword	[rsp-88],	7
mov	qword	[rsp-80],	0
lea	rbx,	[rsp-88]
sub	rsp,	88
call	f50
add	rsp,	88
mov	rbx,	[rsp]
lea	rax,	[rsp-56]
mov	[rsp-88],	rax
mov	qword	[rsp-80],	0
lea	rbx,	[rsp-88]
sub	rsp,	88
call	f73
add	rsp,	88
mov	rbx,	[rsp]
mov	[rsp-96],	rax
mov	rcx,	[rsp-96]
mov	qword	[rcx+0],	0
mov	rcx,	[rsp-96]
mov	qword	[rcx+8],	1
mov	qword	[rsp-80],	1
lea	rbx,	[rsp-88]
sub	rsp,	88
call	f73
add	rsp,	88
mov	rbx,	[rsp]
mov	[rsp-96],	rax
mov	rcx,	[rsp-96]
mov	qword	[rcx+0],	2
mov	rcx,	[rsp-96]
mov	qword	[rcx+8],	4
mov	qword	[rsp-80],	2
lea	rbx,	[rsp-88]
sub	rsp,	88
call	f73
add	rsp,	88
mov	rbx,	[rsp]
mov	[rsp-96],	rax
mov	rcx,	[rsp-96]
mov	qword	[rcx+0],	2
mov	rcx,	[rsp-96]
mov	qword	[rcx+8],	4
mov	qword	[rsp-80],	3
lea	rbx,	[rsp-88]
sub	rsp,	88
call	f73
add	rsp,	88
mov	rbx,	[rsp]
mov	[rsp-96],	rax
mov	rcx,	[rsp-96]
mov	qword	[rcx+0],	0
mov	rcx,	[rsp-96]
mov	qword	[rcx+8],	1
mov	qword	[rsp-80],	4
lea	rbx,	[rsp-88]
sub	rsp,	88
call	f73
add	rsp,	88
mov	rbx,	[rsp]
mov	[rsp-96],	rax
mov	rcx,	[rsp-96]
mov	qword	[rcx+0],	2
mov	rcx,	[rsp-96]
mov	qword	[rcx+8],	4
mov	rax,	6
mov	[rsp-80],	rax
mov	rax,	4
xor	rdx,	rdx
mov	qword	rcx,	2
div	qword	rcx
mov	[rsp-88],	rax
mov	rax,	[rsp-80]
sub	rax,	[rsp-88]
mov	[rsp-80],	rax
mov	rax,	5
xor	rdx,	rdx
mov	qword	rcx,	9
mul	qword	rcx
mov	[rsp-88],	rax
mov	rax,	[rsp-80]
add	rax,	[rsp-88]
mov	[rsp-112],	rax
lea	rax,	[rsp-104]
mov	[rsp-120],	rax
lea	rbx,	[rsp-104]
lea	rax,	[rel+f13]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-120]
sub	rsp,	120
call	f12
add	rsp,	120
mov	rbx,	[rsp]
lea	rax,	[rsp-104]
mov	[rsp-112],	rax
lea	rbx,	[rsp-104]
lea	rax,	[rel+f13]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-112]
sub	rsp,	112
call	f10
add	rsp,	112
mov	rbx,	[rsp]
lea	rbx,	[rsp-152]
lea	rax,	[rel+f88]
mov	[rbx+16],	rax
mov	[rbx+24],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-120]
mov	[rsp-168],	rax
mov	qword	[rsp-160],	48
lea	rax,	[rsp-152]
mov	[rsp-176],	rax
lea	rbx,	[rsp-176]
sub	rsp,	176
call	f89
add	rsp,	176
mov	rbx,	[rsp]
lea	rax,	[rsp-56]
mov	[rsp-168],	rax
lea	rax,	[rsp-152]
mov	[rsp-160],	rax
lea	rbx,	[rsp-168]
sub	rsp,	168
call	f65
add	rsp,	168
mov	rbx,	[rsp]
lea	rax,	[rel+f90]
mov	[rsp-168],	rax
mov	[rsp-160],	rsp
lea	rax,	[rsp-152]
mov	[rsp-176],	rax
lea	rbx,	[rsp-176]
sub	rsp,	176
call	f87
add	rsp,	176
mov	rbx,	[rsp]
mov	qword	[rsp-200],	s10
mov	qword	[rsp-192],	23
lea	rax,	[rsp-184]
mov	[rsp-208],	rax
lea	rbx,	[rsp-184]
lea	rax,	[rel+f13]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-208]
sub	rsp,	208
call	f11
add	rsp,	208
mov	rbx,	[rsp]
lea	rax,	[rsp-192]
mov	[rsp-264],	rax
mov	qword	[rsp-256],	40
lea	rax,	[rsp-248]
mov	[rsp-272],	rax
lea	rbx,	[rsp-272]
sub	rsp,	272
call	f19
add	rsp,	272
mov	rbx,	[rsp]
mov	qword	[rsp-272],	s11
mov	qword	[rsp-264],	5
lea	rax,	[rsp-248]
mov	[rsp-256],	rax
lea	rbx,	[rsp-288]
lea	rax,	[rel+f20]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-288]
sub	rsp,	288
call	f7
add	rsp,	288
mov	rbx,	[rsp]
lea	rax,	[rsp-232]
mov	[rsp-280],	rax
mov	qword	[rsp-272],	40
lea	rax,	[rsp-264]
mov	[rsp-288],	rax
lea	rbx,	[rsp-288]
sub	rsp,	288
call	f19
add	rsp,	288
mov	rbx,	[rsp]
mov	qword	[rsp-288],	s12
mov	qword	[rsp-280],	5
lea	rax,	[rsp-264]
mov	[rsp-272],	rax
lea	rbx,	[rsp-304]
lea	rax,	[rel+f20]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-304]
sub	rsp,	304
call	f7
add	rsp,	304
mov	rbx,	[rsp]
lea	rax,	[rsp-280]
mov	[rsp-304],	rax
mov	qword	[rsp-296],	1
mov	qword	[rsp-288],	71
lea	rax,	[rsp-248]
mov	[rsp-304],	rax
lea	rbx,	[rsp-304]
sub	rsp,	304
call	f16
add	rsp,	304
mov	rbx,	[rsp]
lea	rax,	[rsp-264]
mov	[rsp-304],	rax
lea	rbx,	[rsp-304]
sub	rsp,	304
call	f16
add	rsp,	304
mov	rbx,	[rsp]
lea	rbx,	[rsp-296]
lea	rax,	[rel+f13]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
mov	rax,	[rsp-248]
mov	rdx,	[rsp-240]
mov	[rsp-312],	rax
mov	[rsp-304],	rdx
lea	rax,	[rsp-296]
mov	[rsp-320],	rax
lea	rbx,	[rsp-320]
sub	rsp,	320
call	f8
add	rsp,	320
mov	rbx,	[rsp]
lea	rax,	[rsp-296]
mov	[rsp-304],	rax
lea	rbx,	[rsp-304]
sub	rsp,	304
call	f10
add	rsp,	304
mov	rbx,	[rsp]
mov	rax,	[rsp-264]
mov	rdx,	[rsp-256]
mov	[rsp-312],	rax
mov	[rsp-304],	rdx
lea	rax,	[rsp-296]
mov	[rsp-320],	rax
lea	rbx,	[rsp-320]
sub	rsp,	320
call	f8
add	rsp,	320
mov	rbx,	[rsp]
lea	rax,	[rsp-296]
mov	[rsp-304],	rax
lea	rbx,	[rsp-304]
sub	rsp,	304
call	f10
add	rsp,	304
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
mov	qword	[rsp-8],	67
mov	rax,	[rbx+0]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f9
add	rsp,	16
mov	rbx,	[rsp]
mov	qword	[rsp-8],	76
mov	rax,	[rbx+0]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f9
add	rsp,	16
mov	rbx,	[rsp]
mov	qword	[rsp-8],	79
mov	rax,	[rbx+0]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f9
add	rsp,	16
mov	rbx,	[rsp]
mov	qword	[rsp-8],	83
mov	rax,	[rbx+0]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f9
add	rsp,	16
mov	rbx,	[rsp]
mov	qword	[rsp-8],	69
mov	rax,	[rbx+0]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f9
add	rsp,	16
mov	rbx,	[rsp]
pop	rbx
ret
f46:
push	rbx
lea	rbx,	[rsp-32]
lea	rax,	[rel+f13]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-32]
mov	[rsp-40],	rax
lea	rbx,	[rsp-40]
sub	rsp,	40
call	f45
add	rsp,	40
mov	rbx,	[rsp]
pop	rbx
ret
f47:
push	rbx
mov	rax,	[rbx+0]
cmp	rax,	2
setl	al
movzx	rax,	al
cmp	rax,	0
je	b33
mov	rax,	1
jmp	b34
b33:
mov	rax,	[rbx+0]
mov	[rsp-8],	rax
mov	rax,	[rbx+0]
sub	rax,	1
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f47
add	rsp,	16
mov	rbx,	[rsp]
mov	[rsp-16],	rax
mov	rax,	[rsp-8]
xor	rdx,	rdx
mul	qword	[rsp-16]
b34:
pop	rbx
ret
f48:
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
call	f21
add	rsp,	24
mov	rbx,	[rsp]
cmp	rax,	0
je	b35
mov	qword	[rsp-16],	s1
mov	qword	[rsp-8],	3
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f8
add	rsp,	24
mov	rbx,	[rsp]
jmp	b36
b35:
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
lea	rax,	[rbx+8]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	1
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f21
add	rsp,	24
mov	rbx,	[rsp]
cmp	rax,	0
je	b37
mov	qword	[rsp-16],	s2
mov	qword	[rsp-8],	5
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f8
add	rsp,	24
mov	rbx,	[rsp]
jmp	b38
b37:
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
lea	rax,	[rbx+8]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f21
add	rsp,	24
mov	rbx,	[rsp]
cmp	rax,	0
je	b39
mov	qword	[rsp-16],	s3
mov	qword	[rsp-8],	6
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f8
add	rsp,	24
mov	rbx,	[rsp]
jmp	b40
b39:
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
lea	rax,	[rbx+8]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	3
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f21
add	rsp,	24
mov	rbx,	[rsp]
cmp	rax,	0
je	b41
mov	qword	[rsp-16],	s4
mov	qword	[rsp-8],	6
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f8
add	rsp,	24
mov	rbx,	[rsp]
jmp	b42
b41:
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
lea	rax,	[rbx+8]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	4
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f21
add	rsp,	24
mov	rbx,	[rsp]
cmp	rax,	0
je	b43
mov	qword	[rsp-16],	s5
mov	qword	[rsp-8],	4
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f8
add	rsp,	24
mov	rbx,	[rsp]
b43:
b42:
b40:
b38:
b36:
mov	rax,	[rbx+0]
mov	[rsp-8],	rax
lea	rbx,	[rsp-8]
sub	rsp,	8
call	f10
add	rsp,	8
mov	rbx,	[rsp]
pop	rbx
ret
f49:
push	rbx
mov	rax,	[rbx+8]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b44
mov	qword	[rbx+32],	s7
mov	qword	[rbx+40],	22
jmp	b45
b44:
mov	rax,	[rbx+0]
xor	rdx,	rdx
div	qword	[rbx+8]
mov	[rbx+24],	rax
mov	rax,	[rbx+0]
xor	rdx,	rdx
div	qword	[rbx+8]
mov	rax,	rdx
mov	[rbx+16],	rax
b45:
pop	rbx
ret
f50:
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
call	f49
add	rsp,	48
mov	rbx,	[rsp]
lea	rax,	[rsp-16]
mov	[rsp-56],	rax
lea	rbx,	[rsp-56]
sub	rsp,	56
call	f14
add	rsp,	56
mov	rbx,	[rsp]
cmp	rax,	0
setg	al
movzx	rax,	al
cmp	rax,	0
je	b46
mov	rax,	[rsp-16]
mov	rdx,	[rsp-8]
mov	[rsp-96],	rax
mov	[rsp-88],	rdx
lea	rax,	[rsp-80]
mov	[rsp-104],	rax
lea	rbx,	[rsp-80]
lea	rax,	[rel+f13]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-104]
sub	rsp,	104
call	f11
add	rsp,	104
mov	rbx,	[rsp]
jmp	b47
b46:
lea	rbx,	[rsp-80]
lea	rax,	[rel+f13]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
mov	qword	[rsp-96],	s8
mov	qword	[rsp-88],	10
lea	rax,	[rsp-80]
mov	[rsp-104],	rax
lea	rbx,	[rsp-104]
sub	rsp,	104
call	f8
add	rsp,	104
mov	rbx,	[rsp]
mov	rax,	[rsp-24]
mov	[rsp-88],	rax
lea	rax,	[rsp-80]
mov	[rsp-96],	rax
lea	rbx,	[rsp-96]
sub	rsp,	96
call	f12
add	rsp,	96
mov	rbx,	[rsp]
mov	qword	[rsp-96],	s9
mov	qword	[rsp-88],	5
lea	rax,	[rsp-80]
mov	[rsp-104],	rax
lea	rbx,	[rsp-104]
sub	rsp,	104
call	f8
add	rsp,	104
mov	rbx,	[rsp]
mov	rax,	[rsp-32]
mov	[rsp-88],	rax
lea	rax,	[rsp-80]
mov	[rsp-96],	rax
lea	rbx,	[rsp-96]
sub	rsp,	96
call	f12
add	rsp,	96
mov	rbx,	[rsp]
lea	rax,	[rsp-80]
mov	[rsp-88],	rax
lea	rbx,	[rsp-88]
sub	rsp,	88
call	f10
add	rsp,	88
mov	rbx,	[rsp]
b47:
pop	rbx
ret
f51:
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
f52:
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
f53:
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
lea	rax,	[rel+f54]
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
f54:
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
f55:
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
add	rax,	16
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
f56:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+0]
mov	rdx,	[rcx+8]
mov	[rsp-16],	rax
mov	rax,	[rbx+8]
xor	rdx,	rdx
mov	qword	rcx,	16
mul	qword	rcx
mov	[rsp-24],	rax
mov	rax,	[rsp-16]
add	rax,	[rsp-24]
mov	[rsp-8],	rax
mov	rax,	[rsp-8]
pop	rbx
ret
f57:
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
f58:
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
mov	rax,	[rbx+16]
mov	rcx,	[rsp-8]
mov	[rcx+0],	rax
pop	rbx
ret
f60:
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
f61:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
pop	rbx
ret
f62:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+0]
mov	rdx,	[rcx+8]
mov	[rsp-8],	rax
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
mov	[rsp-16],	rax
b48:
mov	rax,	[rsp-16]
cmp	rax,	0
setg	al
movzx	rax,	al
cmp	rax,	0
je	b49
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
jmp	b48
b49:
pop	rbx
ret
f63:
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
call	f59
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
f64:
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
f65:
push	rbx
lea	rax,	[rel+f66]
mov	[rsp-16],	rax
mov	[rsp-8],	rsp
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f52
add	rsp,	24
mov	rbx,	[rsp]
pop	rbx
ret
f66:
push	rdx
push	rbx
mov	qword	[rsp-8],	0
lea	rax,	[rel+f67]
mov	[rsp-24],	rax
mov	[rsp-16],	rsp
mov	rcx,	[rsp+8]
mov	rcx,	[rcx]
mov	rax,	[rcx+8]
mov	[rsp-32],	rax
lea	rbx,	[rsp-32]
sub	rsp,	32
call	f62
add	rsp,	32
mov	rbx,	[rsp]
mov	rax,	[rsp-8]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b50
mov	rax,	[rsp-0]
mov	[rsp-16],	rax
mov	rcx,	[rsp+8]
mov	rcx,	[rcx]
mov	rax,	[rcx+8]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f60
add	rsp,	24
mov	rbx,	[rsp]
b50:
pop	rbx
pop	rdx
ret
f67:
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
je	b51
mov	rcx,	[rsp+8]
mov	qword	[rcx-8],	1
b51:
pop	rbx
pop	rdx
ret
f68:
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
f69:
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
f70:
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
lea	rax,	[rel+f71]
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
f71:
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
f72:
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
add	rax,	16
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
f73:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+0]
mov	rdx,	[rcx+8]
mov	[rsp-16],	rax
mov	rax,	[rbx+8]
xor	rdx,	rdx
mov	qword	rcx,	16
mul	qword	rcx
mov	[rsp-24],	rax
mov	rax,	[rsp-16]
add	rax,	[rsp-24]
mov	[rsp-8],	rax
mov	rax,	[rsp-8]
pop	rbx
ret
f74:
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
f75:
push	rdx
push	rbx
mov	qword	[rbx+0],	1
mov	qword	[rbx+8],	0
pop	rbx
pop	rdx
ret
f76:
push	rdx
push	rbx
mov	qword	[rbx+0],	2
mov	qword	[rbx+8],	5
pop	rbx
pop	rdx
ret
f77:
push	rdx
push	rbx
mov	qword	[rbx+0],	0
mov	qword	[rbx+8],	5
pop	rbx
pop	rdx
ret
f78:
push	rdx
push	rbx
mov	qword	[rbx+0],	2
mov	qword	[rbx+8],	7
pop	rbx
pop	rdx
ret
f79:
push	rdx
push	rbx
mov	qword	[rbx+0],	4
mov	qword	[rbx+8],	1
pop	rbx
pop	rdx
ret
f80:
push	rdx
push	rbx
mov	rax,	[rbx+0]
add	rax,	[rbx+8]
mov	[rsp-40],	rax
lea	rax,	[rsp-32]
mov	[rsp-48],	rax
lea	rbx,	[rsp-32]
lea	rax,	[rel+f13]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f12
add	rsp,	48
mov	rbx,	[rsp]
pop	rbx
pop	rdx
ret
f81:
push	rdx
push	rbx
mov	rcx,	[rsp+8]
mov	rax,	[rcx-72]
mov	[rbx+8],	rax
mov	rcx,	[rsp+8]
mov	rax,	[rcx-72]
sub	rax,	1
mov	rcx,	[rsp+8]
mov	[rcx-72],	rax
pop	rbx
pop	rdx
ret
f82:
push	rdx
push	rbx
mov	rax,	[rbx+0]
add	rax,	[rbx+8]
mov	[rsp-40],	rax
lea	rax,	[rsp-32]
mov	[rsp-48],	rax
lea	rbx,	[rsp-32]
lea	rax,	[rel+f13]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f12
add	rsp,	48
mov	rbx,	[rsp]
pop	rbx
pop	rdx
ret
f83:
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
f84:
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
f85:
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
f86:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
pop	rbx
ret
f87:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+0]
mov	rdx,	[rcx+8]
mov	[rsp-8],	rax
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
mov	[rsp-16],	rax
b52:
mov	rax,	[rsp-16]
cmp	rax,	0
setg	al
movzx	rax,	al
cmp	rax,	0
je	b53
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
jmp	b52
b53:
pop	rbx
ret
f88:
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
call	f84
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
f89:
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
f90:
push	rdx
push	rbx
lea	rbx,	[rsp-32]
lea	rax,	[rel+f13]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
mov	rax,	[rbx+0]
mov	[rsp-40],	rax
lea	rax,	[rsp-32]
mov	[rsp-48],	rax
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f12
add	rsp,	48
mov	rbx,	[rsp]
mov	rax,	[rbx+8]
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
call	f10
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
mov     r8,     [rbx+32]
mov     r9,     [rbx+40]
mov     r10,    [rbx+48]
syscall
ret
SECTION .bss
static_mem	resb	568
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
