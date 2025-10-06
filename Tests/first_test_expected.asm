global	_start
_start:
mov	rcx,	static_mem
lea	rbx,	[rcx+400]
lea	rax,	[rel+f1]
mov	[rbx+40],	rax
mov	[rbx+48],	rbx
lea	rax,	[rel+f2]
mov	[rbx+56],	rax
mov	[rbx+64],	rbx
lea	rax,	[rel+f3]
mov	[rbx+24],	rax
mov	[rbx+32],	rbx
mov	rbx,	[rsp]
mov	rcx,	static_mem
lea	rax,	[rcx+0]
mov	rcx,	static_mem
mov	[rcx+400],	rax
mov	qword	[rcx+408],	400
mov	rcx,	static_mem
lea	rbx,	[rcx+472]
lea	rax,	[rel+f4]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
lea	rax,	[rel+f5]
mov	[rbx+16],	rax
mov	[rbx+24],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-72]
lea	rax,	[rel+f6]
mov	[rbx+40],	rax
mov	[rbx+48],	rbx
lea	rax,	[rel+f7]
mov	[rbx+56],	rax
mov	[rbx+64],	rbx
lea	rax,	[rel+f8]
mov	[rbx+24],	rax
mov	[rbx+32],	rbx
mov	rbx,	[rsp]
mov	rcx,	static_mem
lea	rax,	[rcx+504]
mov	[rsp-88],	rax
mov	qword	[rsp-80],	80
lea	rax,	[rsp-72]
mov	[rsp-96],	rax
lea	rbx,	[rsp-96]
sub	rsp,	96
call	f9
add	rsp,	96
mov	rbx,	[rsp]
lea	rax,	[rsp-72]
mov	[rsp-96],	rax
lea	rax,	[rel+f10]
mov	[rsp-88],	rax
mov	[rsp-80],	rsp
lea	rbx,	[rsp-96]
sub	rsp,	96
call	f11
add	rsp,	96
mov	rbx,	[rsp]
lea	rax,	[rel+f12]
mov	[rsp-88],	rax
mov	[rsp-80],	rsp
lea	rbx,	[rsp-96]
sub	rsp,	96
call	f11
add	rsp,	96
mov	rbx,	[rsp]
lea	rax,	[rel+f13]
mov	[rsp-88],	rax
mov	[rsp-80],	rsp
lea	rbx,	[rsp-96]
sub	rsp,	96
call	f11
add	rsp,	96
mov	rbx,	[rsp]
lea	rax,	[rel+f14]
mov	[rsp-88],	rax
mov	[rsp-80],	rsp
lea	rbx,	[rsp-96]
sub	rsp,	96
call	f11
add	rsp,	96
mov	rbx,	[rsp]
lea	rax,	[rel+f15]
mov	[rsp-88],	rax
mov	[rsp-80],	rsp
lea	rbx,	[rsp-96]
sub	rsp,	96
call	f11
add	rsp,	96
mov	rbx,	[rsp]
lea	rax,	[rel+f16]
mov	[rsp-88],	rax
mov	[rsp-80],	rsp
lea	rax,	[rsp-72]
mov	[rsp-96],	rax
lea	rbx,	[rsp-96]
sub	rsp,	96
call	f17
add	rsp,	96
mov	rbx,	[rsp]
lea	rbx,	[rsp-72]
sub	rsp,	72
call	f18
add	rsp,	72
mov	rbx,	[rsp]
lea	rbx,	[rsp-104]
lea	rax,	[rel+f19]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-144]
mov	[rsp-176],	rax
mov	qword	[rsp-168],	40
lea	rax,	[rsp-160]
mov	[rsp-184],	rax
lea	rbx,	[rsp-184]
sub	rsp,	184
call	f20
add	rsp,	184
mov	rbx,	[rsp]
lea	rax,	[rsp-160]
mov	[rsp-168],	rax
lea	rbx,	[rsp-200]
lea	rax,	[rel+f21]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-200]
mov	[rsp-208],	rax
lea	rbx,	[rsp-208]
sub	rsp,	208
call	f22
add	rsp,	208
mov	rbx,	[rsp]
lea	rax,	[rsp-160]
mov	[rsp-184],	rax
mov	qword	[rsp-168],	70
mov	qword	[rsp-176],	1
lea	rbx,	[rsp-184]
sub	rsp,	184
call	f23
add	rsp,	184
mov	rbx,	[rsp]
mov	qword	[rsp-176],	2
lea	rbx,	[rsp-184]
sub	rsp,	184
call	f23
add	rsp,	184
mov	rbx,	[rsp]
mov	qword	[rsp-176],	3
lea	rbx,	[rsp-184]
sub	rsp,	184
call	f23
add	rsp,	184
mov	rbx,	[rsp]
mov	qword	[rsp-176],	4
lea	rbx,	[rsp-184]
sub	rsp,	184
call	f23
add	rsp,	184
mov	rbx,	[rsp]
mov	rax,	[rsp-160]
mov	rdx,	[rsp-152]
mov	[rsp-176],	rax
mov	[rsp-168],	rdx
lea	rax,	[rsp-104]
mov	[rsp-184],	rax
lea	rbx,	[rsp-184]
sub	rsp,	184
call	f24
add	rsp,	184
mov	rbx,	[rsp]
mov	qword	[rsp-168],	1749
lea	rax,	[rsp-104]
mov	[rsp-176],	rax
lea	rbx,	[rsp-176]
sub	rsp,	176
call	f25
add	rsp,	176
mov	rbx,	[rsp]
mov	qword	[rsp-168],	102
lea	rax,	[rsp-104]
mov	[rsp-176],	rax
lea	rbx,	[rsp-176]
sub	rsp,	176
call	f26
add	rsp,	176
mov	rbx,	[rsp]
mov	qword	[rsp-168],	0
lea	rax,	[rsp-104]
mov	[rsp-176],	rax
lea	rbx,	[rsp-176]
sub	rsp,	176
call	f25
add	rsp,	176
mov	rbx,	[rsp]
mov	qword	[rsp-168],	90
lea	rax,	[rsp-104]
mov	[rsp-176],	rax
lea	rbx,	[rsp-176]
sub	rsp,	176
call	f26
add	rsp,	176
mov	rbx,	[rsp]
lea	rax,	[rsp-104]
mov	[rsp-168],	rax
lea	rbx,	[rsp-168]
sub	rsp,	168
call	f27
add	rsp,	168
mov	rbx,	[rsp]
lea	rbx,	[rsp-104]
lea	rax,	[rel+f19]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
mov	qword	[rsp-112],	7
lea	rbx,	[rsp-112]
sub	rsp,	112
call	f28
add	rsp,	112
mov	rbx,	[rsp]
mov	[rsp-112],	rax
lea	rax,	[rsp-104]
mov	[rsp-120],	rax
lea	rbx,	[rsp-120]
sub	rsp,	120
call	f25
add	rsp,	120
mov	rbx,	[rsp]
lea	rax,	[rsp-104]
mov	[rsp-112],	rax
lea	rbx,	[rsp-112]
sub	rsp,	112
call	f27
add	rsp,	112
mov	rbx,	[rsp]
lea	rax,	[rsp-96]
mov	[rsp-104],	rax
lea	rax,	[rsp-80]
mov	[rsp-96],	rax
lea	rbx,	[rsp-96]
mov	qword	[rbx+8],	4
mov	rbx,	[rsp]
lea	rbx,	[rsp-104]
sub	rsp,	104
call	f29
add	rsp,	104
mov	rbx,	[rsp]
lea	rbx,	[rsp-112]
lea	rax,	[rel+f19]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-128]
mov	[rsp-136],	rax
lea	rax,	[rsp-80]
mov	[rsp-128],	rax
lea	rbx,	[rsp-128]
mov	qword	[rbx+8],	4
mov	rbx,	[rsp]
lea	rbx,	[rsp-136]
sub	rsp,	136
call	f30
add	rsp,	136
mov	rbx,	[rsp]
mov	[rsp-120],	rax
lea	rax,	[rsp-112]
mov	[rsp-128],	rax
lea	rbx,	[rsp-128]
sub	rsp,	128
call	f25
add	rsp,	128
mov	rbx,	[rsp]
lea	rax,	[rsp-112]
mov	[rsp-120],	rax
lea	rbx,	[rsp-120]
sub	rsp,	120
call	f27
add	rsp,	120
mov	rbx,	[rsp]
lea	rax,	[rsp-128]
mov	[rsp-136],	rax
lea	rax,	[rsp-80]
mov	[rsp-128],	rax
lea	rbx,	[rsp-128]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-136]
sub	rsp,	136
call	f30
add	rsp,	136
mov	rbx,	[rsp]
mov	[rsp-120],	rax
lea	rax,	[rsp-112]
mov	[rsp-128],	rax
lea	rbx,	[rsp-128]
sub	rsp,	128
call	f25
add	rsp,	128
mov	rbx,	[rsp]
lea	rax,	[rsp-112]
mov	[rsp-120],	rax
lea	rbx,	[rsp-120]
sub	rsp,	120
call	f27
add	rsp,	120
mov	rbx,	[rsp]
lea	rbx,	[rsp-112]
lea	rax,	[rel+f19]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-112]
mov	[rsp-128],	rax
mov	rax,	[rsp-80]
mov	[rsp-120],	rax
lea	rbx,	[rsp-128]
sub	rsp,	128
call	f31
add	rsp,	128
mov	rbx,	[rsp]
lea	rax,	[rsp-144]
mov	[rsp-152],	rax
lea	rax,	[rsp-80]
mov	[rsp-144],	rax
lea	rbx,	[rsp-144]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-152]
sub	rsp,	152
call	f29
add	rsp,	152
mov	rbx,	[rsp]
mov	rax,	[rsp-80]
mov	[rsp-120],	rax
lea	rbx,	[rsp-128]
sub	rsp,	128
call	f31
add	rsp,	128
mov	rbx,	[rsp]
mov	qword	[rsp-88],	4
lea	rax,	[rel+f32]
mov	[rsp-104],	rax
mov	[rsp-96],	rsp
lea	rax,	[rsp-72]
mov	[rsp-112],	rax
lea	rbx,	[rsp-112]
sub	rsp,	112
call	f17
add	rsp,	112
mov	rbx,	[rsp]
lea	rax,	[rel+f33]
mov	[rsp-104],	rax
mov	[rsp-96],	rsp
lea	rax,	[rsp-72]
mov	[rsp-112],	rax
lea	rbx,	[rsp-112]
sub	rsp,	112
call	f17
add	rsp,	112
mov	rbx,	[rsp]
lea	rax,	[rsp-120]
mov	[rsp-128],	rax
lea	rbx,	[rsp-120]
lea	rax,	[rel+f19]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-128]
sub	rsp,	128
call	f27
add	rsp,	128
mov	rbx,	[rsp]
mov	qword	[rsp-104],	13
mov	qword	[rsp-96],	2
lea	rbx,	[rsp-104]
sub	rsp,	104
call	f34
add	rsp,	104
mov	rbx,	[rsp]
mov	qword	[rsp-104],	7
mov	qword	[rsp-96],	0
lea	rbx,	[rsp-104]
sub	rsp,	104
call	f34
add	rsp,	104
mov	rbx,	[rsp]
lea	rax,	[rsp-72]
mov	[rsp-104],	rax
mov	qword	[rsp-96],	0
lea	rbx,	[rsp-104]
sub	rsp,	104
call	f35
add	rsp,	104
mov	rbx,	[rsp]
mov	[rsp-112],	rax
mov	rcx,	[rsp-112]
mov	qword	[rcx+0],	0
mov	rcx,	[rsp-112]
mov	qword	[rcx+8],	1
mov	qword	[rsp-96],	1
lea	rbx,	[rsp-104]
sub	rsp,	104
call	f35
add	rsp,	104
mov	rbx,	[rsp]
mov	[rsp-112],	rax
mov	rcx,	[rsp-112]
mov	qword	[rcx+0],	2
mov	rcx,	[rsp-112]
mov	qword	[rcx+8],	4
mov	qword	[rsp-96],	2
lea	rbx,	[rsp-104]
sub	rsp,	104
call	f35
add	rsp,	104
mov	rbx,	[rsp]
mov	[rsp-112],	rax
mov	rcx,	[rsp-112]
mov	qword	[rcx+0],	2
mov	rcx,	[rsp-112]
mov	qword	[rcx+8],	4
mov	qword	[rsp-96],	3
lea	rbx,	[rsp-104]
sub	rsp,	104
call	f35
add	rsp,	104
mov	rbx,	[rsp]
mov	[rsp-112],	rax
mov	rcx,	[rsp-112]
mov	qword	[rcx+0],	0
mov	rcx,	[rsp-112]
mov	qword	[rcx+8],	1
mov	qword	[rsp-96],	4
lea	rbx,	[rsp-104]
sub	rsp,	104
call	f35
add	rsp,	104
mov	rbx,	[rsp]
mov	[rsp-112],	rax
mov	rcx,	[rsp-112]
mov	qword	[rcx+0],	2
mov	rcx,	[rsp-112]
mov	qword	[rcx+8],	4
mov	rax,	6
mov	[rsp-96],	rax
mov	rax,	4
xor	rdx,	rdx
mov	qword	rcx,	2
div	qword	rcx
mov	[rsp-104],	rax
mov	rax,	[rsp-96]
sub	rax,	[rsp-104]
mov	[rsp-96],	rax
mov	rax,	5
xor	rdx,	rdx
mov	qword	rcx,	9
mul	qword	rcx
mov	[rsp-104],	rax
mov	rax,	[rsp-96]
add	rax,	[rsp-104]
mov	[rsp-128],	rax
lea	rax,	[rsp-120]
mov	[rsp-136],	rax
lea	rbx,	[rsp-120]
lea	rax,	[rel+f19]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-136]
sub	rsp,	136
call	f25
add	rsp,	136
mov	rbx,	[rsp]
lea	rax,	[rsp-120]
mov	[rsp-128],	rax
lea	rbx,	[rsp-120]
lea	rax,	[rel+f19]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-128]
sub	rsp,	128
call	f27
add	rsp,	128
mov	rbx,	[rsp]
lea	rbx,	[rsp-168]
lea	rax,	[rel+f36]
mov	[rbx+16],	rax
mov	[rbx+24],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-136]
mov	[rsp-184],	rax
mov	qword	[rsp-176],	48
lea	rax,	[rsp-168]
mov	[rsp-192],	rax
lea	rbx,	[rsp-192]
sub	rsp,	192
call	f37
add	rsp,	192
mov	rbx,	[rsp]
lea	rax,	[rsp-72]
mov	[rsp-184],	rax
lea	rax,	[rsp-168]
mov	[rsp-176],	rax
lea	rbx,	[rsp-184]
sub	rsp,	184
call	f38
add	rsp,	184
mov	rbx,	[rsp]
lea	rax,	[rel+f39]
mov	[rsp-184],	rax
mov	[rsp-176],	rsp
lea	rax,	[rsp-168]
mov	[rsp-192],	rax
lea	rbx,	[rsp-192]
sub	rsp,	192
call	f40
add	rsp,	192
mov	rbx,	[rsp]
mov	qword	[rsp-216],	s10
mov	qword	[rsp-208],	23
lea	rax,	[rsp-200]
mov	[rsp-224],	rax
lea	rbx,	[rsp-200]
lea	rax,	[rel+f19]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-224]
sub	rsp,	224
call	f41
add	rsp,	224
mov	rbx,	[rsp]
lea	rax,	[rsp-208]
mov	[rsp-280],	rax
mov	qword	[rsp-272],	40
lea	rax,	[rsp-264]
mov	[rsp-288],	rax
lea	rbx,	[rsp-288]
sub	rsp,	288
call	f20
add	rsp,	288
mov	rbx,	[rsp]
mov	qword	[rsp-288],	s11
mov	qword	[rsp-280],	5
lea	rax,	[rsp-264]
mov	[rsp-272],	rax
lea	rbx,	[rsp-304]
lea	rax,	[rel+f21]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-304]
sub	rsp,	304
call	f42
add	rsp,	304
mov	rbx,	[rsp]
lea	rax,	[rsp-248]
mov	[rsp-296],	rax
mov	qword	[rsp-288],	40
lea	rax,	[rsp-280]
mov	[rsp-304],	rax
lea	rbx,	[rsp-304]
sub	rsp,	304
call	f20
add	rsp,	304
mov	rbx,	[rsp]
mov	qword	[rsp-304],	s12
mov	qword	[rsp-296],	5
lea	rax,	[rsp-280]
mov	[rsp-288],	rax
lea	rbx,	[rsp-320]
lea	rax,	[rel+f21]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-320]
sub	rsp,	320
call	f42
add	rsp,	320
mov	rbx,	[rsp]
lea	rax,	[rsp-296]
mov	[rsp-320],	rax
mov	qword	[rsp-312],	1
mov	qword	[rsp-304],	71
lea	rax,	[rsp-264]
mov	[rsp-320],	rax
lea	rbx,	[rsp-320]
sub	rsp,	320
call	f23
add	rsp,	320
mov	rbx,	[rsp]
lea	rax,	[rsp-280]
mov	[rsp-320],	rax
lea	rbx,	[rsp-320]
sub	rsp,	320
call	f23
add	rsp,	320
mov	rbx,	[rsp]
lea	rbx,	[rsp-312]
lea	rax,	[rel+f19]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
mov	rax,	[rsp-264]
mov	rdx,	[rsp-256]
mov	[rsp-328],	rax
mov	[rsp-320],	rdx
lea	rax,	[rsp-312]
mov	[rsp-336],	rax
lea	rbx,	[rsp-336]
sub	rsp,	336
call	f24
add	rsp,	336
mov	rbx,	[rsp]
lea	rax,	[rsp-312]
mov	[rsp-320],	rax
lea	rbx,	[rsp-320]
sub	rsp,	320
call	f27
add	rsp,	320
mov	rbx,	[rsp]
mov	rax,	[rsp-280]
mov	rdx,	[rsp-272]
mov	[rsp-328],	rax
mov	[rsp-320],	rdx
lea	rax,	[rsp-312]
mov	[rsp-336],	rax
lea	rbx,	[rsp-336]
sub	rsp,	336
call	f24
add	rsp,	336
mov	rbx,	[rsp]
lea	rax,	[rsp-312]
mov	[rsp-320],	rax
lea	rbx,	[rsp-320]
sub	rsp,	320
call	f27
add	rsp,	320
mov	rbx,	[rsp]
mov	rax,	60
mov	rdi,	0
syscall
f1:
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
lea	rax,	[rel+f43]
mov	[rsp-24],	rax
mov	[rsp-16],	rsp
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f44
add	rsp,	48
mov	rbx,	[rsp]
pop	rbx
pop	rdx
ret
f2:
push	rdx
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+0]
mov	rdx,	[rcx+8]
mov	[rsp-8],	rax
mov	rax,	[rbx+8]
xor	rdx,	rdx
mov	qword	rcx,	64
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
f4:
push	rdx
push	rbx
mov	qword	[rsp-16],	0
mov	[rsp-8],	rdx
mov	qword	[rsp-24],	0
b0:
mov	rax,	[rsp-16]
mov	rdx,	[rsp-8]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b1
mov	rax,	[rsp-24]
mov	[rsp-32],	rax
mov	rcx,	static_mem
lea	rax,	[rcx+400]
mov	[rsp-40],	rax
lea	rbx,	[rsp-40]
sub	rsp,	40
call	f45
add	rsp,	40
mov	rbx,	[rsp]
mov	[rsp-32],	rax
mov	rcx,	[rsp-32]
mov	rax,	[rcx+56]
cmp	rax,	[rbx+8]
setg	al
movzx	rax,	al
cmp	rax,	0
je	b2
mov	rax,	[rbx+8]
mov	[rsp-40],	rax
mov	rcx,	[rsp-32]
lea	rax,	[rcx+0]
mov	[rsp-48],	rax
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f46
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
jmp	b3
b2:
mov	rcx,	[rsp-32]
mov	rax,	[rcx+32]
mov	rdx,	[rcx+40]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b4
mov	rcx,	[rsp-32]
lea	rbx,	[rcx+0]
lea	rax,	[rel+f47]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
lea	rax,	[rel+f48]
mov	[rbx+16],	rax
mov	[rbx+24],	rbx
mov	rbx,	[rsp]
mov	qword	[rsp-40],	4096
b5:
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
je	b6
mov	rax,	[rsp-40]
xor	rdx,	rdx
mov	qword	rcx,	2
mul	qword	rcx
mov	[rsp-40],	rax
jmp	b5
b6:
mov	rax,	[rsp-40]
mov	[rsp-96],	rax
lea	rax,	[rsp-88]
mov	[rsp-104],	rax
lea	rbx,	[rsp-104]
sub	rsp,	104
call	f49
add	rsp,	104
mov	rbx,	[rsp]
mov	[rsp-48],	rax
mov	[rsp-40],	rdx
mov	rcx,	[rsp-32]
lea	rax,	[rcx+0]
mov	[rsp-56],	rax
lea	rbx,	[rsp-56]
sub	rsp,	56
call	f50
add	rsp,	56
mov	rbx,	[rsp]
mov	rax,	[rbx+8]
mov	[rsp-40],	rax
lea	rax,	[rcx+0]
mov	[rsp-48],	rax
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f46
add	rsp,	48
mov	rbx,	[rsp]
mov	[rsp-16],	rax
mov	[rsp-8],	rdx
mov	rax,	[rcx+40]
sub	rax,	[rbx+8]
sub	rax,	16
mov	rcx,	[rsp-32]
mov	[rcx+56],	rax
b4:
b3:
mov	rax,	[rsp-24]
add	rax,	1
mov	[rsp-24],	rax
jmp	b0
b1:
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
f5:
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
call	f45
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
call	f51
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
f6:
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
lea	rax,	[rel+f52]
mov	[rsp-24],	rax
mov	[rsp-16],	rsp
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f44
add	rsp,	48
mov	rbx,	[rsp]
pop	rbx
pop	rdx
ret
f7:
push	rdx
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+0]
mov	rdx,	[rcx+8]
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
f8:
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
f9:
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
f10:
push	rdx
push	rbx
mov	qword	[rbx+0],	1
mov	qword	[rbx+8],	0
pop	rbx
pop	rdx
ret
f11:
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
f12:
push	rdx
push	rbx
mov	qword	[rbx+0],	2
mov	qword	[rbx+8],	5
pop	rbx
pop	rdx
ret
f13:
push	rdx
push	rbx
mov	qword	[rbx+0],	0
mov	qword	[rbx+8],	5
pop	rbx
pop	rdx
ret
f14:
push	rdx
push	rbx
mov	qword	[rbx+0],	2
mov	qword	[rbx+8],	7
pop	rbx
pop	rdx
ret
f15:
push	rdx
push	rbx
mov	qword	[rbx+0],	4
mov	qword	[rbx+8],	1
pop	rbx
pop	rdx
ret
f16:
push	rdx
push	rbx
mov	rax,	[rbx+0]
add	rax,	[rbx+8]
mov	[rsp-40],	rax
lea	rax,	[rsp-32]
mov	[rsp-48],	rax
lea	rbx,	[rsp-32]
lea	rax,	[rel+f19]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f25
add	rsp,	48
mov	rbx,	[rsp]
pop	rbx
pop	rdx
ret
f17:
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
f18:
push	rbx
lea	rbx,	[rsp-32]
lea	rax,	[rel+f19]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-32]
mov	[rsp-40],	rax
lea	rbx,	[rsp-40]
sub	rsp,	40
call	f22
add	rsp,	40
mov	rbx,	[rsp]
pop	rbx
ret
f19:
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
call	f53
add	rsp,	80
mov	rbx,	[rsp]
pop	rbx
pop	rdx
ret
f20:
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
f21:
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
call	f54
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
f22:
push	rbx
mov	qword	[rsp-8],	67
mov	rax,	[rbx+0]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f26
add	rsp,	16
mov	rbx,	[rsp]
mov	qword	[rsp-8],	76
mov	rax,	[rbx+0]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f26
add	rsp,	16
mov	rbx,	[rsp]
mov	qword	[rsp-8],	79
mov	rax,	[rbx+0]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f26
add	rsp,	16
mov	rbx,	[rsp]
mov	qword	[rsp-8],	83
mov	rax,	[rbx+0]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f26
add	rsp,	16
mov	rbx,	[rsp]
mov	qword	[rsp-8],	69
mov	rax,	[rbx+0]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f26
add	rsp,	16
mov	rbx,	[rsp]
pop	rbx
ret
f23:
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
f24:
push	rbx
mov	rax,	[rbx+8]
mov	rdx,	[rbx+16]
mov	rcx,	[rbx+0]
mov	[rcx+16],	rax
mov	[rcx+24],	rdx
mov	rbx,	[rbx+0]
sub	rsp,	0
call	f42
add	rsp,	0
mov	rbx,	[rsp]
pop	rbx
ret
f25:
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
b7:
mov	rax,	[rbx+8]
cmp	rax,	0
setg	al
movzx	rax,	al
cmp	rax,	0
je	b8
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
jmp	b7
b8:
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
call	f42
add	rsp,	64
mov	rbx,	[rsp]
pop	rbx
ret
f26:
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
call	f42
add	rsp,	8
mov	rbx,	[rsp]
pop	rbx
ret
f27:
push	rbx
mov	qword	[rsp-8],	10
mov	rax,	[rbx+0]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f26
add	rsp,	16
mov	rbx,	[rsp]
pop	rbx
ret
f28:
push	rbx
mov	rax,	[rbx+0]
cmp	rax,	2
setl	al
movzx	rax,	al
cmp	rax,	0
je	b9
mov	rax,	1
jmp	b10
b9:
mov	rax,	[rbx+0]
mov	[rsp-8],	rax
mov	rax,	[rbx+0]
sub	rax,	1
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f28
add	rsp,	16
mov	rbx,	[rsp]
mov	[rsp-16],	rax
mov	rax,	[rsp-8]
xor	rdx,	rdx
mul	qword	[rsp-16]
b10:
pop	rbx
ret
f29:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
mov	rcx,	[rbx+0]
mov	rcx,	[rcx+0]
mov	[rcx+0],	rax
pop	rbx
ret
f30:
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
f31:
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
call	f30
add	rsp,	24
mov	rbx,	[rsp]
cmp	rax,	0
je	b11
mov	qword	[rsp-16],	s1
mov	qword	[rsp-8],	3
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f24
add	rsp,	24
mov	rbx,	[rsp]
jmp	b12
b11:
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
lea	rax,	[rbx+8]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	1
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f30
add	rsp,	24
mov	rbx,	[rsp]
cmp	rax,	0
je	b13
mov	qword	[rsp-16],	s2
mov	qword	[rsp-8],	5
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f24
add	rsp,	24
mov	rbx,	[rsp]
jmp	b14
b13:
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
lea	rax,	[rbx+8]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f30
add	rsp,	24
mov	rbx,	[rsp]
cmp	rax,	0
je	b15
mov	qword	[rsp-16],	s3
mov	qword	[rsp-8],	6
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f24
add	rsp,	24
mov	rbx,	[rsp]
jmp	b16
b15:
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
lea	rax,	[rbx+8]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	3
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f30
add	rsp,	24
mov	rbx,	[rsp]
cmp	rax,	0
je	b17
mov	qword	[rsp-16],	s4
mov	qword	[rsp-8],	6
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f24
add	rsp,	24
mov	rbx,	[rsp]
jmp	b18
b17:
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
lea	rax,	[rbx+8]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	4
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f30
add	rsp,	24
mov	rbx,	[rsp]
cmp	rax,	0
je	b19
mov	qword	[rsp-16],	s5
mov	qword	[rsp-8],	4
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f24
add	rsp,	24
mov	rbx,	[rsp]
b19:
b18:
b16:
b14:
b12:
mov	rax,	[rbx+0]
mov	[rsp-8],	rax
lea	rbx,	[rsp-8]
sub	rsp,	8
call	f27
add	rsp,	8
mov	rbx,	[rsp]
pop	rbx
ret
f32:
push	rdx
push	rbx
mov	rcx,	[rsp+8]
mov	rax,	[rcx-88]
mov	[rbx+8],	rax
mov	rcx,	[rsp+8]
mov	rax,	[rcx-88]
sub	rax,	1
mov	rcx,	[rsp+8]
mov	[rcx-88],	rax
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
lea	rax,	[rel+f19]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f25
add	rsp,	48
mov	rbx,	[rsp]
pop	rbx
pop	rdx
ret
f34:
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
call	f55
add	rsp,	48
mov	rbx,	[rsp]
lea	rax,	[rsp-16]
mov	[rsp-56],	rax
lea	rbx,	[rsp-56]
sub	rsp,	56
call	f56
add	rsp,	56
mov	rbx,	[rsp]
cmp	rax,	0
setg	al
movzx	rax,	al
cmp	rax,	0
je	b20
mov	rax,	[rsp-16]
mov	rdx,	[rsp-8]
mov	[rsp-96],	rax
mov	[rsp-88],	rdx
lea	rax,	[rsp-80]
mov	[rsp-104],	rax
lea	rbx,	[rsp-80]
lea	rax,	[rel+f19]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-104]
sub	rsp,	104
call	f41
add	rsp,	104
mov	rbx,	[rsp]
jmp	b21
b20:
lea	rbx,	[rsp-80]
lea	rax,	[rel+f19]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
mov	qword	[rsp-96],	s8
mov	qword	[rsp-88],	10
lea	rax,	[rsp-80]
mov	[rsp-104],	rax
lea	rbx,	[rsp-104]
sub	rsp,	104
call	f24
add	rsp,	104
mov	rbx,	[rsp]
mov	rax,	[rsp-24]
mov	[rsp-88],	rax
lea	rax,	[rsp-80]
mov	[rsp-96],	rax
lea	rbx,	[rsp-96]
sub	rsp,	96
call	f25
add	rsp,	96
mov	rbx,	[rsp]
mov	qword	[rsp-96],	s9
mov	qword	[rsp-88],	5
lea	rax,	[rsp-80]
mov	[rsp-104],	rax
lea	rbx,	[rsp-104]
sub	rsp,	104
call	f24
add	rsp,	104
mov	rbx,	[rsp]
mov	rax,	[rsp-32]
mov	[rsp-88],	rax
lea	rax,	[rsp-80]
mov	[rsp-96],	rax
lea	rbx,	[rsp-96]
sub	rsp,	96
call	f25
add	rsp,	96
mov	rbx,	[rsp]
lea	rax,	[rsp-80]
mov	[rsp-88],	rax
lea	rbx,	[rsp-88]
sub	rsp,	88
call	f27
add	rsp,	88
mov	rbx,	[rsp]
b21:
pop	rbx
ret
f35:
push	rbx
mov	rcx,	[rbx+0]
mov	rdx,	[rcx+64]
mov	rax,	[rcx+56]
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
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
mov	[rsp-16],	rax
mov	rax,	[rbx+8]
mov	[rsp-8],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f57
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
f37:
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
f38:
push	rbx
lea	rax,	[rel+f58]
mov	[rsp-16],	rax
mov	[rsp-8],	rsp
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f59
add	rsp,	24
mov	rbx,	[rsp]
pop	rbx
ret
f39:
push	rdx
push	rbx
lea	rbx,	[rsp-32]
lea	rax,	[rel+f19]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
mov	rax,	[rbx+0]
mov	[rsp-40],	rax
lea	rax,	[rsp-32]
mov	[rsp-48],	rax
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f25
add	rsp,	48
mov	rbx,	[rsp]
mov	rax,	[rbx+8]
mov	[rsp-40],	rax
lea	rax,	[rsp-32]
mov	[rsp-48],	rax
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f25
add	rsp,	48
mov	rbx,	[rsp]
lea	rax,	[rsp-32]
mov	[rsp-40],	rax
lea	rbx,	[rsp-40]
sub	rsp,	40
call	f27
add	rsp,	40
mov	rbx,	[rsp]
pop	rbx
pop	rdx
ret
f40:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+0]
mov	rdx,	[rcx+8]
mov	[rsp-8],	rax
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
mov	[rsp-16],	rax
b22:
mov	rax,	[rsp-16]
cmp	rax,	0
setg	al
movzx	rax,	al
cmp	rax,	0
je	b23
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
jmp	b22
b23:
pop	rbx
ret
f41:
push	rbx
mov	rax,	[rbx+8]
mov	rdx,	[rbx+16]
mov	[rsp-16],	rax
mov	[rsp-8],	rdx
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f24
add	rsp,	24
mov	rbx,	[rsp]
mov	rax,	[rbx+0]
mov	[rsp-8],	rax
lea	rbx,	[rsp-8]
sub	rsp,	8
call	f27
add	rsp,	8
mov	rbx,	[rsp]
pop	rbx
ret
f42:
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
f43:
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
f44:
push	rbx
b24:
mov	rax,	[rbx+0]
cmp	rax,	[rbx+8]
setl	al
movzx	rax,	al
cmp	rax,	0
je	b25
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
jmp	b24
b25:
pop	rbx
ret
f45:
push	rbx
mov	rcx,	[rbx+0]
mov	rdx,	[rcx+64]
mov	rax,	[rcx+56]
lea	rbx,	[rbx+0]
sub	rsp,	8
call	rax
add	rsp,	8
mov	rbx,	[rsp]
pop	rbx
ret
f46:
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
f47:
push	rdx
push	rbx
mov	rax,	[rbx+8]
xor	rdx,	rdx
mov	qword	rcx,	8
div	qword	rcx
mov	rax,	rdx
cmp	rax,	0
je	b26
mov	rax,	[rbx+8]
xor	rdx,	rdx
mov	qword	rcx,	8
div	qword	rcx
xor	rdx,	rdx
mov	qword	rcx,	8
mul	qword	rcx
add	rax,	8
mov	[rbx+8],	rax
b26:
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
b27:
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
je	b28
mov	rcx,	[rsp-40]
mov	rax,	[rcx+0]
and	rax,	0x8000
cmp	rax,	0
je	b29
mov	qword	[rsp-8],	0
mov	rax,	[rsp-40]
mov	[rsp-32],	rax
jmp	b30
b29:
mov	rax,	[rsp-8]
cmp	rax,	0
setg	al
movzx	rax,	al
cmp	rax,	0
je	b31
mov	rax,	[rsp-8]
add	rax,	8
mov	rcx,	[rsp-40]
add	rax,	[rcx+0]
mov	[rsp-8],	rax
mov	rax,	[rsp-8]
mov	rcx,	[rsp-32]
mov	[rcx+0],	rax
jmp	b32
b31:
mov	rax,	[rsp-40]
mov	[rsp-32],	rax
mov	rcx,	[rsp-32]
mov	rax,	[rcx+0]
mov	[rsp-8],	rax
b32:
b30:
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
jmp	b27
b28:
mov	rcx,	[rsp-32]
mov	rax,	[rcx+0]
cmp	rax,	0xFFFF
sete	al
movzx	rax,	al
cmp	rax,	0
je	b33
mov	rax,	0
jmp	b34
b33:
mov	rax,	[rsp-8]
cmp	rax,	[rbx+8]
setg	al
movzx	rax,	al
cmp	rax,	0
je	b35
mov	rax,	[rsp-32]
add	rax,	8
add	rax,	[rbx+8]
mov	[rsp-40],	rax
mov	rax,	[rsp-8]
sub	rax,	[rbx+8]
sub	rax,	8
mov	rcx,	[rsp-40]
mov	[rcx+0],	rax
b35:
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
je	b36
mov	rax,	[rsp-40]
add	rax,	8
mov	[rsp-24],	rax
mov	[rsp-16],	rdx
mov	rax,	[rsp-24]
mov	rdx,	[rsp-16]
mov	rcx,	[rsp+8]
mov	[rcx+48],	rax
b36:
mov	rax,	[rsp-32]
add	rax,	8
b34:
pop	rbx
pop	rdx
ret
f48:
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
je	b37
mov	rax,	[rbx+8]
mov	rdx,	[rbx+16]
mov	rcx,	[rsp+8]
mov	[rcx+48],	rax
b37:
pop	rbx
pop	rdx
ret
f49:
push	rbx
mov	rcx,	[rbx+0]
mov	qword	[rcx+0],	9
mov	rcx,	[rbx+0]
mov	qword	[rcx+8],	3
mov	rcx,	[rbx+0]
mov	qword	[rcx+16],	0
mov	rax,	[rbx+8]
mov	rcx,	[rbx+0]
mov	[rcx+24],	rax
mov	rax,	0
sub	rax,	1
mov	rcx,	[rbx+0]
mov	[rcx+32],	rax
mov	rcx,	[rbx+0]
mov	qword	[rcx+40],	0
mov	rcx,	[rbx+0]
mov	qword	[rcx+48],	34
mov	rbx,	[rbx+0]
sub	rsp,	16
call	f60
add	rsp,	16
mov	rbx,	[rsp]
mov	[rsp-16],	rax
mov	[rsp-8],	rdx
mov	rax,	[rbx+8]
mov	[rsp-8],	rax
mov	rax,	[rsp-16]
mov	rdx,	[rsp-8]
pop	rbx
ret
f50:
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
lea	rax,	[rel+f61]
mov	[rsp-24],	rax
mov	[rsp-16],	rsp
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f44
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
f53:
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
call	f60
add	rsp,	0
mov	rbx,	[rsp]
pop	rbx
ret
f54:
push	rbx
mov	rax,	[rbx+0]
mov	rdx,	[rbx+8]
mov	[rsp-8],	rax
mov	rax,	[rbx+16]
mov	rdx,	[rbx+24]
mov	[rsp-16],	rax
mov	rax,	[rbx+8]
mov	[rsp-24],	rax
b38:
mov	rax,	[rsp-24]
cmp	rax,	0
setg	al
movzx	rax,	al
cmp	rax,	0
je	b39
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
jmp	b38
b39:
pop	rbx
ret
f55:
push	rbx
mov	rax,	[rbx+8]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b40
mov	qword	[rbx+32],	s7
mov	qword	[rbx+40],	22
jmp	b41
b40:
mov	rax,	[rbx+0]
xor	rdx,	rdx
div	qword	[rbx+8]
mov	[rbx+24],	rax
mov	rax,	[rbx+0]
xor	rdx,	rdx
div	qword	[rbx+8]
mov	rax,	rdx
mov	[rbx+16],	rax
b41:
pop	rbx
ret
f56:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
pop	rbx
ret
f57:
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
f58:
push	rdx
push	rbx
mov	qword	[rsp-8],	0
lea	rax,	[rel+f62]
mov	[rsp-24],	rax
mov	[rsp-16],	rsp
mov	rcx,	[rsp+8]
mov	rcx,	[rcx]
mov	rax,	[rcx+8]
mov	[rsp-32],	rax
lea	rbx,	[rsp-32]
sub	rsp,	32
call	f63
add	rsp,	32
mov	rbx,	[rsp]
mov	rax,	[rsp-8]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b42
mov	rax,	[rsp-0]
mov	[rsp-16],	rax
mov	rcx,	[rsp+8]
mov	rcx,	[rcx]
mov	rax,	[rcx+8]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f64
add	rsp,	24
mov	rbx,	[rsp]
b42:
pop	rbx
pop	rdx
ret
f59:
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
f60:
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
f61:
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
f62:
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
je	b43
mov	rcx,	[rsp+8]
mov	qword	[rcx-8],	1
b43:
pop	rbx
pop	rdx
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
b44:
mov	rax,	[rsp-16]
cmp	rax,	0
setg	al
movzx	rax,	al
cmp	rax,	0
je	b45
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
jmp	b44
b45:
pop	rbx
ret
f64:
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
SECTION .bss
static_mem	resb	584
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
