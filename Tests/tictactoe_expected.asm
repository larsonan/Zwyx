global	_start
_start:
lea	rbx,	[rsp-280]
lea	rax,	[rel+f31]
mov	[rbx+56],	rax
mov	[rbx+64],	rbx
lea	rax,	[rel+f32]
mov	[rbx+88],	rax
mov	[rbx+96],	rbx
lea	rax,	[rel+f33]
mov	[rbx+184],	rax
mov	[rbx+192],	rbx
lea	rax,	[rel+f34]
mov	[rbx+152],	rax
mov	[rbx+160],	rbx
lea	rax,	[rel+f35]
mov	[rbx+216],	rax
mov	[rbx+224],	rbx
lea	rax,	[rel+f36]
mov	[rbx+104],	rax
mov	[rbx+112],	rbx
lea	rax,	[rel+f37]
mov	[rbx+168],	rax
mov	[rbx+176],	rbx
lea	rax,	[rel+f38]
mov	[rbx+136],	rax
mov	[rbx+144],	rbx
lea	rax,	[rel+f39]
mov	[rbx+200],	rax
mov	[rbx+208],	rbx
lea	rax,	[rel+f40]
mov	[rbx+120],	rax
mov	[rbx+128],	rbx
lea	rax,	[rel+f41]
mov	[rbx+232],	rax
mov	[rbx+240],	rbx
lea	rax,	[rel+f42]
mov	[rbx+72],	rax
mov	[rbx+80],	rbx
lea	rax,	[rel+f43]
mov	[rbx+248],	rax
mov	[rbx+256],	rbx
lea	rax,	[rel+f44]
mov	[rbx+264],	rax
mov	[rbx+272],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-280]
mov	[rsp-288],	rax
lea	rbx,	[rsp-288]
sub	rsp,	288
call	f27
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
call	f26
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
call	f19
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
call	f18
add	rsp,	304
mov	rbx,	[rsp]
cmp	rax,	0
je	b1
lea	rax,	[rsp-280]
mov	[rsp-288],	rax
lea	rbx,	[rsp-288]
sub	rsp,	288
call	f29
add	rsp,	288
mov	rbx,	[rsp]
mov	qword	[rsp-296],	s1
mov	qword	[rsp-288],	24
lea	rbx,	[rsp-312]
lea	rax,	[rel+f12]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-312]
sub	rsp,	312
call	f6
add	rsp,	312
mov	rbx,	[rsp]
lea	rbx,	[rsp-288]
sub	rsp,	288
call	f20
add	rsp,	288
mov	rbx,	[rsp]
mov	[rsp-288],	rax
lea	rbx,	[rsp-296]
sub	rsp,	296
call	f20
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
call	f20
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
call	f20
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
lea	rax,	[rel+f12]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-360]
sub	rsp,	360
call	f10
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
call	f25
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
call	f26
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
call	f26
add	rsp,	352
mov	rbx,	[rsp]
jmp	b8
b7:
mov	qword	[rsp-352],	s3
mov	qword	[rsp-344],	13
lea	rax,	[rsp-336]
mov	[rsp-360],	rax
lea	rbx,	[rsp-336]
lea	rax,	[rel+f12]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-360]
sub	rsp,	360
call	f10
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
call	f29
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
call	f18
add	rsp,	304
mov	rbx,	[rsp]
cmp	rax,	0
je	b9
mov	qword	[rsp-328],	s4
mov	qword	[rsp-320],	9
lea	rax,	[rsp-312]
mov	[rsp-336],	rax
lea	rbx,	[rsp-312]
lea	rax,	[rel+f12]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-336]
sub	rsp,	336
call	f10
add	rsp,	336
mov	rbx,	[rsp]
jmp	b10
b9:
mov	qword	[rsp-328],	s5
mov	qword	[rsp-320],	9
lea	rax,	[rsp-312]
mov	[rsp-336],	rax
lea	rbx,	[rsp-312]
lea	rax,	[rel+f12]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-336]
sub	rsp,	336
call	f10
add	rsp,	336
mov	rbx,	[rsp]
b10:
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
call	f6
add	rsp,	64
mov	rbx,	[rsp]
pop	rbx
ret
f12:
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
b15:
mov	rax,	[rbx+24]
cmp	rax,	[rbx+8]
setl	al
movzx	rax,	al
cmp	rax,	0
je	b16
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
jmp	b15
b16:
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
mov	rcx,	[rsp+8]
mov	rax,	[rcx+16]
mov	rdx,	[rcx+24]
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
f26:
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
f27:
push	rbx
mov	rcx,	[rbx+0]
lea	rax,	[rcx+0]
mov	[rsp-8],	rax
mov	qword	[rsp-16],	46
lea	rbx,	[rsp-64]
mov	qword	[rbx+0],	0
mov	qword	[rbx+16],	1
mov	rbx,	[rsp]
mov	qword	[rsp-56],	9
lea	rax,	[rel+f28]
mov	[rsp-32],	rax
mov	[rsp-24],	rsp
lea	rbx,	[rsp-64]
sub	rsp,	64
call	f21
add	rsp,	64
mov	rbx,	[rsp]
pop	rbx
ret
f28:
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
f29:
push	rbx
mov	rcx,	[rbx+0]
lea	rax,	[rcx+0]
mov	[rsp-8],	rax
lea	rbx,	[rsp-56]
mov	qword	[rbx+0],	0
mov	qword	[rbx+16],	1
mov	rbx,	[rsp]
mov	qword	[rsp-48],	9
lea	rax,	[rel+f30]
mov	[rsp-24],	rax
mov	[rsp-16],	rsp
lea	rbx,	[rsp-56]
sub	rsp,	56
call	f21
add	rsp,	56
mov	rbx,	[rsp]
pop	rbx
ret
f30:
push	rdx
push	rbx
mov	rcx,	[rsp+8]
mov	rcx,	[rcx-8]
mov	al,	[rcx+0]
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
call	f8
add	rsp,	48
mov	rbx,	[rsp]
mov	rcx,	[rsp+8]
mov	rax,	[rcx-8]
add	rax,	1
mov	rcx,	[rsp+8]
mov	[rcx-8],	rax
mov	rax,	[rbx+24]
xor	rdx,	rdx
mov	qword	rcx,	3
div	qword	rcx
mov	rax,	rdx
cmp	rax,	2
sete	al
movzx	rax,	al
cmp	rax,	0
je	b17
lea	rax,	[rsp-32]
mov	[rsp-40],	rax
lea	rbx,	[rsp-32]
lea	rax,	[rel+f12]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-40]
sub	rsp,	40
call	f9
add	rsp,	40
mov	rbx,	[rsp]
b17:
pop	rbx
pop	rdx
ret
f31:
push	rdx
push	rbx
mov	rcx,	[rsp+8]
mov	rax,	[rcx+24]
cmp	rax,	1
sete	al
movzx	rax,	al
mov	[rsp-8],	rax
mov	rcx,	[rsp+8]
mov	rax,	[rcx+32]
cmp	rax,	1
sete	al
movzx	rax,	al
mov	[rsp-16],	rax
mov	rax,	[rsp-8]
and	rax,	[rsp-16]
cmp	rax,	0
je	b18
mov	rcx,	[rsp+8]
mov	qword	[rcx+24],	0
mov	rcx,	[rsp+8]
mov	qword	[rcx+32],	1
mov	rcx,	[rsp+8]
mov	rax,	[rcx+72]
mov	rdx,	[rcx+80]
mov	rcx,	[rsp+8]
mov	[rcx+40],	rax
mov	[rcx+48],	rdx
jmp	b19
b18:
mov	rcx,	[rsp+8]
mov	rax,	[rcx+24]
cmp	rax,	1
sete	al
movzx	rax,	al
cmp	rax,	0
je	b20
mov	rcx,	[rsp+8]
mov	qword	[rcx+24],	1
mov	rcx,	[rsp+8]
mov	qword	[rcx+32],	1
mov	rcx,	[rsp+8]
mov	rax,	[rcx+104]
mov	rdx,	[rcx+112]
mov	rcx,	[rsp+8]
mov	[rcx+40],	rax
mov	[rcx+48],	rdx
jmp	b21
b20:
mov	rcx,	[rsp+8]
mov	rax,	[rcx+32]
cmp	rax,	1
sete	al
movzx	rax,	al
cmp	rax,	0
je	b22
mov	rcx,	[rsp+8]
mov	qword	[rcx+24],	1
mov	rcx,	[rsp+8]
mov	qword	[rcx+32],	1
mov	rcx,	[rsp+8]
mov	rax,	[rcx+88]
mov	rdx,	[rcx+96]
mov	rcx,	[rsp+8]
mov	[rcx+40],	rax
mov	[rcx+48],	rdx
jmp	b23
b22:
mov	rcx,	[rsp+8]
mov	rax,	[rcx+24]
cmp	rax,	0
sete	al
movzx	rax,	al
mov	[rsp-8],	rax
mov	rcx,	[rsp+8]
mov	rax,	[rcx+32]
cmp	rax,	2
sete	al
movzx	rax,	al
mov	[rsp-16],	rax
mov	rax,	[rsp-8]
and	rax,	[rsp-16]
cmp	rax,	0
je	b24
mov	rcx,	[rsp+8]
mov	qword	[rcx+24],	2
mov	rcx,	[rsp+8]
mov	qword	[rcx+32],	2
mov	rcx,	[rsp+8]
mov	rax,	[rcx+152]
mov	rdx,	[rcx+160]
mov	rcx,	[rsp+8]
mov	[rcx+40],	rax
mov	[rcx+48],	rdx
jmp	b25
b24:
mov	rcx,	[rsp+8]
mov	rax,	[rcx+24]
cmp	rax,	2
sete	al
movzx	rax,	al
mov	[rsp-8],	rax
mov	rcx,	[rsp+8]
mov	rax,	[rcx+32]
cmp	rax,	0
sete	al
movzx	rax,	al
mov	[rsp-16],	rax
mov	rax,	[rsp-8]
and	rax,	[rsp-16]
cmp	rax,	0
je	b26
mov	rcx,	[rsp+8]
mov	qword	[rcx+24],	2
mov	rcx,	[rsp+8]
mov	qword	[rcx+32],	2
mov	rcx,	[rsp+8]
mov	rax,	[rcx+136]
mov	rdx,	[rcx+144]
mov	rcx,	[rsp+8]
mov	[rcx+40],	rax
mov	[rcx+48],	rdx
jmp	b27
b26:
mov	rcx,	[rsp+8]
mov	qword	[rcx+24],	2
mov	rcx,	[rsp+8]
mov	qword	[rcx+32],	0
mov	rcx,	[rsp+8]
mov	rax,	[rcx+120]
mov	rdx,	[rcx+128]
mov	rcx,	[rsp+8]
mov	[rcx+40],	rax
mov	[rcx+48],	rdx
b27:
b25:
b23:
b21:
b19:
pop	rbx
pop	rdx
ret
f32:
push	rdx
push	rbx
mov	rcx,	[rsp+8]
mov	rax,	[rcx+24]
cmp	rax,	2
sete	al
movzx	rax,	al
mov	[rsp-8],	rax
mov	rcx,	[rsp+8]
mov	rax,	[rcx+32]
cmp	rax,	2
sete	al
movzx	rax,	al
mov	[rsp-16],	rax
mov	rax,	[rsp-8]
and	rax,	[rsp-16]
cmp	rax,	0
je	b28
mov	rcx,	[rsp+8]
mov	qword	[rcx+24],	2
mov	rcx,	[rsp+8]
mov	qword	[rcx+32],	0
mov	rcx,	[rsp+8]
mov	rax,	[rcx+184]
mov	rdx,	[rcx+192]
mov	rcx,	[rsp+8]
mov	[rcx+40],	rax
mov	[rcx+48],	rdx
jmp	b29
b28:
mov	rcx,	[rsp+8]
mov	qword	[rcx+24],	2
mov	rcx,	[rsp+8]
mov	qword	[rcx+32],	2
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
mov	rcx,	[rsp+8]
lea	rax,	[rcx+16]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f19
add	rsp,	24
mov	rbx,	[rsp]
b29:
pop	rbx
pop	rdx
ret
f33:
push	rdx
push	rbx
mov	rcx,	[rsp+8]
mov	rax,	[rcx+32]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b30
mov	rcx,	[rsp+8]
mov	qword	[rcx+24],	0
mov	rcx,	[rsp+8]
mov	qword	[rcx+32],	2
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
mov	rcx,	[rsp+8]
lea	rax,	[rcx+16]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f19
add	rsp,	24
mov	rbx,	[rsp]
jmp	b31
b30:
mov	rcx,	[rsp+8]
mov	qword	[rcx+24],	1
mov	rcx,	[rsp+8]
mov	qword	[rcx+32],	0
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
mov	rcx,	[rsp+8]
lea	rax,	[rcx+16]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f19
add	rsp,	24
mov	rbx,	[rsp]
b31:
pop	rbx
pop	rdx
ret
f34:
push	rdx
push	rbx
mov	rcx,	[rsp+8]
mov	rax,	[rcx+24]
cmp	rax,	1
sete	al
movzx	rax,	al
mov	[rsp-8],	rax
mov	rcx,	[rsp+8]
mov	rax,	[rcx+32]
cmp	rax,	1
sete	al
movzx	rax,	al
mov	[rsp-16],	rax
mov	rax,	[rsp-8]
and	rax,	[rsp-16]
cmp	rax,	0
je	b32
mov	rcx,	[rsp+8]
mov	qword	[rcx+24],	2
mov	rcx,	[rsp+8]
mov	qword	[rcx+32],	0
mov	rcx,	[rsp+8]
mov	rax,	[rcx+216]
mov	rdx,	[rcx+224]
mov	rcx,	[rsp+8]
mov	[rcx+40],	rax
mov	[rcx+48],	rdx
jmp	b33
b32:
mov	rcx,	[rsp+8]
mov	qword	[rcx+24],	1
mov	rcx,	[rsp+8]
mov	qword	[rcx+32],	1
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
mov	rcx,	[rsp+8]
lea	rax,	[rcx+16]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f19
add	rsp,	24
mov	rbx,	[rsp]
b33:
pop	rbx
pop	rdx
ret
f35:
push	rdx
push	rbx
mov	rcx,	[rsp+8]
mov	rax,	[rcx+32]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b34
mov	rcx,	[rsp+8]
mov	qword	[rcx+24],	2
mov	rcx,	[rsp+8]
mov	qword	[rcx+32],	1
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
mov	rcx,	[rsp+8]
lea	rax,	[rcx+16]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f19
add	rsp,	24
mov	rbx,	[rsp]
jmp	b35
b34:
mov	rcx,	[rsp+8]
mov	qword	[rcx+24],	1
mov	rcx,	[rsp+8]
mov	qword	[rcx+32],	0
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
mov	rcx,	[rsp+8]
lea	rax,	[rcx+16]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f19
add	rsp,	24
mov	rbx,	[rsp]
b35:
pop	rbx
pop	rdx
ret
f36:
push	rdx
push	rbx
mov	rcx,	[rsp+8]
mov	rax,	[rcx+24]
cmp	rax,	2
sete	al
movzx	rax,	al
mov	[rsp-8],	rax
mov	rcx,	[rsp+8]
mov	rax,	[rcx+32]
cmp	rax,	2
sete	al
movzx	rax,	al
mov	[rsp-16],	rax
mov	rax,	[rsp-8]
and	rax,	[rsp-16]
cmp	rax,	0
je	b36
mov	rcx,	[rsp+8]
mov	qword	[rcx+24],	0
mov	rcx,	[rsp+8]
mov	qword	[rcx+32],	2
mov	rcx,	[rsp+8]
mov	rax,	[rcx+168]
mov	rdx,	[rcx+176]
mov	rcx,	[rsp+8]
mov	[rcx+40],	rax
mov	[rcx+48],	rdx
jmp	b37
b36:
mov	rcx,	[rsp+8]
mov	qword	[rcx+24],	2
mov	rcx,	[rsp+8]
mov	qword	[rcx+32],	2
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
mov	rcx,	[rsp+8]
lea	rax,	[rcx+16]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f19
add	rsp,	24
mov	rbx,	[rsp]
b37:
pop	rbx
pop	rdx
ret
f37:
push	rdx
push	rbx
mov	rcx,	[rsp+8]
mov	rax,	[rcx+24]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b38
mov	rcx,	[rsp+8]
mov	qword	[rcx+24],	2
mov	rcx,	[rsp+8]
mov	qword	[rcx+32],	0
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
mov	rcx,	[rsp+8]
lea	rax,	[rcx+16]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f19
add	rsp,	24
mov	rbx,	[rsp]
jmp	b39
b38:
mov	rcx,	[rsp+8]
mov	qword	[rcx+24],	0
mov	rcx,	[rsp+8]
mov	qword	[rcx+32],	1
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
mov	rcx,	[rsp+8]
lea	rax,	[rcx+16]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f19
add	rsp,	24
mov	rbx,	[rsp]
b39:
pop	rbx
pop	rdx
ret
f38:
push	rdx
push	rbx
mov	rcx,	[rsp+8]
mov	rax,	[rcx+24]
cmp	rax,	1
sete	al
movzx	rax,	al
mov	[rsp-8],	rax
mov	rcx,	[rsp+8]
mov	rax,	[rcx+32]
cmp	rax,	1
sete	al
movzx	rax,	al
mov	[rsp-16],	rax
mov	rax,	[rsp-8]
and	rax,	[rsp-16]
cmp	rax,	0
je	b40
mov	rcx,	[rsp+8]
mov	qword	[rcx+24],	0
mov	rcx,	[rsp+8]
mov	qword	[rcx+32],	2
mov	rcx,	[rsp+8]
mov	rax,	[rcx+200]
mov	rdx,	[rcx+208]
mov	rcx,	[rsp+8]
mov	[rcx+40],	rax
mov	[rcx+48],	rdx
jmp	b41
b40:
mov	rcx,	[rsp+8]
mov	qword	[rcx+24],	1
mov	rcx,	[rsp+8]
mov	qword	[rcx+32],	1
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
mov	rcx,	[rsp+8]
lea	rax,	[rcx+16]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f19
add	rsp,	24
mov	rbx,	[rsp]
b41:
pop	rbx
pop	rdx
ret
f39:
push	rdx
push	rbx
mov	rcx,	[rsp+8]
mov	rax,	[rcx+24]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b42
mov	rcx,	[rsp+8]
mov	qword	[rcx+24],	1
mov	rcx,	[rsp+8]
mov	qword	[rcx+32],	2
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
mov	rcx,	[rsp+8]
lea	rax,	[rcx+16]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f19
add	rsp,	24
mov	rbx,	[rsp]
jmp	b43
b42:
mov	rcx,	[rsp+8]
mov	qword	[rcx+24],	0
mov	rcx,	[rsp+8]
mov	qword	[rcx+32],	1
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
mov	rcx,	[rsp+8]
lea	rax,	[rcx+16]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f19
add	rsp,	24
mov	rbx,	[rsp]
b43:
pop	rbx
pop	rdx
ret
f40:
push	rdx
push	rbx
mov	rcx,	[rsp+8]
mov	rax,	[rcx+32]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b44
mov	rcx,	[rsp+8]
mov	qword	[rcx+24],	0
mov	rcx,	[rsp+8]
mov	qword	[rcx+32],	2
mov	rcx,	[rsp+8]
mov	rax,	[rcx+232]
mov	rdx,	[rcx+240]
mov	rcx,	[rsp+8]
mov	[rcx+40],	rax
mov	[rcx+48],	rdx
jmp	b45
b44:
mov	rcx,	[rsp+8]
mov	qword	[rcx+24],	1
mov	rcx,	[rsp+8]
mov	qword	[rcx+32],	0
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
mov	rcx,	[rsp+8]
lea	rax,	[rcx+16]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f19
add	rsp,	24
mov	rbx,	[rsp]
b45:
pop	rbx
pop	rdx
ret
f41:
push	rdx
push	rbx
mov	rcx,	[rsp+8]
mov	rax,	[rcx+24]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b46
mov	rcx,	[rsp+8]
mov	qword	[rcx+24],	1
mov	rcx,	[rsp+8]
mov	qword	[rcx+32],	1
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
mov	rcx,	[rsp+8]
lea	rax,	[rcx+16]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f19
add	rsp,	24
mov	rbx,	[rsp]
jmp	b47
b46:
mov	rcx,	[rsp+8]
mov	qword	[rcx+24],	0
mov	rcx,	[rsp+8]
mov	qword	[rcx+32],	1
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
mov	rcx,	[rsp+8]
lea	rax,	[rcx+16]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f19
add	rsp,	24
mov	rbx,	[rsp]
b47:
pop	rbx
pop	rdx
ret
f42:
push	rdx
push	rbx
mov	rcx,	[rsp+8]
mov	rax,	[rcx+24]
cmp	rax,	0
sete	al
movzx	rax,	al
mov	[rsp-8],	rax
mov	rcx,	[rsp+8]
mov	rax,	[rcx+32]
cmp	rax,	2
sete	al
movzx	rax,	al
mov	[rsp-16],	rax
mov	rax,	[rsp-8]
and	rax,	[rsp-16]
cmp	rax,	0
je	b48
mov	rcx,	[rsp+8]
mov	qword	[rcx+24],	2
mov	rcx,	[rsp+8]
mov	qword	[rcx+32],	0
mov	rcx,	[rsp+8]
mov	rax,	[rcx+248]
mov	rdx,	[rcx+256]
mov	rcx,	[rsp+8]
mov	[rcx+40],	rax
mov	[rcx+48],	rdx
jmp	b49
b48:
mov	rcx,	[rsp+8]
mov	qword	[rcx+24],	0
mov	rcx,	[rsp+8]
mov	qword	[rcx+32],	2
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
mov	rcx,	[rsp+8]
lea	rax,	[rcx+16]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f19
add	rsp,	24
mov	rbx,	[rsp]
b49:
pop	rbx
pop	rdx
ret
f43:
push	rdx
push	rbx
mov	rcx,	[rsp+8]
mov	rax,	[rcx+32]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b50
mov	rcx,	[rsp+8]
mov	qword	[rcx+24],	1
mov	rcx,	[rsp+8]
mov	qword	[rcx+32],	2
mov	rcx,	[rsp+8]
mov	rax,	[rcx+264]
mov	rdx,	[rcx+272]
mov	rcx,	[rsp+8]
mov	[rcx+40],	rax
mov	[rcx+48],	rdx
jmp	b51
b50:
mov	rcx,	[rsp+8]
mov	qword	[rcx+24],	1
mov	rcx,	[rsp+8]
mov	qword	[rcx+32],	0
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
mov	rcx,	[rsp+8]
lea	rax,	[rcx+16]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	2
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f19
add	rsp,	24
mov	rbx,	[rsp]
b51:
pop	rbx
pop	rdx
ret
f44:
push	rdx
push	rbx
mov	rcx,	[rsp+8]
mov	rax,	[rcx+32]
cmp	rax,	1
sete	al
movzx	rax,	al
cmp	rax,	0
je	b52
mov	rcx,	[rsp+8]
mov	qword	[rcx+24],	2
mov	rcx,	[rsp+8]
mov	qword	[rcx+32],	2
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
mov	rcx,	[rsp+8]
lea	rax,	[rcx+16]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	1
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f19
add	rsp,	24
mov	rbx,	[rsp]
jmp	b53
b52:
mov	rcx,	[rsp+8]
mov	qword	[rcx+24],	2
mov	rcx,	[rsp+8]
mov	qword	[rcx+32],	1
lea	rax,	[rsp-16]
mov	[rsp-24],	rax
mov	rcx,	[rsp+8]
lea	rax,	[rcx+16]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
mov	qword	[rbx+8],	1
mov	rbx,	[rsp]
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f19
add	rsp,	24
mov	rbx,	[rsp]
b53:
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
s1	db	'Enter move (Row,Column):'
s2	db	'Illegal move.'
s3	db	'Illegal move.'
s4	db	'Game over'
s5	db	'Cats game'
