global	_start
_start:
lea	rbx,	[rsp-112]
mov	qword	[rbx+24],	16
mov	rbx,	[rsp]
lea	rax,	[rsp-80]
mov	[rsp-128],	rax
mov	qword	[rsp-120],	80
lea	rax,	[rsp-112]
mov	[rsp-136],	rax
lea	rbx,	[rsp-136]
sub	rsp,	136
call	f44
add	rsp,	136
mov	rbx,	[rsp]
lea	rax,	[rsp-112]
mov	[rsp-136],	rax
lea	rax,	[rel+f48]
mov	[rsp-128],	rax
mov	[rsp-120],	rsp
lea	rbx,	[rsp-136]
sub	rsp,	136
call	f45
add	rsp,	136
mov	rbx,	[rsp]
lea	rax,	[rel+f49]
mov	[rsp-128],	rax
mov	[rsp-120],	rsp
lea	rbx,	[rsp-136]
sub	rsp,	136
call	f45
add	rsp,	136
mov	rbx,	[rsp]
lea	rax,	[rel+f50]
mov	[rsp-128],	rax
mov	[rsp-120],	rsp
lea	rbx,	[rsp-136]
sub	rsp,	136
call	f45
add	rsp,	136
mov	rbx,	[rsp]
lea	rax,	[rel+f51]
mov	[rsp-128],	rax
mov	[rsp-120],	rsp
lea	rbx,	[rsp-136]
sub	rsp,	136
call	f45
add	rsp,	136
mov	rbx,	[rsp]
lea	rax,	[rel+f52]
mov	[rsp-128],	rax
mov	[rsp-120],	rsp
lea	rbx,	[rsp-136]
sub	rsp,	136
call	f45
add	rsp,	136
mov	rbx,	[rsp]
lea	rax,	[rel+f53]
mov	[rsp-128],	rax
mov	[rsp-120],	rsp
lea	rax,	[rsp-112]
mov	[rsp-136],	rax
lea	rbx,	[rsp-136]
sub	rsp,	136
call	f47
add	rsp,	136
mov	rbx,	[rsp]
lea	rbx,	[rsp-112]
sub	rsp,	112
call	f26
add	rsp,	112
mov	rbx,	[rsp]
lea	rbx,	[rsp-144]
lea	rax,	[rel+f12]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-184]
mov	[rsp-216],	rax
mov	qword	[rsp-208],	40
lea	rax,	[rsp-200]
mov	[rsp-224],	rax
lea	rbx,	[rsp-224]
sub	rsp,	224
call	f13
add	rsp,	224
mov	rbx,	[rsp]
lea	rax,	[rsp-200]
mov	[rsp-208],	rax
lea	rbx,	[rsp-240]
lea	rax,	[rel+f17]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-240]
mov	[rsp-248],	rax
lea	rbx,	[rsp-248]
sub	rsp,	248
call	f25
add	rsp,	248
mov	rbx,	[rsp]
lea	rax,	[rsp-200]
mov	[rsp-224],	rax
mov	qword	[rsp-208],	70
mov	qword	[rsp-216],	1
lea	rbx,	[rsp-224]
sub	rsp,	224
call	f14
add	rsp,	224
mov	rbx,	[rsp]
mov	qword	[rsp-216],	2
lea	rbx,	[rsp-224]
sub	rsp,	224
call	f14
add	rsp,	224
mov	rbx,	[rsp]
mov	qword	[rsp-216],	3
lea	rbx,	[rsp-224]
sub	rsp,	224
call	f14
add	rsp,	224
mov	rbx,	[rsp]
mov	qword	[rsp-216],	4
lea	rbx,	[rsp-224]
sub	rsp,	224
call	f14
add	rsp,	224
mov	rbx,	[rsp]
mov	rax,	[rsp-200]
mov	rdx,	[rsp-192]
mov	[rsp-216],	rax
mov	[rsp-208],	rdx
lea	rax,	[rsp-144]
mov	[rsp-224],	rax
lea	rbx,	[rsp-224]
sub	rsp,	224
call	f7
add	rsp,	224
mov	rbx,	[rsp]
mov	qword	[rsp-208],	1749
lea	rax,	[rsp-144]
mov	[rsp-216],	rax
lea	rbx,	[rsp-216]
sub	rsp,	216
call	f11
add	rsp,	216
mov	rbx,	[rsp]
mov	qword	[rsp-208],	102
lea	rax,	[rsp-144]
mov	[rsp-216],	rax
lea	rbx,	[rsp-216]
sub	rsp,	216
call	f8
add	rsp,	216
mov	rbx,	[rsp]
mov	qword	[rsp-208],	0
lea	rax,	[rsp-144]
mov	[rsp-216],	rax
lea	rbx,	[rsp-216]
sub	rsp,	216
call	f11
add	rsp,	216
mov	rbx,	[rsp]
mov	qword	[rsp-208],	90
lea	rax,	[rsp-144]
mov	[rsp-216],	rax
lea	rbx,	[rsp-216]
sub	rsp,	216
call	f8
add	rsp,	216
mov	rbx,	[rsp]
lea	rax,	[rsp-144]
mov	[rsp-208],	rax
lea	rbx,	[rsp-208]
sub	rsp,	208
call	f9
add	rsp,	208
mov	rbx,	[rsp]
lea	rbx,	[rsp-144]
lea	rax,	[rel+f12]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
mov	qword	[rsp-152],	7
lea	rbx,	[rsp-152]
sub	rsp,	152
call	f27
add	rsp,	152
mov	rbx,	[rsp]
mov	[rsp-152],	rax
lea	rax,	[rsp-144]
mov	[rsp-160],	rax
lea	rbx,	[rsp-160]
sub	rsp,	160
call	f11
add	rsp,	160
mov	rbx,	[rsp]
lea	rax,	[rsp-144]
mov	[rsp-152],	rax
lea	rbx,	[rsp-152]
sub	rsp,	152
call	f9
add	rsp,	152
mov	rbx,	[rsp]
lea	rax,	[rsp-136]
mov	[rsp-144],	rax
lea	rax,	[rsp-120]
mov	[rsp-136],	rax
lea	rbx,	[rsp-136]
mov	qword	[rbx+8],	4
mov	rbx,	[rsp]
lea	rbx,	[rsp-144]
sub	rsp,	144
call	f19
add	rsp,	144
mov	rbx,	[rsp]
lea	rbx,	[rsp-152]
lea	rax,	[rel+f12]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-168]
mov	[rsp-176],	rax
lea	rax,	[rsp-120]
mov	[rsp-168],	rax
lea	rbx,	[rsp-168]
mov	qword	[rbx+8],	4
mov	rbx,	[rsp]
lea	rbx,	[rsp-176]
sub	rsp,	176
call	f18
add	rsp,	176
mov	rbx,	[rsp]
mov	[rsp-160],	rax
lea	rax,	[rsp-152]
mov	[rsp-168],	rax
lea	rbx,	[rsp-168]
sub	rsp,	168
call	f11
add	rsp,	168
mov	rbx,	[rsp]
lea	rax,	[rsp-152]
mov	[rsp-160],	rax
lea	rbx,	[rsp-160]
sub	rsp,	160
call	f9
add	rsp,	160
mov	rbx,	[rsp]
lea	rax,	[rsp-168]
mov	[rsp-176],	rax
lea	rax,	[rsp-120]
mov	[rsp-168],	rax
lea	rbx,	[rsp-168]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-176]
sub	rsp,	176
call	f18
add	rsp,	176
mov	rbx,	[rsp]
mov	[rsp-160],	rax
lea	rax,	[rsp-152]
mov	[rsp-168],	rax
lea	rbx,	[rsp-168]
sub	rsp,	168
call	f11
add	rsp,	168
mov	rbx,	[rsp]
lea	rax,	[rsp-152]
mov	[rsp-160],	rax
lea	rbx,	[rsp-160]
sub	rsp,	160
call	f9
add	rsp,	160
mov	rbx,	[rsp]
lea	rbx,	[rsp-152]
lea	rax,	[rel+f12]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-152]
mov	[rsp-168],	rax
mov	rax,	[rsp-120]
mov	[rsp-160],	rax
lea	rbx,	[rsp-168]
sub	rsp,	168
call	f28
add	rsp,	168
mov	rbx,	[rsp]
lea	rax,	[rsp-184]
mov	[rsp-192],	rax
lea	rax,	[rsp-120]
mov	[rsp-184],	rax
lea	rbx,	[rsp-184]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-192]
sub	rsp,	192
call	f19
add	rsp,	192
mov	rbx,	[rsp]
mov	rax,	[rsp-120]
mov	[rsp-160],	rax
lea	rbx,	[rsp-168]
sub	rsp,	168
call	f28
add	rsp,	168
mov	rbx,	[rsp]
mov	qword	[rsp-128],	4
lea	rax,	[rel+f54]
mov	[rsp-144],	rax
mov	[rsp-136],	rsp
lea	rax,	[rsp-112]
mov	[rsp-152],	rax
lea	rbx,	[rsp-152]
sub	rsp,	152
call	f47
add	rsp,	152
mov	rbx,	[rsp]
lea	rax,	[rel+f55]
mov	[rsp-144],	rax
mov	[rsp-136],	rsp
lea	rax,	[rsp-112]
mov	[rsp-152],	rax
lea	rbx,	[rsp-152]
sub	rsp,	152
call	f47
add	rsp,	152
mov	rbx,	[rsp]
lea	rax,	[rsp-160]
mov	[rsp-168],	rax
lea	rbx,	[rsp-160]
lea	rax,	[rel+f12]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-168]
sub	rsp,	168
call	f9
add	rsp,	168
mov	rbx,	[rsp]
mov	qword	[rsp-144],	13
mov	qword	[rsp-136],	2
lea	rbx,	[rsp-144]
sub	rsp,	144
call	f30
add	rsp,	144
mov	rbx,	[rsp]
mov	qword	[rsp-144],	7
mov	qword	[rsp-136],	0
lea	rbx,	[rsp-144]
sub	rsp,	144
call	f30
add	rsp,	144
mov	rbx,	[rsp]
lea	rax,	[rsp-112]
mov	[rsp-144],	rax
mov	qword	[rsp-136],	0
lea	rbx,	[rsp-144]
sub	rsp,	144
call	f46
add	rsp,	144
mov	rbx,	[rsp]
mov	[rsp-152],	rax
mov	rcx,	[rsp-152]
mov	qword	[rcx+0],	0
mov	rcx,	[rsp-152]
mov	qword	[rcx+8],	1
mov	qword	[rsp-136],	1
lea	rbx,	[rsp-144]
sub	rsp,	144
call	f46
add	rsp,	144
mov	rbx,	[rsp]
mov	[rsp-152],	rax
mov	rcx,	[rsp-152]
mov	qword	[rcx+0],	2
mov	rcx,	[rsp-152]
mov	qword	[rcx+8],	4
mov	qword	[rsp-136],	2
lea	rbx,	[rsp-144]
sub	rsp,	144
call	f46
add	rsp,	144
mov	rbx,	[rsp]
mov	[rsp-152],	rax
mov	rcx,	[rsp-152]
mov	qword	[rcx+0],	2
mov	rcx,	[rsp-152]
mov	qword	[rcx+8],	4
mov	qword	[rsp-136],	3
lea	rbx,	[rsp-144]
sub	rsp,	144
call	f46
add	rsp,	144
mov	rbx,	[rsp]
mov	[rsp-152],	rax
mov	rcx,	[rsp-152]
mov	qword	[rcx+0],	0
mov	rcx,	[rsp-152]
mov	qword	[rcx+8],	1
mov	qword	[rsp-136],	4
lea	rbx,	[rsp-144]
sub	rsp,	144
call	f46
add	rsp,	144
mov	rbx,	[rsp]
mov	[rsp-152],	rax
mov	rcx,	[rsp-152]
mov	qword	[rcx+0],	2
mov	rcx,	[rsp-152]
mov	qword	[rcx+8],	4
mov	rax,	6
mov	[rsp-136],	rax
mov	rax,	4
xor	rdx,	rdx
mov	qword	rcx,	2
div	qword	rcx
mov	[rsp-144],	rax
mov	rax,	[rsp-136]
sub	rax,	[rsp-144]
mov	[rsp-136],	rax
mov	rax,	5
xor	rdx,	rdx
mov	qword	rcx,	9
mul	qword	rcx
mov	[rsp-144],	rax
mov	rax,	[rsp-136]
add	rax,	[rsp-144]
mov	[rsp-168],	rax
lea	rax,	[rsp-160]
mov	[rsp-176],	rax
lea	rbx,	[rsp-160]
lea	rax,	[rel+f12]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-176]
sub	rsp,	176
call	f11
add	rsp,	176
mov	rbx,	[rsp]
lea	rax,	[rsp-160]
mov	[rsp-168],	rax
lea	rbx,	[rsp-160]
lea	rax,	[rel+f12]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-168]
sub	rsp,	168
call	f9
add	rsp,	168
mov	rbx,	[rsp]
lea	rax,	[rsp-176]
mov	[rsp-208],	rax
mov	qword	[rsp-200],	48
lea	rax,	[rsp-192]
mov	[rsp-216],	rax
lea	rbx,	[rsp-216]
sub	rsp,	216
call	f56
add	rsp,	216
mov	rbx,	[rsp]
lea	rax,	[rsp-112]
mov	[rsp-208],	rax
lea	rax,	[rsp-192]
mov	[rsp-200],	rax
lea	rbx,	[rsp-208]
sub	rsp,	208
call	f41
add	rsp,	208
mov	rbx,	[rsp]
lea	rax,	[rel+f62]
mov	[rsp-208],	rax
mov	[rsp-200],	rsp
lea	rax,	[rsp-192]
mov	[rsp-216],	rax
lea	rbx,	[rsp-216]
sub	rsp,	216
call	f61
add	rsp,	216
mov	rbx,	[rsp]
mov	qword	[rsp-240],	s10
mov	qword	[rsp-232],	23
lea	rax,	[rsp-224]
mov	[rsp-248],	rax
lea	rbx,	[rsp-224]
lea	rax,	[rel+f12]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-248]
sub	rsp,	248
call	f10
add	rsp,	248
mov	rbx,	[rsp]
lea	rax,	[rsp-232]
mov	[rsp-304],	rax
mov	qword	[rsp-296],	40
lea	rax,	[rsp-288]
mov	[rsp-312],	rax
lea	rbx,	[rsp-312]
sub	rsp,	312
call	f13
add	rsp,	312
mov	rbx,	[rsp]
mov	qword	[rsp-312],	s11
mov	qword	[rsp-304],	5
lea	rax,	[rsp-288]
mov	[rsp-296],	rax
lea	rbx,	[rsp-328]
lea	rax,	[rel+f17]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-328]
sub	rsp,	328
call	f6
add	rsp,	328
mov	rbx,	[rsp]
lea	rax,	[rsp-272]
mov	[rsp-320],	rax
mov	qword	[rsp-312],	40
lea	rax,	[rsp-304]
mov	[rsp-328],	rax
lea	rbx,	[rsp-328]
sub	rsp,	328
call	f13
add	rsp,	328
mov	rbx,	[rsp]
mov	qword	[rsp-328],	s12
mov	qword	[rsp-320],	5
lea	rax,	[rsp-304]
mov	[rsp-312],	rax
lea	rbx,	[rsp-344]
lea	rax,	[rel+f17]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-344]
sub	rsp,	344
call	f6
add	rsp,	344
mov	rbx,	[rsp]
lea	rax,	[rsp-320]
mov	[rsp-344],	rax
mov	qword	[rsp-336],	1
mov	qword	[rsp-328],	71
lea	rax,	[rsp-288]
mov	[rsp-344],	rax
lea	rbx,	[rsp-344]
sub	rsp,	344
call	f14
add	rsp,	344
mov	rbx,	[rsp]
lea	rax,	[rsp-304]
mov	[rsp-344],	rax
lea	rbx,	[rsp-344]
sub	rsp,	344
call	f14
add	rsp,	344
mov	rbx,	[rsp]
lea	rbx,	[rsp-336]
lea	rax,	[rel+f12]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
mov	rax,	[rsp-288]
mov	rdx,	[rsp-280]
mov	[rsp-352],	rax
mov	[rsp-344],	rdx
lea	rax,	[rsp-336]
mov	[rsp-360],	rax
lea	rbx,	[rsp-360]
sub	rsp,	360
call	f7
add	rsp,	360
mov	rbx,	[rsp]
lea	rax,	[rsp-336]
mov	[rsp-344],	rax
lea	rbx,	[rsp-344]
sub	rsp,	344
call	f9
add	rsp,	344
mov	rbx,	[rsp]
mov	rax,	[rsp-304]
mov	rdx,	[rsp-296]
mov	[rsp-352],	rax
mov	[rsp-344],	rdx
lea	rax,	[rsp-336]
mov	[rsp-360],	rax
lea	rbx,	[rsp-360]
sub	rsp,	360
call	f7
add	rsp,	360
mov	rbx,	[rsp]
lea	rax,	[rsp-336]
mov	[rsp-344],	rax
lea	rbx,	[rsp-344]
sub	rsp,	344
call	f9
add	rsp,	344
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
mov	qword	[rsp-32],	2
mov	qword	[rsp-24],	0
mov	rax,	[rbx+0]
mov	rdx,	[rbx+8]
mov	[rsp-16],	rax
mov	qword	[rsp-8],	1
lea	rbx,	[rsp-32]
sub	rsp,	32
call	f0
add	rsp,	32
mov	rbx,	[rsp]
pop	rbx
ret
f4:
push	rbx
mov	qword	[rsp-32],	3
mov	rax,	[rbx+0]
mov	[rsp-16],	rax
lea	rbx,	[rsp-32]
sub	rsp,	32
call	f0
add	rsp,	32
mov	rbx,	[rsp]
pop	rbx
ret
f5:
push	rbx
mov	qword	[rsp-32],	1
mov	rax,	[rbx+8]
mov	[rsp-24],	rax
mov	rax,	[rbx+16]
mov	[rsp-16],	rax
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
f6:
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
f7:
push	rbx
mov	rax,	[rbx+8]
mov	rdx,	[rbx+16]
mov	rcx,	[rbx+0]
mov	[rcx+16],	rax
mov	[rcx+24],	rdx
mov	rbx,	[rbx+0]
sub	rsp,	0
call	f6
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
call	f6
add	rsp,	8
mov	rbx,	[rsp]
pop	rbx
ret
f9:
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
f10:
push	rbx
mov	rax,	[rbx+8]
mov	rdx,	[rbx+16]
mov	[rsp-16],	rax
mov	[rsp-8],	rdx
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f7
add	rsp,	24
mov	rbx,	[rsp]
mov	rax,	[rbx+0]
mov	[rsp-8],	rax
lea	rbx,	[rsp-8]
sub	rsp,	8
call	f9
add	rsp,	8
mov	rbx,	[rsp]
pop	rbx
ret
f11:
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
call	f6
add	rsp,	64
mov	rbx,	[rsp]
pop	rbx
ret
f12:
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
f13:
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
f14:
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
mov	rax,	[rcx+8]
pop	rbx
ret
f17:
push	rdx
push	rbx
mov	rax,	[rbx+16]
mov	rdx,	[rbx+24]
mov	[rsp-8],	rax
mov	rcx,	[rbx+32]
mov	rax,	[rcx+0]
mov	rdx,	[rcx+8]
mov	[rsp-16],	rax
mov	rax,	[rsp-16]
mov	rcx,	[rbx+32]
add	rax,	[rcx+8]
mov	[rsp-16],	rax
mov	rax,	[rbx+24]
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
f21:
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
f22:
push	rbx
lea	rax,	[rsp-20]
mov	[rsp-56],	rax
mov	qword	[rsp-48],	20
lea	rax,	[rsp-40]
mov	[rsp-64],	rax
lea	rbx,	[rsp-64]
sub	rsp,	64
call	f13
add	rsp,	64
mov	rbx,	[rsp]
lea	rax,	[rsp-40]
mov	[rsp-48],	rax
lea	rbx,	[rsp-80]
lea	rax,	[rel+f17]
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
call	f7
add	rsp,	104
mov	rbx,	[rsp]
mov	qword	[rsp-88],	0
lea	rax,	[rsp-80]
mov	[rsp-96],	rax
lea	rbx,	[rsp-96]
sub	rsp,	96
call	f8
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
f23:
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
f24:
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
f25:
push	rbx
mov	qword	[rsp-8],	67
mov	rax,	[rbx+0]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f8
add	rsp,	16
mov	rbx,	[rsp]
mov	qword	[rsp-8],	76
mov	rax,	[rbx+0]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f8
add	rsp,	16
mov	rbx,	[rsp]
mov	qword	[rsp-8],	79
mov	rax,	[rbx+0]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f8
add	rsp,	16
mov	rbx,	[rsp]
mov	qword	[rsp-8],	83
mov	rax,	[rbx+0]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f8
add	rsp,	16
mov	rbx,	[rsp]
mov	qword	[rsp-8],	69
mov	rax,	[rbx+0]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f8
add	rsp,	16
mov	rbx,	[rsp]
pop	rbx
ret
f26:
push	rbx
lea	rbx,	[rsp-32]
lea	rax,	[rel+f12]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-32]
mov	[rsp-40],	rax
lea	rbx,	[rsp-40]
sub	rsp,	40
call	f25
add	rsp,	40
mov	rbx,	[rsp]
pop	rbx
ret
f27:
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
call	f27
add	rsp,	16
mov	rbx,	[rsp]
mov	[rsp-16],	rax
mov	rax,	[rsp-8]
xor	rdx,	rdx
mul	qword	[rsp-16]
b7:
pop	rbx
ret
f28:
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
call	f18
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
call	f7
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
call	f18
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
call	f7
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
call	f18
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
call	f7
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
call	f18
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
call	f7
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
call	f18
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
call	f7
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
call	f9
add	rsp,	8
mov	rbx,	[rsp]
pop	rbx
ret
f29:
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
f30:
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
call	f29
add	rsp,	48
mov	rbx,	[rsp]
lea	rax,	[rsp-16]
mov	[rsp-56],	rax
lea	rbx,	[rsp-56]
sub	rsp,	56
call	f16
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
lea	rax,	[rel+f12]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-104]
sub	rsp,	104
call	f10
add	rsp,	104
mov	rbx,	[rsp]
jmp	b20
b19:
lea	rbx,	[rsp-80]
lea	rax,	[rel+f12]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
mov	qword	[rsp-96],	s8
mov	qword	[rsp-88],	10
lea	rax,	[rsp-80]
mov	[rsp-104],	rax
lea	rbx,	[rsp-104]
sub	rsp,	104
call	f7
add	rsp,	104
mov	rbx,	[rsp]
mov	rax,	[rsp-24]
mov	[rsp-88],	rax
lea	rax,	[rsp-80]
mov	[rsp-96],	rax
lea	rbx,	[rsp-96]
sub	rsp,	96
call	f11
add	rsp,	96
mov	rbx,	[rsp]
mov	qword	[rsp-96],	s9
mov	qword	[rsp-88],	5
lea	rax,	[rsp-80]
mov	[rsp-104],	rax
lea	rbx,	[rsp-104]
sub	rsp,	104
call	f7
add	rsp,	104
mov	rbx,	[rsp]
mov	rax,	[rsp-32]
mov	[rsp-88],	rax
lea	rax,	[rsp-80]
mov	[rsp-96],	rax
lea	rbx,	[rsp-96]
sub	rsp,	96
call	f11
add	rsp,	96
mov	rbx,	[rsp]
lea	rax,	[rsp-80]
mov	[rsp-88],	rax
lea	rbx,	[rsp-88]
sub	rsp,	88
call	f9
add	rsp,	88
mov	rbx,	[rsp]
b20:
pop	rbx
ret
f31:
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
f32:
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
mov	rcx,	[rbx+0]
add	rax,	[rcx+24]
mov	rcx,	[rbx+0]
mov	[rcx+8],	rax
mov	rcx,	[rbx+0]
mov	rax,	[rcx+16]
add	rax,	1
mov	rcx,	[rbx+0]
mov	[rcx+16],	rax
pop	rbx
ret
f33:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+0]
mov	rdx,	[rcx+8]
mov	[rsp-16],	rax
mov	rax,	[rbx+8]
mov	rcx,	[rbx+0]
xor	rdx,	rdx
mul	qword	[rcx+24]
mov	[rsp-24],	rax
mov	rax,	[rsp-16]
add	rax,	[rsp-24]
mov	[rsp-8],	rax
mov	rax,	[rsp-8]
pop	rbx
ret
f34:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+0]
mov	rdx,	[rcx+8]
mov	[rsp-8],	rax
mov	rcx,	[rbx+0]
mov	rax,	[rcx+16]
mov	[rsp-16],	rax
b21:
mov	rax,	[rsp-16]
cmp	rax,	0
setg	al
movzx	rax,	al
cmp	rax,	0
je	b22
mov	rdx,	[rbx+16]
mov	rax,	[rbx+8]
mov	rbx,	[rsp-8]
sub	rsp,	16
call	rax
add	rsp,	16
mov	rbx,	[rsp]
mov	rax,	[rsp-8]
mov	rcx,	[rbx+0]
add	rax,	[rcx+24]
mov	[rsp-8],	rax
mov	rax,	[rsp-16]
sub	rax,	1
mov	[rsp-16],	rax
jmp	b21
b22:
pop	rbx
ret
f35:
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
f36:
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
f37:
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
f38:
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
call	f37
add	rsp,	24
mov	rbx,	[rsp]
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
add	rax,	1
mov	rcx,	[rbx+0]
mov	[rcx+8],	rax
pop	rbx
ret
f39:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
pop	rbx
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
f41:
push	rbx
lea	rax,	[rel+f42]
mov	[rsp-16],	rax
mov	[rsp-8],	rsp
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f34
add	rsp,	24
mov	rbx,	[rsp]
pop	rbx
ret
f42:
push	rdx
push	rbx
mov	qword	[rsp-8],	0
lea	rax,	[rel+f43]
mov	[rsp-24],	rax
mov	[rsp-16],	rsp
mov	rcx,	[rsp+8]
mov	rcx,	[rcx]
mov	rax,	[rcx+8]
mov	[rsp-32],	rax
lea	rbx,	[rsp-32]
sub	rsp,	32
call	f40
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
call	f38
add	rsp,	24
mov	rbx,	[rsp]
b25:
pop	rbx
pop	rdx
ret
f43:
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
f44:
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
f45:
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
mov	rcx,	[rbx+0]
add	rax,	[rcx+24]
mov	rcx,	[rbx+0]
mov	[rcx+8],	rax
mov	rcx,	[rbx+0]
mov	rax,	[rcx+16]
add	rax,	1
mov	rcx,	[rbx+0]
mov	[rcx+16],	rax
pop	rbx
ret
f46:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+0]
mov	rdx,	[rcx+8]
mov	[rsp-16],	rax
mov	rax,	[rbx+8]
mov	rcx,	[rbx+0]
xor	rdx,	rdx
mul	qword	[rcx+24]
mov	[rsp-24],	rax
mov	rax,	[rsp-16]
add	rax,	[rsp-24]
mov	[rsp-8],	rax
mov	rax,	[rsp-8]
pop	rbx
ret
f47:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+0]
mov	rdx,	[rcx+8]
mov	[rsp-8],	rax
mov	rcx,	[rbx+0]
mov	rax,	[rcx+16]
mov	[rsp-16],	rax
b27:
mov	rax,	[rsp-16]
cmp	rax,	0
setg	al
movzx	rax,	al
cmp	rax,	0
je	b28
mov	rdx,	[rbx+16]
mov	rax,	[rbx+8]
mov	rbx,	[rsp-8]
sub	rsp,	16
call	rax
add	rsp,	16
mov	rbx,	[rsp]
mov	rax,	[rsp-8]
mov	rcx,	[rbx+0]
add	rax,	[rcx+24]
mov	[rsp-8],	rax
mov	rax,	[rsp-16]
sub	rax,	1
mov	[rsp-16],	rax
jmp	b27
b28:
pop	rbx
ret
f48:
push	rdx
push	rbx
mov	qword	[rbx+0],	1
mov	qword	[rbx+8],	0
pop	rbx
pop	rdx
ret
f49:
push	rdx
push	rbx
mov	qword	[rbx+0],	2
mov	qword	[rbx+8],	5
pop	rbx
pop	rdx
ret
f50:
push	rdx
push	rbx
mov	qword	[rbx+0],	0
mov	qword	[rbx+8],	5
pop	rbx
pop	rdx
ret
f51:
push	rdx
push	rbx
mov	qword	[rbx+0],	2
mov	qword	[rbx+8],	7
pop	rbx
pop	rdx
ret
f52:
push	rdx
push	rbx
mov	qword	[rbx+0],	4
mov	qword	[rbx+8],	1
pop	rbx
pop	rdx
ret
f53:
push	rdx
push	rbx
mov	rax,	[rbx+0]
add	rax,	[rbx+8]
mov	[rsp-40],	rax
lea	rax,	[rsp-32]
mov	[rsp-48],	rax
lea	rbx,	[rsp-32]
lea	rax,	[rel+f12]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f11
add	rsp,	48
mov	rbx,	[rsp]
pop	rbx
pop	rdx
ret
f54:
push	rdx
push	rbx
mov	rcx,	[rsp+8]
mov	rax,	[rcx-128]
mov	[rbx+8],	rax
mov	rcx,	[rsp+8]
mov	rax,	[rcx-128]
sub	rax,	1
mov	rcx,	[rsp+8]
mov	[rcx-128],	rax
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
lea	rax,	[rel+f12]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f11
add	rsp,	48
mov	rbx,	[rsp]
pop	rbx
pop	rdx
ret
f56:
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
mov	rcx,	[rsp-8]
mov	rax,	[rcx+0]
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
mov	rax,	[rbx+16]
mov	rcx,	[rsp-8]
mov	[rcx+0],	rax
pop	rbx
ret
f59:
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
call	f58
add	rsp,	24
mov	rbx,	[rsp]
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
add	rax,	1
mov	rcx,	[rbx+0]
mov	[rcx+8],	rax
pop	rbx
ret
f60:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
pop	rbx
ret
f61:
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
f62:
push	rdx
push	rbx
lea	rbx,	[rsp-32]
lea	rax,	[rel+f12]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
mov	rax,	[rbx+0]
mov	[rsp-40],	rax
lea	rax,	[rsp-32]
mov	[rsp-48],	rax
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f11
add	rsp,	48
mov	rbx,	[rsp]
mov	rax,	[rbx+8]
mov	[rsp-40],	rax
lea	rax,	[rsp-32]
mov	[rsp-48],	rax
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f11
add	rsp,	48
mov	rbx,	[rsp]
lea	rax,	[rsp-32]
mov	[rsp-40],	rax
lea	rbx,	[rsp-40]
sub	rsp,	40
call	f9
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
s10	db	'This is in fact a line.'
s11	db	'FIRST'
s12	db	'AFTER'
