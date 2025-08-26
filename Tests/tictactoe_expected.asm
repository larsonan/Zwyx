global	_start
_start:
mov	rcx,	static_mem
lea	rbx,	[rcx+400]
mov	qword	[rbx+24],	64
mov	rbx,	[rsp]
mov	rcx,	static_mem
lea	rax,	[rcx+0]
mov	rcx,	static_mem
mov	[rcx+400],	rax
mov	qword	[rcx+408],	400
mov	rcx,	static_mem
lea	rbx,	[rcx+432]
lea	rax,	[rel+f38]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
lea	rax,	[rel+f39]
mov	[rbx+16],	rax
mov	[rbx+24],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-280]
lea	rax,	[rel+f49]
mov	[rbx+56],	rax
mov	[rbx+64],	rbx
lea	rax,	[rel+f50]
mov	[rbx+88],	rax
mov	[rbx+96],	rbx
lea	rax,	[rel+f51]
mov	[rbx+184],	rax
mov	[rbx+192],	rbx
lea	rax,	[rel+f52]
mov	[rbx+152],	rax
mov	[rbx+160],	rbx
lea	rax,	[rel+f53]
mov	[rbx+216],	rax
mov	[rbx+224],	rbx
lea	rax,	[rel+f54]
mov	[rbx+104],	rax
mov	[rbx+112],	rbx
lea	rax,	[rel+f55]
mov	[rbx+168],	rax
mov	[rbx+176],	rbx
lea	rax,	[rel+f56]
mov	[rbx+136],	rax
mov	[rbx+144],	rbx
lea	rax,	[rel+f57]
mov	[rbx+200],	rax
mov	[rbx+208],	rbx
lea	rax,	[rel+f58]
mov	[rbx+120],	rax
mov	[rbx+128],	rbx
lea	rax,	[rel+f59]
mov	[rbx+232],	rax
mov	[rbx+240],	rbx
lea	rax,	[rel+f60]
mov	[rbx+72],	rax
mov	[rbx+80],	rbx
lea	rax,	[rel+f61]
mov	[rbx+248],	rax
mov	[rbx+256],	rbx
lea	rax,	[rel+f62]
mov	[rbx+264],	rax
mov	[rbx+272],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-280]
mov	[rsp-288],	rax
lea	rbx,	[rsp-288]
sub	rsp,	288
call	f45
add	rsp,	288
mov	rbx,	[rsp]
lea	rax,	[rsp-280]
mov	[rsp-304],	rax
mov	qword	[rsp-296],	0
mov	qword	[rsp-288],	0
lea	rax,	[rsp-320]
mov	[rsp-328],	rax
lea	rax,	[rsp-304]
mov	[rsp-320],	rax
lea	rbx,	[rsp-320]
mov	qword	[rbx+8],	88
mov	rbx,	[rsp]
lea	rbx,	[rsp-328]
sub	rsp,	328
call	f44
add	rsp,	328
mov	rbx,	[rsp]
lea	rax,	[rsp-296]
mov	[rsp-304],	rax
lea	rax,	[rsp-264]
mov	[rsp-296],	rax
lea	rbx,	[rsp-296]
mov	qword	[rbx+8],	0
mov	rbx,	[rsp]
lea	rbx,	[rsp-304]
sub	rsp,	304
call	f20
add	rsp,	304
mov	rbx,	[rsp]
mov	rax,	[rsp-224]
mov	rdx,	[rsp-216]
mov	[rsp-240],	rax
mov	[rsp-232],	rdx
b0:
lea	rax,	[rsp-296]
mov	[rsp-304],	rax
lea	rax,	[rsp-264]
mov	[rsp-296],	rax
lea	rbx,	[rsp-296]
mov	qword	[rbx+8],	0
mov	rbx,	[rsp]
lea	rbx,	[rsp-304]
sub	rsp,	304
call	f19
add	rsp,	304
mov	rbx,	[rsp]
cmp	rax,	0
je	b1
lea	rax,	[rsp-280]
mov	[rsp-288],	rax
lea	rbx,	[rsp-288]
sub	rsp,	288
call	f47
add	rsp,	288
mov	rbx,	[rsp]
mov	qword	[rsp-296],	s1
mov	qword	[rsp-288],	24
lea	rbx,	[rsp-312]
lea	rax,	[rel+f13]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-312]
sub	rsp,	312
call	f7
add	rsp,	312
mov	rbx,	[rsp]
lea	rbx,	[rsp-288]
sub	rsp,	288
call	f21
add	rsp,	288
mov	rbx,	[rsp]
mov	[rsp-288],	rax
lea	rbx,	[rsp-296]
sub	rsp,	296
call	f21
add	rsp,	296
mov	rbx,	[rsp]
mov	[rsp-296],	rax
mov	rax,	[rsp-296]
cmp	rax,	44
sete	al
movzx	rax,	al
cmp	rax,	0
je	b2
lea	rbx,	[rsp-296]
sub	rsp,	296
call	f21
add	rsp,	296
mov	rbx,	[rsp]
mov	[rsp-296],	rax
b2:
mov	rax,	[rsp-296]
mov	[rsp-304],	rax
b3:
mov	rax,	[rsp-296]
cmp	rax,	10
setne	al
movzx	rax,	al
cmp	rax,	0
je	b4
lea	rbx,	[rsp-304]
sub	rsp,	304
call	f21
add	rsp,	304
mov	rbx,	[rsp]
mov	[rsp-296],	rax
jmp	b3
b4:
mov	rax,	[rsp-288]
cmp	rax,	49
setl	al
movzx	rax,	al
mov	[rsp-312],	rax
mov	rax,	[rsp-288]
cmp	rax,	51
setg	al
movzx	rax,	al
mov	[rsp-320],	rax
mov	rax,	[rsp-312]
or	rax,	[rsp-320]
mov	[rsp-312],	rax
mov	rax,	[rsp-304]
cmp	rax,	49
setl	al
movzx	rax,	al
mov	[rsp-320],	rax
mov	rax,	[rsp-312]
or	rax,	[rsp-320]
mov	[rsp-312],	rax
mov	rax,	[rsp-304]
cmp	rax,	51
setg	al
movzx	rax,	al
mov	[rsp-320],	rax
mov	rax,	[rsp-312]
or	rax,	[rsp-320]
cmp	rax,	0
je	b5
mov	qword	[rsp-352],	s2
mov	qword	[rsp-344],	13
lea	rax,	[rsp-336]
mov	[rsp-360],	rax
lea	rbx,	[rsp-336]
lea	rax,	[rel+f13]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-360]
sub	rsp,	360
call	f11
add	rsp,	360
mov	rbx,	[rsp]
jmp	b6
b5:
mov	rax,	[rsp-288]
sub	rax,	49
mov	[rsp-256],	rax
mov	rax,	[rsp-304]
sub	rax,	49
mov	[rsp-248],	rax
lea	rax,	[rsp-280]
mov	[rsp-328],	rax
mov	rax,	[rsp-256]
mov	[rsp-320],	rax
mov	rax,	[rsp-248]
mov	[rsp-312],	rax
lea	rax,	[rsp-344]
mov	[rsp-352],	rax
lea	rax,	[rsp-328]
mov	[rsp-344],	rax
lea	rbx,	[rsp-344]
mov	qword	[rbx+8],	46
mov	rbx,	[rsp]
lea	rbx,	[rsp-352]
sub	rsp,	352
call	f43
add	rsp,	352
mov	rbx,	[rsp]
cmp	rax,	0
je	b7
lea	rax,	[rsp-280]
mov	[rsp-328],	rax
mov	rax,	[rsp-256]
mov	[rsp-320],	rax
mov	rax,	[rsp-248]
mov	[rsp-312],	rax
lea	rax,	[rsp-344]
mov	[rsp-352],	rax
lea	rax,	[rsp-328]
mov	[rsp-344],	rax
lea	rbx,	[rsp-344]
mov	qword	[rbx+8],	79
mov	rbx,	[rsp]
lea	rbx,	[rsp-352]
sub	rsp,	352
call	f44
add	rsp,	352
mov	rbx,	[rsp]
mov	rdx,	[rsp-232]
mov	rax,	[rsp-240]
lea	rbx,	[rsp-280]
sub	rsp,	304
call	rax
add	rsp,	304
mov	rbx,	[rsp]
lea	rax,	[rsp-280]
mov	[rsp-328],	rax
mov	rax,	[rsp-256]
mov	[rsp-320],	rax
mov	rax,	[rsp-248]
mov	[rsp-312],	rax
lea	rax,	[rsp-344]
mov	[rsp-352],	rax
lea	rax,	[rsp-328]
mov	[rsp-344],	rax
lea	rbx,	[rsp-344]
mov	qword	[rbx+8],	88
mov	rbx,	[rsp]
lea	rbx,	[rsp-352]
sub	rsp,	352
call	f44
add	rsp,	352
mov	rbx,	[rsp]
jmp	b8
b7:
mov	qword	[rsp-352],	s3
mov	qword	[rsp-344],	13
lea	rax,	[rsp-336]
mov	[rsp-360],	rax
lea	rbx,	[rsp-336]
lea	rax,	[rel+f13]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-360]
sub	rsp,	360
call	f11
add	rsp,	360
mov	rbx,	[rsp]
b8:
b6:
jmp	b0
b1:
lea	rax,	[rsp-280]
mov	[rsp-288],	rax
lea	rbx,	[rsp-288]
sub	rsp,	288
call	f47
add	rsp,	288
mov	rbx,	[rsp]
lea	rax,	[rsp-296]
mov	[rsp-304],	rax
lea	rax,	[rsp-264]
mov	[rsp-296],	rax
lea	rbx,	[rsp-296]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-304]
sub	rsp,	304
call	f19
add	rsp,	304
mov	rbx,	[rsp]
cmp	rax,	0
je	b9
mov	qword	[rsp-328],	s4
mov	qword	[rsp-320],	9
lea	rax,	[rsp-312]
mov	[rsp-336],	rax
lea	rbx,	[rsp-312]
lea	rax,	[rel+f13]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-336]
sub	rsp,	336
call	f11
add	rsp,	336
mov	rbx,	[rsp]
jmp	b10
b9:
mov	qword	[rsp-328],	s5
mov	qword	[rsp-320],	9
lea	rax,	[rsp-312]
mov	[rsp-336],	rax
lea	rbx,	[rsp-312]
lea	rax,	[rel+f13]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-336]
sub	rsp,	336
call	f11
add	rsp,	336
mov	rbx,	[rsp]
b10:
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
b11:
mov	rax,	[rbx+8]
cmp	rax,	0
setg	al
movzx	rax,	al
cmp	rax,	0
je	b12
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
jmp	b11
b12:
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
mov	rax,	[rbx+8]
mov	rdx,	[rbx+16]
mov	rcx,	[rbx+0]
mov	[rcx+0],	rax
mov	[rcx+8],	rdx
mov	rcx,	[rbx+0]
mov	qword	[rcx+8],	0
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
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
pop	rbx
ret
f18:
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
b13:
mov	rax,	[rsp-24]
cmp	rax,	0
setg	al
movzx	rax,	al
cmp	rax,	0
je	b14
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
jmp	b13
b14:
pop	rbx
pop	rdx
ret
f19:
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
f20:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
mov	rcx,	[rbx+0]
mov	rcx,	[rcx+0]
mov	[rcx+0],	rax
pop	rbx
ret
f21:
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
f22:
push	rbx
b15:
mov	rax,	[rbx+0]
cmp	rax,	[rbx+8]
setl	al
movzx	rax,	al
cmp	rax,	0
je	b16
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
jmp	b15
b16:
pop	rbx
ret
f23:
push	rbx
lea	rax,	[rsp-20]
mov	[rsp-56],	rax
mov	qword	[rsp-48],	20
lea	rax,	[rsp-40]
mov	[rsp-64],	rax
lea	rbx,	[rsp-64]
sub	rsp,	64
call	f14
add	rsp,	64
mov	rbx,	[rsp]
lea	rax,	[rsp-40]
mov	[rsp-48],	rax
lea	rbx,	[rsp-80]
lea	rax,	[rel+f18]
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
f24:
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
f25:
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
f26:
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
f27:
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
f28:
push	rbx
mov	rax,	[rbx+0]
mov	rdx,	[rbx+8]
mov	[rsp-8],	rax
mov	rax,	[rbx+16]
mov	rdx,	[rbx+24]
mov	[rsp-16],	rax
mov	rax,	[rbx+8]
mov	[rsp-24],	rax
b17:
mov	rax,	[rsp-24]
cmp	rax,	0
setg	al
movzx	rax,	al
cmp	rax,	0
je	b18
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
jmp	b17
b18:
pop	rbx
ret
f29:
push	rdx
push	rbx
mov	rax,	[rbx+8]
xor	rdx,	rdx
mov	qword	rcx,	8
div	qword	rcx
mov	rax,	rdx
cmp	rax,	0
je	b19
mov	rax,	[rbx+8]
xor	rdx,	rdx
mov	qword	rcx,	8
div	qword	rcx
xor	rdx,	rdx
mov	qword	rcx,	8
mul	qword	rcx
add	rax,	8
mov	[rbx+8],	rax
b19:
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
b20:
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
je	b21
mov	rcx,	[rsp-40]
mov	rax,	[rcx+0]
and	rax,	0x8000
cmp	rax,	0
je	b22
mov	qword	[rsp-8],	0
mov	rax,	[rsp-40]
mov	[rsp-32],	rax
jmp	b23
b22:
mov	rax,	[rsp-8]
cmp	rax,	0
setg	al
movzx	rax,	al
cmp	rax,	0
je	b24
mov	rax,	[rsp-8]
add	rax,	8
mov	rcx,	[rsp-40]
add	rax,	[rcx+0]
mov	[rsp-8],	rax
mov	rax,	[rsp-8]
mov	rcx,	[rsp-32]
mov	[rcx+0],	rax
jmp	b25
b24:
mov	rax,	[rsp-40]
mov	[rsp-32],	rax
mov	rcx,	[rsp-32]
mov	rax,	[rcx+0]
mov	[rsp-8],	rax
b25:
b23:
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
jmp	b20
b21:
mov	rcx,	[rsp-32]
mov	rax,	[rcx+0]
cmp	rax,	0xFFFF
sete	al
movzx	rax,	al
cmp	rax,	0
je	b26
mov	rax,	0
jmp	b27
b26:
mov	rax,	[rsp-8]
cmp	rax,	[rbx+8]
setg	al
movzx	rax,	al
cmp	rax,	0
je	b28
mov	rax,	[rsp-32]
add	rax,	8
add	rax,	[rbx+8]
mov	[rsp-40],	rax
mov	rax,	[rsp-8]
sub	rax,	[rbx+8]
sub	rax,	8
mov	rcx,	[rsp-40]
mov	[rcx+0],	rax
b28:
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
je	b29
mov	rax,	[rsp-40]
add	rax,	8
mov	[rsp-24],	rax
mov	[rsp-16],	rdx
mov	rax,	[rsp-24]
mov	rdx,	[rsp-16]
mov	rcx,	[rsp+8]
mov	[rcx+48],	rax
b29:
mov	rax,	[rsp-32]
add	rax,	8
b27:
pop	rbx
pop	rdx
ret
f30:
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
je	b30
mov	rax,	[rbx+8]
mov	rdx,	[rbx+16]
mov	rcx,	[rsp+8]
mov	[rcx+48],	rax
b30:
pop	rbx
pop	rdx
ret
f31:
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
lea	rax,	[rel+f32]
mov	[rsp-24],	rax
mov	[rsp-16],	rsp
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f22
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
f32:
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
f33:
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
f34:
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
f35:
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
f36:
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
call	f22
add	rsp,	48
mov	rbx,	[rsp]
pop	rbx
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
mov	rcx,	[rsp+8]
mov	rcx,	[rcx]
mov	rcx,	[rcx+0]
add	rax,	[rcx+24]
mov	rcx,	[rsp+8]
mov	[rcx-8],	rax
pop	rbx
pop	rdx
ret
f38:
push	rdx
push	rbx
mov	qword	[rsp-16],	0
mov	[rsp-8],	rdx
mov	qword	[rsp-24],	0
b31:
mov	rax,	[rsp-16]
mov	rdx,	[rsp-8]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b32
mov	rax,	[rsp-24]
mov	[rsp-32],	rax
mov	rcx,	static_mem
lea	rax,	[rcx+400]
mov	[rsp-40],	rax
lea	rbx,	[rsp-40]
sub	rsp,	40
call	f35
add	rsp,	40
mov	rbx,	[rsp]
mov	[rsp-32],	rax
mov	rcx,	[rsp-32]
mov	rax,	[rcx+56]
cmp	rax,	[rbx+8]
setg	al
movzx	rax,	al
cmp	rax,	0
je	b33
mov	rax,	[rbx+8]
mov	[rsp-40],	rax
mov	rcx,	[rsp-32]
lea	rax,	[rcx+0]
mov	[rsp-48],	rax
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f26
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
jmp	b34
b33:
mov	rcx,	[rsp-32]
mov	rax,	[rcx+32]
mov	rdx,	[rcx+40]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b35
mov	rcx,	[rsp-32]
lea	rbx,	[rcx+0]
lea	rax,	[rel+f29]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
lea	rax,	[rel+f30]
mov	[rbx+16],	rax
mov	[rbx+24],	rbx
mov	rbx,	[rsp]
mov	qword	[rsp-40],	4096
b36:
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
je	b37
mov	rax,	[rsp-40]
xor	rdx,	rdx
mov	qword	rcx,	2
mul	qword	rcx
mov	[rsp-40],	rax
jmp	b36
b37:
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
call	f31
add	rsp,	56
mov	rbx,	[rsp]
mov	rax,	[rbx+8]
mov	[rsp-40],	rax
lea	rax,	[rcx+0]
mov	[rsp-48],	rax
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f26
add	rsp,	48
mov	rbx,	[rsp]
mov	[rsp-16],	rax
mov	[rsp-8],	rdx
mov	rax,	[rcx+40]
sub	rax,	[rbx+8]
sub	rax,	16
mov	rcx,	[rsp-32]
mov	[rcx+56],	rax
b35:
b34:
mov	rax,	[rsp-24]
add	rax,	1
mov	[rsp-24],	rax
jmp	b31
b32:
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
f39:
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
call	f35
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
call	f27
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
f40:
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
je	b38
mov	qword	[rsp-24],	1
mov	rcx,	[rbx+32]
mov	rax,	[rcx+16]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b39
mov	rcx,	[rbx+32]
mov	qword	[rcx+16],	16
mov	qword	[rsp-24],	0
mov	rcx,	[rbx+32]
mov	qword	[rcx+8],	0
b39:
b40:
mov	rcx,	[rbx+32]
mov	rax,	[rcx+8]
add	rax,	[rsp-8]
mov	rcx,	[rbx+32]
cmp	rax,	[rcx+16]
setg	al
movzx	rax,	al
cmp	rax,	0
je	b41
mov	rcx,	[rbx+32]
mov	rax,	[rcx+16]
xor	rdx,	rdx
mov	qword	rcx,	2
mul	qword	rcx
mov	rcx,	[rbx+32]
mov	[rcx+16],	rax
jmp	b40
b41:
mov	rcx,	[rbx+32]
mov	rax,	[rcx+16]
mov	[rsp-48],	rax
mov	rcx,	[rbx+32]
mov	rax,	[rcx+24]
mov	[rsp-56],	rax
lea	rbx,	[rsp-56]
sub	rsp,	56
call	f26
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
je	b42
mov	qword	[rsp-16],	1
jmp	b43
b42:
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
call	f28
add	rsp,	72
mov	rbx,	[rsp]
mov	rax,	[rsp-24]
cmp	rax,	0
je	b44
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
call	f27
add	rsp,	64
mov	rbx,	[rsp]
b44:
mov	rax,	[rsp-40]
mov	rdx,	[rsp-32]
mov	rcx,	[rbx+32]
mov	[rcx+0],	rax
mov	[rcx+8],	rdx
b43:
b38:
mov	rax,	[rsp-16]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b45
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
call	f28
add	rsp,	48
mov	rbx,	[rsp]
mov	rcx,	[rbx+32]
mov	rax,	[rcx+8]
add	rax,	[rsp-8]
mov	rcx,	[rbx+32]
mov	[rcx+8],	rax
b45:
pop	rbx
pop	rdx
ret
f41:
push	rbx
mov	rcx,	[rbx+0]
mov	qword	[rcx+8],	0
pop	rbx
ret
f42:
push	rbx
mov	rax,	[rbx+0]
mov	[rsp-8],	rax
lea	rbx,	[rsp-8]
sub	rsp,	8
call	f41
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
call	f27
add	rsp,	24
mov	rbx,	[rsp]
pop	rbx
ret
f43:
push	rbx
mov	rcx,	[rbx+0]
mov	rcx,	[rcx+0]
mov	rcx,	[rcx+0]
lea	rax,	[rcx+0]
mov	[rsp-8],	rax
mov	rax,	[rsp-8]
mov	rcx,	[rbx+0]
mov	rcx,	[rcx+0]
add	rax,	[rcx+16]
mov	[rsp-16],	rax
mov	rcx,	[rbx+0]
mov	rcx,	[rcx+0]
mov	rax,	[rcx+8]
xor	rdx,	rdx
mov	qword	rcx,	3
mul	qword	rcx
mov	[rsp-24],	rax
mov	rax,	[rsp-16]
add	rax,	[rsp-24]
mov	[rsp-8],	rax
mov	qword	[rsp-16],	0
mov	rax,	[rsp-16]
mov	rcx,	[rsp-8]
mov	al,	[rcx+0]
mov	rcx,	[rbx+0]
cmp	rax,	[rcx+8]
sete	al
movzx	rax,	al
pop	rbx
ret
f44:
push	rbx
mov	rcx,	[rbx+0]
mov	rcx,	[rcx+0]
mov	rcx,	[rcx+0]
lea	rax,	[rcx+0]
mov	[rsp-8],	rax
mov	rax,	[rsp-8]
mov	rcx,	[rbx+0]
mov	rcx,	[rcx+0]
add	rax,	[rcx+16]
mov	[rsp-16],	rax
mov	rcx,	[rbx+0]
mov	rcx,	[rcx+0]
mov	rax,	[rcx+8]
xor	rdx,	rdx
mov	qword	rcx,	3
mul	qword	rcx
mov	[rsp-24],	rax
mov	rax,	[rsp-16]
add	rax,	[rsp-24]
mov	[rsp-8],	rax
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
mov	rcx,	[rsp-8]
mov	[rcx+0],	al
pop	rbx
ret
f45:
push	rbx
mov	rcx,	[rbx+0]
lea	rax,	[rcx+0]
mov	[rsp-8],	rax
mov	qword	[rsp-16],	46
lea	rbx,	[rsp-56]
mov	qword	[rbx+0],	0
mov	qword	[rbx+16],	1
mov	rbx,	[rsp]
mov	qword	[rsp-48],	9
lea	rax,	[rel+f46]
mov	[rsp-32],	rax
mov	[rsp-24],	rsp
lea	rbx,	[rsp-56]
sub	rsp,	56
call	f22
add	rsp,	56
mov	rbx,	[rsp]
pop	rbx
ret
f46:
push	rdx
push	rbx
mov	rcx,	[rsp+8]
mov	rax,	[rcx-16]
mov	rcx,	[rsp+8]
mov	rcx,	[rcx-8]
mov	[rcx+0],	al
mov	rcx,	[rsp+8]
mov	rax,	[rcx-8]
add	rax,	1
mov	rcx,	[rsp+8]
mov	[rcx-8],	rax
pop	rbx
pop	rdx
ret
f47:
push	rbx
mov	rcx,	[rbx+0]
lea	rax,	[rcx+0]
mov	[rsp-8],	rax
lea	rbx,	[rsp-48]
mov	qword	[rbx+0],	0
mov	qword	[rbx+16],	1
mov	rbx,	[rsp]
mov	qword	[rsp-40],	9
lea	rax,	[rel+f48]
mov	[rsp-24],	rax
mov	[rsp-16],	rsp
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f22
add	rsp,	48
mov	rbx,	[rsp]
pop	rbx
ret
f48:
push	rdx
push	rbx
mov	rcx,	[rsp+8]
mov	rcx,	[rcx-8]
mov	al,	[rcx+0]
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
call	f9
add	rsp,	48
mov	rbx,	[rsp]
mov	rcx,	[rsp+8]
mov	rax,	[rcx-8]
add	rax,	1
mov	rcx,	[rsp+8]
mov	[rcx-8],	rax
mov	rax,	[rbx+0]
xor	rdx,	rdx
mov	qword	rcx,	3
div	qword	rcx
mov	rax,	rdx
cmp	rax,	2
sete	al
movzx	rax,	al
cmp	rax,	0
je	b46
lea	rax,	[rsp-32]
mov	[rsp-40],	rax
lea	rbx,	[rsp-32]
lea	rax,	[rel+f13]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-40]
sub	rsp,	40
call	f10
add	rsp,	40
mov	rbx,	[rsp]
b46:
pop	rbx
pop	rdx
ret
f49:
push	rdx
push	rbx
mov	rax,	[rbx+24]
cmp	rax,	1
sete	al
movzx	rax,	al
mov	[rsp-8],	rax
mov	rax,	[rbx+32]
cmp	rax,	1
sete	al
movzx	rax,	al
mov	[rsp-16],	rax
mov	rax,	[rsp-8]
and	rax,	[rsp-16]
cmp	rax,	0
je	b47
mov	qword	[rbx+24],	0
mov	qword	[rbx+32],	1
mov	rax,	[rbx+72]
mov	rdx,	[rbx+80]
mov	[rbx+40],	rax
mov	[rbx+48],	rdx
jmp	b48
b47:
mov	rax,	[rbx+24]
cmp	rax,	1
sete	al
movzx	rax,	al
cmp	rax,	0
je	b49
mov	qword	[rbx+24],	1
mov	qword	[rbx+32],	1
mov	rax,	[rbx+104]
mov	rdx,	[rbx+112]
mov	[rbx+40],	rax
mov	[rbx+48],	rdx
jmp	b50
b49:
mov	rax,	[rbx+32]
cmp	rax,	1
sete	al
movzx	rax,	al
cmp	rax,	0
je	b51
mov	qword	[rbx+24],	1
mov	qword	[rbx+32],	1
mov	rax,	[rbx+88]
mov	rdx,	[rbx+96]
mov	[rbx+40],	rax
mov	[rbx+48],	rdx
jmp	b52
b51:
mov	rax,	[rbx+24]
cmp	rax,	0
sete	al
movzx	rax,	al
mov	[rsp-8],	rax
mov	rax,	[rbx+32]
cmp	rax,	2
sete	al
movzx	rax,	al
mov	[rsp-16],	rax
mov	rax,	[rsp-8]
and	rax,	[rsp-16]
cmp	rax,	0
je	b53
mov	qword	[rbx+24],	2
mov	qword	[rbx+32],	2
mov	rax,	[rbx+152]
mov	rdx,	[rbx+160]
mov	[rbx+40],	rax
mov	[rbx+48],	rdx
jmp	b54
b53:
mov	rax,	[rbx+24]
cmp	rax,	2
sete	al
movzx	rax,	al
mov	[rsp-8],	rax
mov	rax,	[rbx+32]
cmp	rax,	0
sete	al
movzx	rax,	al
mov	[rsp-16],	rax
mov	rax,	[rsp-8]
and	rax,	[rsp-16]
cmp	rax,	0
je	b55
mov	qword	[rbx+24],	2
mov	qword	[rbx+32],	2
mov	rax,	[rbx+136]
mov	rdx,	[rbx+144]
mov	[rbx+40],	rax
mov	[rbx+48],	rdx
jmp	b56
b55:
mov	qword	[rbx+24],	2
mov	qword	[rbx+32],	0
mov	rax,	[rbx+120]
mov	rdx,	[rbx+128]
mov	[rbx+40],	rax
mov	[rbx+48],	rdx
b56:
b54:
b52:
b50:
b48:
pop	rbx
pop	rdx
ret
f50:
push	rdx
push	rbx
mov	rax,	[rbx+24]
cmp	rax,	2
sete	al
movzx	rax,	al
mov	[rsp-8],	rax
mov	rax,	[rbx+32]
cmp	rax,	2
sete	al
movzx	rax,	al
mov	[rsp-16],	rax
mov	rax,	[rsp-8]
and	rax,	[rsp-16]
cmp	rax,	0
je	b57
mov	qword	[rbx+24],	2
mov	qword	[rbx+32],	0
mov	rax,	[rbx+184]
mov	rdx,	[rbx+192]
mov	[rbx+40],	rax
mov	[rbx+48],	rdx
jmp	b58
b57:
mov	qword	[rbx+24],	2
mov	qword	[rbx+32],	2
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
lea	rax,	[rbx+16]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f20
add	rsp,	24
mov	rbx,	[rsp]
b58:
pop	rbx
pop	rdx
ret
f51:
push	rdx
push	rbx
mov	rax,	[rbx+32]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b59
mov	qword	[rbx+24],	0
mov	qword	[rbx+32],	2
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
lea	rax,	[rbx+16]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f20
add	rsp,	24
mov	rbx,	[rsp]
jmp	b60
b59:
mov	qword	[rbx+24],	1
mov	qword	[rbx+32],	0
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
lea	rax,	[rbx+16]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f20
add	rsp,	24
mov	rbx,	[rsp]
b60:
pop	rbx
pop	rdx
ret
f52:
push	rdx
push	rbx
mov	rax,	[rbx+24]
cmp	rax,	1
sete	al
movzx	rax,	al
mov	[rsp-8],	rax
mov	rax,	[rbx+32]
cmp	rax,	1
sete	al
movzx	rax,	al
mov	[rsp-16],	rax
mov	rax,	[rsp-8]
and	rax,	[rsp-16]
cmp	rax,	0
je	b61
mov	qword	[rbx+24],	2
mov	qword	[rbx+32],	0
mov	rax,	[rbx+216]
mov	rdx,	[rbx+224]
mov	[rbx+40],	rax
mov	[rbx+48],	rdx
jmp	b62
b61:
mov	qword	[rbx+24],	1
mov	qword	[rbx+32],	1
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
lea	rax,	[rbx+16]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f20
add	rsp,	24
mov	rbx,	[rsp]
b62:
pop	rbx
pop	rdx
ret
f53:
push	rdx
push	rbx
mov	rax,	[rbx+32]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b63
mov	qword	[rbx+24],	2
mov	qword	[rbx+32],	1
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
lea	rax,	[rbx+16]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f20
add	rsp,	24
mov	rbx,	[rsp]
jmp	b64
b63:
mov	qword	[rbx+24],	1
mov	qword	[rbx+32],	0
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
lea	rax,	[rbx+16]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f20
add	rsp,	24
mov	rbx,	[rsp]
b64:
pop	rbx
pop	rdx
ret
f54:
push	rdx
push	rbx
mov	rax,	[rbx+24]
cmp	rax,	2
sete	al
movzx	rax,	al
mov	[rsp-8],	rax
mov	rax,	[rbx+32]
cmp	rax,	2
sete	al
movzx	rax,	al
mov	[rsp-16],	rax
mov	rax,	[rsp-8]
and	rax,	[rsp-16]
cmp	rax,	0
je	b65
mov	qword	[rbx+24],	0
mov	qword	[rbx+32],	2
mov	rax,	[rbx+168]
mov	rdx,	[rbx+176]
mov	[rbx+40],	rax
mov	[rbx+48],	rdx
jmp	b66
b65:
mov	qword	[rbx+24],	2
mov	qword	[rbx+32],	2
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
lea	rax,	[rbx+16]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f20
add	rsp,	24
mov	rbx,	[rsp]
b66:
pop	rbx
pop	rdx
ret
f55:
push	rdx
push	rbx
mov	rax,	[rbx+24]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b67
mov	qword	[rbx+24],	2
mov	qword	[rbx+32],	0
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
lea	rax,	[rbx+16]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f20
add	rsp,	24
mov	rbx,	[rsp]
jmp	b68
b67:
mov	qword	[rbx+24],	0
mov	qword	[rbx+32],	1
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
lea	rax,	[rbx+16]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f20
add	rsp,	24
mov	rbx,	[rsp]
b68:
pop	rbx
pop	rdx
ret
f56:
push	rdx
push	rbx
mov	rax,	[rbx+24]
cmp	rax,	1
sete	al
movzx	rax,	al
mov	[rsp-8],	rax
mov	rax,	[rbx+32]
cmp	rax,	1
sete	al
movzx	rax,	al
mov	[rsp-16],	rax
mov	rax,	[rsp-8]
and	rax,	[rsp-16]
cmp	rax,	0
je	b69
mov	qword	[rbx+24],	0
mov	qword	[rbx+32],	2
mov	rax,	[rbx+200]
mov	rdx,	[rbx+208]
mov	[rbx+40],	rax
mov	[rbx+48],	rdx
jmp	b70
b69:
mov	qword	[rbx+24],	1
mov	qword	[rbx+32],	1
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
lea	rax,	[rbx+16]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f20
add	rsp,	24
mov	rbx,	[rsp]
b70:
pop	rbx
pop	rdx
ret
f57:
push	rdx
push	rbx
mov	rax,	[rbx+24]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b71
mov	qword	[rbx+24],	1
mov	qword	[rbx+32],	2
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
lea	rax,	[rbx+16]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f20
add	rsp,	24
mov	rbx,	[rsp]
jmp	b72
b71:
mov	qword	[rbx+24],	0
mov	qword	[rbx+32],	1
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
lea	rax,	[rbx+16]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f20
add	rsp,	24
mov	rbx,	[rsp]
b72:
pop	rbx
pop	rdx
ret
f58:
push	rdx
push	rbx
mov	rax,	[rbx+32]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b73
mov	qword	[rbx+24],	0
mov	qword	[rbx+32],	2
mov	rax,	[rbx+232]
mov	rdx,	[rbx+240]
mov	[rbx+40],	rax
mov	[rbx+48],	rdx
jmp	b74
b73:
mov	qword	[rbx+24],	1
mov	qword	[rbx+32],	0
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
lea	rax,	[rbx+16]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f20
add	rsp,	24
mov	rbx,	[rsp]
b74:
pop	rbx
pop	rdx
ret
f59:
push	rdx
push	rbx
mov	rax,	[rbx+24]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b75
mov	qword	[rbx+24],	1
mov	qword	[rbx+32],	1
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
lea	rax,	[rbx+16]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f20
add	rsp,	24
mov	rbx,	[rsp]
jmp	b76
b75:
mov	qword	[rbx+24],	0
mov	qword	[rbx+32],	1
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
lea	rax,	[rbx+16]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f20
add	rsp,	24
mov	rbx,	[rsp]
b76:
pop	rbx
pop	rdx
ret
f60:
push	rdx
push	rbx
mov	rax,	[rbx+24]
cmp	rax,	0
sete	al
movzx	rax,	al
mov	[rsp-8],	rax
mov	rax,	[rbx+32]
cmp	rax,	2
sete	al
movzx	rax,	al
mov	[rsp-16],	rax
mov	rax,	[rsp-8]
and	rax,	[rsp-16]
cmp	rax,	0
je	b77
mov	qword	[rbx+24],	2
mov	qword	[rbx+32],	0
mov	rax,	[rbx+248]
mov	rdx,	[rbx+256]
mov	[rbx+40],	rax
mov	[rbx+48],	rdx
jmp	b78
b77:
mov	qword	[rbx+24],	0
mov	qword	[rbx+32],	2
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
lea	rax,	[rbx+16]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f20
add	rsp,	24
mov	rbx,	[rsp]
b78:
pop	rbx
pop	rdx
ret
f61:
push	rdx
push	rbx
mov	rax,	[rbx+32]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b79
mov	qword	[rbx+24],	1
mov	qword	[rbx+32],	2
mov	rax,	[rbx+264]
mov	rdx,	[rbx+272]
mov	[rbx+40],	rax
mov	[rbx+48],	rdx
jmp	b80
b79:
mov	qword	[rbx+24],	1
mov	qword	[rbx+32],	0
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
lea	rax,	[rbx+16]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f20
add	rsp,	24
mov	rbx,	[rsp]
b80:
pop	rbx
pop	rdx
ret
f62:
push	rdx
push	rbx
mov	rax,	[rbx+32]
cmp	rax,	1
sete	al
movzx	rax,	al
cmp	rax,	0
je	b81
mov	qword	[rbx+24],	2
mov	qword	[rbx+32],	2
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
lea	rax,	[rbx+16]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	1
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f20
add	rsp,	24
mov	rbx,	[rsp]
jmp	b82
b81:
mov	qword	[rbx+24],	2
mov	qword	[rbx+32],	1
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
lea	rax,	[rbx+16]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	1
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f20
add	rsp,	24
mov	rbx,	[rsp]
b82:
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
static_mem	resb	464
SECTION .data
s1	db	'Enter move (Row,Column):'
s2	db	'Illegal move.'
s3	db	'Illegal move.'
s4	db	'Game over'
s5	db	'Cats game'
