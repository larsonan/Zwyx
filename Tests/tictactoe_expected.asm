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
lea	rbx,	[rsp-280]
lea	rax,	[rel+f51]
mov	[rbx+56],	rax
mov	[rbx+64],	rbx
lea	rax,	[rel+f52]
mov	[rbx+88],	rax
mov	[rbx+96],	rbx
lea	rax,	[rel+f53]
mov	[rbx+184],	rax
mov	[rbx+192],	rbx
lea	rax,	[rel+f54]
mov	[rbx+152],	rax
mov	[rbx+160],	rbx
lea	rax,	[rel+f55]
mov	[rbx+216],	rax
mov	[rbx+224],	rbx
lea	rax,	[rel+f56]
mov	[rbx+104],	rax
mov	[rbx+112],	rbx
lea	rax,	[rel+f57]
mov	[rbx+168],	rax
mov	[rbx+176],	rbx
lea	rax,	[rel+f58]
mov	[rbx+136],	rax
mov	[rbx+144],	rbx
lea	rax,	[rel+f59]
mov	[rbx+200],	rax
mov	[rbx+208],	rbx
lea	rax,	[rel+f60]
mov	[rbx+120],	rax
mov	[rbx+128],	rbx
lea	rax,	[rel+f61]
mov	[rbx+232],	rax
mov	[rbx+240],	rbx
lea	rax,	[rel+f62]
mov	[rbx+72],	rax
mov	[rbx+80],	rbx
lea	rax,	[rel+f63]
mov	[rbx+248],	rax
mov	[rbx+256],	rbx
lea	rax,	[rel+f64]
mov	[rbx+264],	rax
mov	[rbx+272],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-280]
mov	[rsp-288],	rax
lea	rbx,	[rsp-288]
sub	rsp,	288
call	f47
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
call	f46
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
call	f22
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
call	f21
add	rsp,	304
mov	rbx,	[rsp]
cmp	rax,	0
je	b1
lea	rax,	[rsp-280]
mov	[rsp-288],	rax
lea	rbx,	[rsp-288]
sub	rsp,	288
call	f49
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
call	f23
add	rsp,	288
mov	rbx,	[rsp]
mov	[rsp-288],	rax
lea	rbx,	[rsp-296]
sub	rsp,	296
call	f23
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
call	f23
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
call	f23
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
call	f45
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
call	f46
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
call	f46
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
call	f49
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
call	f21
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
f41:
push	rdx
push	rbx
mov	qword	[rsp-16],	0
mov	[rsp-8],	rdx
mov	qword	[rsp-24],	0
b11:
mov	rax,	[rsp-16]
mov	rdx,	[rsp-8]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b12
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
je	b13
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
jmp	b14
b13:
mov	rcx,	[rsp-32]
mov	rax,	[rcx+32]
mov	rdx,	[rcx+40]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b15
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
b16:
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
je	b17
mov	rax,	[rsp-40]
xor	rdx,	rdx
mov	qword	rcx,	2
mul	qword	rcx
mov	[rsp-40],	rax
jmp	b16
b17:
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
b15:
b14:
mov	rax,	[rsp-24]
add	rax,	1
mov	[rsp-24],	rax
jmp	b11
b12:
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
f51:
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
je	b18
mov	qword	[rbx+24],	0
mov	qword	[rbx+32],	1
mov	rax,	[rbx+72]
mov	rdx,	[rbx+80]
mov	[rbx+40],	rax
mov	[rbx+48],	rdx
jmp	b19
b18:
mov	rax,	[rbx+24]
cmp	rax,	1
sete	al
movzx	rax,	al
cmp	rax,	0
je	b20
mov	qword	[rbx+24],	1
mov	qword	[rbx+32],	1
mov	rax,	[rbx+104]
mov	rdx,	[rbx+112]
mov	[rbx+40],	rax
mov	[rbx+48],	rdx
jmp	b21
b20:
mov	rax,	[rbx+32]
cmp	rax,	1
sete	al
movzx	rax,	al
cmp	rax,	0
je	b22
mov	qword	[rbx+24],	1
mov	qword	[rbx+32],	1
mov	rax,	[rbx+88]
mov	rdx,	[rbx+96]
mov	[rbx+40],	rax
mov	[rbx+48],	rdx
jmp	b23
b22:
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
je	b24
mov	qword	[rbx+24],	2
mov	qword	[rbx+32],	2
mov	rax,	[rbx+152]
mov	rdx,	[rbx+160]
mov	[rbx+40],	rax
mov	[rbx+48],	rdx
jmp	b25
b24:
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
je	b26
mov	qword	[rbx+24],	2
mov	qword	[rbx+32],	2
mov	rax,	[rbx+136]
mov	rdx,	[rbx+144]
mov	[rbx+40],	rax
mov	[rbx+48],	rdx
jmp	b27
b26:
mov	qword	[rbx+24],	2
mov	qword	[rbx+32],	0
mov	rax,	[rbx+120]
mov	rdx,	[rbx+128]
mov	[rbx+40],	rax
mov	[rbx+48],	rdx
b27:
b25:
b23:
b21:
b19:
pop	rbx
pop	rdx
ret
f52:
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
je	b28
mov	qword	[rbx+24],	2
mov	qword	[rbx+32],	0
mov	rax,	[rbx+184]
mov	rdx,	[rbx+192]
mov	[rbx+40],	rax
mov	[rbx+48],	rdx
jmp	b29
b28:
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
call	f22
add	rsp,	24
mov	rbx,	[rsp]
b29:
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
je	b30
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
call	f22
add	rsp,	24
mov	rbx,	[rsp]
jmp	b31
b30:
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
call	f22
add	rsp,	24
mov	rbx,	[rsp]
b31:
pop	rbx
pop	rdx
ret
f54:
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
je	b32
mov	qword	[rbx+24],	2
mov	qword	[rbx+32],	0
mov	rax,	[rbx+216]
mov	rdx,	[rbx+224]
mov	[rbx+40],	rax
mov	[rbx+48],	rdx
jmp	b33
b32:
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
call	f22
add	rsp,	24
mov	rbx,	[rsp]
b33:
pop	rbx
pop	rdx
ret
f55:
push	rdx
push	rbx
mov	rax,	[rbx+32]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b34
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
call	f22
add	rsp,	24
mov	rbx,	[rsp]
jmp	b35
b34:
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
call	f22
add	rsp,	24
mov	rbx,	[rsp]
b35:
pop	rbx
pop	rdx
ret
f56:
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
je	b36
mov	qword	[rbx+24],	0
mov	qword	[rbx+32],	2
mov	rax,	[rbx+168]
mov	rdx,	[rbx+176]
mov	[rbx+40],	rax
mov	[rbx+48],	rdx
jmp	b37
b36:
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
call	f22
add	rsp,	24
mov	rbx,	[rsp]
b37:
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
je	b38
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
call	f22
add	rsp,	24
mov	rbx,	[rsp]
jmp	b39
b38:
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
call	f22
add	rsp,	24
mov	rbx,	[rsp]
b39:
pop	rbx
pop	rdx
ret
f58:
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
je	b40
mov	qword	[rbx+24],	0
mov	qword	[rbx+32],	2
mov	rax,	[rbx+200]
mov	rdx,	[rbx+208]
mov	[rbx+40],	rax
mov	[rbx+48],	rdx
jmp	b41
b40:
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
call	f22
add	rsp,	24
mov	rbx,	[rsp]
b41:
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
je	b42
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
call	f22
add	rsp,	24
mov	rbx,	[rsp]
jmp	b43
b42:
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
call	f22
add	rsp,	24
mov	rbx,	[rsp]
b43:
pop	rbx
pop	rdx
ret
f60:
push	rdx
push	rbx
mov	rax,	[rbx+32]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b44
mov	qword	[rbx+24],	0
mov	qword	[rbx+32],	2
mov	rax,	[rbx+232]
mov	rdx,	[rbx+240]
mov	[rbx+40],	rax
mov	[rbx+48],	rdx
jmp	b45
b44:
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
call	f22
add	rsp,	24
mov	rbx,	[rsp]
b45:
pop	rbx
pop	rdx
ret
f61:
push	rdx
push	rbx
mov	rax,	[rbx+24]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b46
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
call	f22
add	rsp,	24
mov	rbx,	[rsp]
jmp	b47
b46:
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
call	f22
add	rsp,	24
mov	rbx,	[rsp]
b47:
pop	rbx
pop	rdx
ret
f62:
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
je	b48
mov	qword	[rbx+24],	2
mov	qword	[rbx+32],	0
mov	rax,	[rbx+248]
mov	rdx,	[rbx+256]
mov	[rbx+40],	rax
mov	[rbx+48],	rdx
jmp	b49
b48:
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
call	f22
add	rsp,	24
mov	rbx,	[rsp]
b49:
pop	rbx
pop	rdx
ret
f63:
push	rdx
push	rbx
mov	rax,	[rbx+32]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b50
mov	qword	[rbx+24],	1
mov	qword	[rbx+32],	2
mov	rax,	[rbx+264]
mov	rdx,	[rbx+272]
mov	[rbx+40],	rax
mov	[rbx+48],	rdx
jmp	b51
b50:
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
call	f22
add	rsp,	24
mov	rbx,	[rsp]
b51:
pop	rbx
pop	rdx
ret
f64:
push	rdx
push	rbx
mov	rax,	[rbx+32]
cmp	rax,	1
sete	al
movzx	rax,	al
cmp	rax,	0
je	b52
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
call	f22
add	rsp,	24
mov	rbx,	[rsp]
jmp	b53
b52:
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
call	f22
add	rsp,	24
mov	rbx,	[rsp]
b53:
pop	rbx
pop	rdx
ret
f47:
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
lea	rax,	[rel+f48]
mov	[rsp-32],	rax
mov	[rsp-24],	rsp
lea	rbx,	[rsp-56]
sub	rsp,	56
call	f24
add	rsp,	56
mov	rbx,	[rsp]
pop	rbx
ret
f46:
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
f22:
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
mov	rcx,	[rbx+0]
mov	rcx,	[rcx+0]
mov	rax,	[rcx+0]
mov	rcx,	[rbx+0]
cmp	rax,	[rcx+8]
sete	al
movzx	rax,	al
pop	rbx
ret
f49:
push	rbx
mov	rcx,	[rbx+0]
lea	rax,	[rcx+0]
mov	[rsp-8],	rax
lea	rbx,	[rsp-48]
mov	qword	[rbx+0],	0
mov	qword	[rbx+16],	1
mov	rbx,	[rsp]
mov	qword	[rsp-40],	9
lea	rax,	[rel+f50]
mov	[rsp-24],	rax
mov	[rsp-16],	rsp
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f24
add	rsp,	48
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
f45:
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
f24:
push	rbx
b54:
mov	rax,	[rbx+0]
cmp	rax,	[rbx+8]
setl	al
movzx	rax,	al
cmp	rax,	0
je	b55
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
jmp	b54
b55:
pop	rbx
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
f30:
push	rdx
push	rbx
mov	rax,	[rbx+8]
xor	rdx,	rdx
mov	qword	rcx,	8
div	qword	rcx
mov	rax,	rdx
cmp	rax,	0
je	b56
mov	rax,	[rbx+8]
xor	rdx,	rdx
mov	qword	rcx,	8
div	qword	rcx
xor	rdx,	rdx
mov	qword	rcx,	8
mul	qword	rcx
add	rax,	8
mov	[rbx+8],	rax
b56:
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
b57:
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
je	b58
mov	rcx,	[rsp-40]
mov	rax,	[rcx+0]
and	rax,	0x8000
cmp	rax,	0
je	b59
mov	qword	[rsp-8],	0
mov	rax,	[rsp-40]
mov	[rsp-32],	rax
jmp	b60
b59:
mov	rax,	[rsp-8]
cmp	rax,	0
setg	al
movzx	rax,	al
cmp	rax,	0
je	b61
mov	rax,	[rsp-8]
add	rax,	8
mov	rcx,	[rsp-40]
add	rax,	[rcx+0]
mov	[rsp-8],	rax
mov	rax,	[rsp-8]
mov	rcx,	[rsp-32]
mov	[rcx+0],	rax
jmp	b62
b61:
mov	rax,	[rsp-40]
mov	[rsp-32],	rax
mov	rcx,	[rsp-32]
mov	rax,	[rcx+0]
mov	[rsp-8],	rax
b62:
b60:
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
jmp	b57
b58:
mov	rcx,	[rsp-32]
mov	rax,	[rcx+0]
cmp	rax,	0xFFFF
sete	al
movzx	rax,	al
cmp	rax,	0
je	b63
mov	rax,	0
jmp	b64
b63:
mov	rax,	[rsp-8]
cmp	rax,	[rbx+8]
setg	al
movzx	rax,	al
cmp	rax,	0
je	b65
mov	rax,	[rsp-32]
add	rax,	8
add	rax,	[rbx+8]
mov	[rsp-40],	rax
mov	rax,	[rsp-8]
sub	rax,	[rbx+8]
sub	rax,	8
mov	rcx,	[rsp-40]
mov	[rcx+0],	rax
b65:
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
je	b66
mov	rax,	[rsp-40]
add	rax,	8
mov	[rsp-24],	rax
mov	[rsp-16],	rdx
mov	rax,	[rsp-24]
mov	rdx,	[rsp-16]
mov	rcx,	[rsp+8]
mov	[rcx+48],	rax
b66:
mov	rax,	[rsp-32]
add	rax,	8
b64:
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
je	b67
mov	rax,	[rbx+8]
mov	rdx,	[rbx+16]
mov	rcx,	[rsp+8]
mov	[rcx+48],	rax
b67:
pop	rbx
pop	rdx
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
f48:
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
f50:
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
je	b68
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
b68:
pop	rbx
pop	rdx
ret
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
s1	db	'Enter move (Row,Column):'
s2	db	'Illegal move.'
s3	db	'Illegal move.'
s4	db	'Game over'
s5	db	'Cats game'
