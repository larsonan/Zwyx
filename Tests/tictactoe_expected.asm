global	_start
_start:
lea	rbx,	[rsp-280]
lea	rax,	[rel+f1]
mov	[rbx+56],	rax
mov	[rbx+64],	rbx
lea	rax,	[rel+f2]
mov	[rbx+88],	rax
mov	[rbx+96],	rbx
lea	rax,	[rel+f3]
mov	[rbx+184],	rax
mov	[rbx+192],	rbx
lea	rax,	[rel+f4]
mov	[rbx+152],	rax
mov	[rbx+160],	rbx
lea	rax,	[rel+f5]
mov	[rbx+216],	rax
mov	[rbx+224],	rbx
lea	rax,	[rel+f6]
mov	[rbx+104],	rax
mov	[rbx+112],	rbx
lea	rax,	[rel+f7]
mov	[rbx+168],	rax
mov	[rbx+176],	rbx
lea	rax,	[rel+f8]
mov	[rbx+136],	rax
mov	[rbx+144],	rbx
lea	rax,	[rel+f9]
mov	[rbx+200],	rax
mov	[rbx+208],	rbx
lea	rax,	[rel+f10]
mov	[rbx+120],	rax
mov	[rbx+128],	rbx
lea	rax,	[rel+f11]
mov	[rbx+232],	rax
mov	[rbx+240],	rbx
lea	rax,	[rel+f12]
mov	[rbx+72],	rax
mov	[rbx+80],	rbx
lea	rax,	[rel+f13]
mov	[rbx+248],	rax
mov	[rbx+256],	rbx
lea	rax,	[rel+f14]
mov	[rbx+264],	rax
mov	[rbx+272],	rbx
mov	rbx,	[rsp]
lea	rax,	[rsp-280]
mov	[rsp-288],	rax
lea	rbx,	[rsp-288]
sub	rsp,	288
call	f15
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
call	f16
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
call	f17
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
call	f19
add	rsp,	288
mov	rbx,	[rsp]
mov	qword	[rsp-296],	s1
mov	qword	[rsp-288],	24
lea	rbx,	[rsp-312]
lea	rax,	[rel+f20]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-312]
sub	rsp,	312
call	f21
add	rsp,	312
mov	rbx,	[rsp]
lea	rbx,	[rsp-288]
sub	rsp,	288
call	f22
add	rsp,	288
mov	rbx,	[rsp]
mov	[rsp-288],	rax
lea	rbx,	[rsp-296]
sub	rsp,	296
call	f22
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
call	f22
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
call	f22
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
lea	rax,	[rel+f20]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-360]
sub	rsp,	360
call	f23
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
call	f24
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
call	f16
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
call	f16
add	rsp,	352
mov	rbx,	[rsp]
jmp	b8
b7:
mov	qword	[rsp-352],	s3
mov	qword	[rsp-344],	13
lea	rax,	[rsp-336]
mov	[rsp-360],	rax
lea	rbx,	[rsp-336]
lea	rax,	[rel+f20]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-360]
sub	rsp,	360
call	f23
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
call	f19
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
lea	rax,	[rel+f20]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-336]
sub	rsp,	336
call	f23
add	rsp,	336
mov	rbx,	[rsp]
jmp	b10
b9:
mov	qword	[rsp-328],	s5
mov	qword	[rsp-320],	9
lea	rax,	[rsp-312]
mov	[rsp-336],	rax
lea	rbx,	[rsp-312]
lea	rax,	[rel+f20]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-336]
sub	rsp,	336
call	f23
add	rsp,	336
mov	rbx,	[rsp]
b10:
mov	rax,	60
mov	rdi,	0
syscall
f1:
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
je	b11
mov	qword	[rbx+24],	0
mov	qword	[rbx+32],	1
mov	rax,	[rbx+72]
mov	rdx,	[rbx+80]
mov	[rbx+40],	rax
mov	[rbx+48],	rdx
jmp	b12
b11:
mov	rax,	[rbx+24]
cmp	rax,	1
sete	al
movzx	rax,	al
cmp	rax,	0
je	b13
mov	qword	[rbx+24],	1
mov	qword	[rbx+32],	1
mov	rax,	[rbx+104]
mov	rdx,	[rbx+112]
mov	[rbx+40],	rax
mov	[rbx+48],	rdx
jmp	b14
b13:
mov	rax,	[rbx+32]
cmp	rax,	1
sete	al
movzx	rax,	al
cmp	rax,	0
je	b15
mov	qword	[rbx+24],	1
mov	qword	[rbx+32],	1
mov	rax,	[rbx+88]
mov	rdx,	[rbx+96]
mov	[rbx+40],	rax
mov	[rbx+48],	rdx
jmp	b16
b15:
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
je	b17
mov	qword	[rbx+24],	2
mov	qword	[rbx+32],	2
mov	rax,	[rbx+152]
mov	rdx,	[rbx+160]
mov	[rbx+40],	rax
mov	[rbx+48],	rdx
jmp	b18
b17:
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
je	b19
mov	qword	[rbx+24],	2
mov	qword	[rbx+32],	2
mov	rax,	[rbx+136]
mov	rdx,	[rbx+144]
mov	[rbx+40],	rax
mov	[rbx+48],	rdx
jmp	b20
b19:
mov	qword	[rbx+24],	2
mov	qword	[rbx+32],	0
mov	rax,	[rbx+120]
mov	rdx,	[rbx+128]
mov	[rbx+40],	rax
mov	[rbx+48],	rdx
b20:
b18:
b16:
b14:
b12:
pop	rbx
pop	rdx
ret
f2:
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
je	b21
mov	qword	[rbx+24],	2
mov	qword	[rbx+32],	0
mov	rax,	[rbx+184]
mov	rdx,	[rbx+192]
mov	[rbx+40],	rax
mov	[rbx+48],	rdx
jmp	b22
b21:
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
call	f17
add	rsp,	24
mov	rbx,	[rsp]
b22:
pop	rbx
pop	rdx
ret
f3:
push	rdx
push	rbx
mov	rax,	[rbx+32]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b23
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
call	f17
add	rsp,	24
mov	rbx,	[rsp]
jmp	b24
b23:
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
call	f17
add	rsp,	24
mov	rbx,	[rsp]
b24:
pop	rbx
pop	rdx
ret
f4:
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
je	b25
mov	qword	[rbx+24],	2
mov	qword	[rbx+32],	0
mov	rax,	[rbx+216]
mov	rdx,	[rbx+224]
mov	[rbx+40],	rax
mov	[rbx+48],	rdx
jmp	b26
b25:
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
call	f17
add	rsp,	24
mov	rbx,	[rsp]
b26:
pop	rbx
pop	rdx
ret
f5:
push	rdx
push	rbx
mov	rax,	[rbx+32]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b27
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
call	f17
add	rsp,	24
mov	rbx,	[rsp]
jmp	b28
b27:
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
call	f17
add	rsp,	24
mov	rbx,	[rsp]
b28:
pop	rbx
pop	rdx
ret
f6:
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
je	b29
mov	qword	[rbx+24],	0
mov	qword	[rbx+32],	2
mov	rax,	[rbx+168]
mov	rdx,	[rbx+176]
mov	[rbx+40],	rax
mov	[rbx+48],	rdx
jmp	b30
b29:
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
call	f17
add	rsp,	24
mov	rbx,	[rsp]
b30:
pop	rbx
pop	rdx
ret
f7:
push	rdx
push	rbx
mov	rax,	[rbx+24]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b31
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
call	f17
add	rsp,	24
mov	rbx,	[rsp]
jmp	b32
b31:
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
call	f17
add	rsp,	24
mov	rbx,	[rsp]
b32:
pop	rbx
pop	rdx
ret
f8:
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
je	b33
mov	qword	[rbx+24],	0
mov	qword	[rbx+32],	2
mov	rax,	[rbx+200]
mov	rdx,	[rbx+208]
mov	[rbx+40],	rax
mov	[rbx+48],	rdx
jmp	b34
b33:
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
call	f17
add	rsp,	24
mov	rbx,	[rsp]
b34:
pop	rbx
pop	rdx
ret
f9:
push	rdx
push	rbx
mov	rax,	[rbx+24]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b35
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
call	f17
add	rsp,	24
mov	rbx,	[rsp]
jmp	b36
b35:
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
call	f17
add	rsp,	24
mov	rbx,	[rsp]
b36:
pop	rbx
pop	rdx
ret
f10:
push	rdx
push	rbx
mov	rax,	[rbx+32]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b37
mov	qword	[rbx+24],	0
mov	qword	[rbx+32],	2
mov	rax,	[rbx+232]
mov	rdx,	[rbx+240]
mov	[rbx+40],	rax
mov	[rbx+48],	rdx
jmp	b38
b37:
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
call	f17
add	rsp,	24
mov	rbx,	[rsp]
b38:
pop	rbx
pop	rdx
ret
f11:
push	rdx
push	rbx
mov	rax,	[rbx+24]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b39
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
call	f17
add	rsp,	24
mov	rbx,	[rsp]
jmp	b40
b39:
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
call	f17
add	rsp,	24
mov	rbx,	[rsp]
b40:
pop	rbx
pop	rdx
ret
f12:
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
je	b41
mov	qword	[rbx+24],	2
mov	qword	[rbx+32],	0
mov	rax,	[rbx+248]
mov	rdx,	[rbx+256]
mov	[rbx+40],	rax
mov	[rbx+48],	rdx
jmp	b42
b41:
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
call	f17
add	rsp,	24
mov	rbx,	[rsp]
b42:
pop	rbx
pop	rdx
ret
f13:
push	rdx
push	rbx
mov	rax,	[rbx+32]
cmp	rax,	0
sete	al
movzx	rax,	al
cmp	rax,	0
je	b43
mov	qword	[rbx+24],	1
mov	qword	[rbx+32],	2
mov	rax,	[rbx+264]
mov	rdx,	[rbx+272]
mov	[rbx+40],	rax
mov	[rbx+48],	rdx
jmp	b44
b43:
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
call	f17
add	rsp,	24
mov	rbx,	[rsp]
b44:
pop	rbx
pop	rdx
ret
f14:
push	rdx
push	rbx
mov	rax,	[rbx+32]
cmp	rax,	1
sete	al
movzx	rax,	al
cmp	rax,	0
je	b45
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
call	f17
add	rsp,	24
mov	rbx,	[rsp]
jmp	b46
b45:
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
call	f17
add	rsp,	24
mov	rbx,	[rsp]
b46:
pop	rbx
pop	rdx
ret
f15:
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
lea	rax,	[rel+f25]
mov	[rsp-32],	rax
mov	[rsp-24],	rsp
lea	rbx,	[rsp-56]
sub	rsp,	56
call	f26
add	rsp,	56
mov	rbx,	[rsp]
pop	rbx
ret
f16:
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
f17:
push	rbx
mov	rcx,	[rbx+0]
mov	rax,	[rcx+8]
mov	rcx,	[rbx+0]
mov	rcx,	[rcx+0]
mov	[rcx+0],	rax
pop	rbx
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
lea	rax,	[rcx+0]
mov	[rsp-8],	rax
lea	rbx,	[rsp-48]
mov	qword	[rbx+0],	0
mov	qword	[rbx+16],	1
mov	rbx,	[rsp]
mov	qword	[rsp-40],	9
lea	rax,	[rel+f27]
mov	[rsp-24],	rax
mov	[rsp-16],	rsp
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f26
add	rsp,	48
mov	rbx,	[rsp]
pop	rbx
ret
f20:
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
call	f28
add	rsp,	80
mov	rbx,	[rsp]
pop	rbx
pop	rdx
ret
f21:
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
f22:
push	rbx
lea	rax,	[rsp-64]
mov	[rsp-96],	rax
lea	rax,	[rsp-1]
mov	[rsp-88],	rax
mov	qword	[rsp-80],	1
mov	qword	[rsp-72],	1
lea	rbx,	[rsp-96]
sub	rsp,	96
call	f29
add	rsp,	96
mov	rbx,	[rsp]
mov	qword	[rsp-16],	0
mov	rax,	[rsp-16]
mov	al,	[rsp-1]
pop	rbx
ret
f23:
push	rbx
mov	rax,	[rbx+8]
mov	rdx,	[rbx+16]
mov	[rsp-16],	rax
mov	[rsp-8],	rdx
mov	rax,	[rbx+0]
mov	[rsp-24],	rax
lea	rbx,	[rsp-24]
sub	rsp,	24
call	f30
add	rsp,	24
mov	rbx,	[rsp]
mov	rax,	[rbx+0]
mov	[rsp-8],	rax
lea	rbx,	[rsp-8]
sub	rsp,	8
call	f31
add	rsp,	8
mov	rbx,	[rsp]
pop	rbx
ret
f24:
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
f25:
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
f26:
push	rbx
b47:
mov	rax,	[rbx+0]
cmp	rax,	[rbx+8]
setl	al
movzx	rax,	al
cmp	rax,	0
je	b48
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
jmp	b47
b48:
pop	rbx
ret
f27:
push	rdx
push	rbx
mov	rcx,	[rsp+8]
mov	rcx,	[rcx-8]
mov	al,	[rcx+0]
mov	[rsp-40],	rax
lea	rax,	[rsp-32]
mov	[rsp-48],	rax
lea	rbx,	[rsp-32]
lea	rax,	[rel+f20]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-48]
sub	rsp,	48
call	f32
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
je	b49
lea	rax,	[rsp-32]
mov	[rsp-40],	rax
lea	rbx,	[rsp-32]
lea	rax,	[rel+f20]
mov	[rbx+0],	rax
mov	[rbx+8],	rbx
mov	rbx,	[rsp]
lea	rbx,	[rsp-40]
sub	rsp,	40
call	f31
add	rsp,	40
mov	rbx,	[rsp]
b49:
pop	rbx
pop	rdx
ret
f28:
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
call	f33
add	rsp,	0
mov	rbx,	[rsp]
pop	rbx
ret
f29:
push	rbx
mov	rcx,	[rbx+0]
mov	qword	[rcx+0],	0
mov	rax,	[rbx+24]
mov	rcx,	[rbx+0]
mov	[rcx+8],	rax
mov	rcx,	[rbx+0]
mov	qword	[rcx+16],	2
mov	rax,	[rbx+8]
mov	rdx,	[rbx+16]
mov	rcx,	[rbx+0]
mov	[rcx+24],	rax
mov	rbx,	[rbx+0]
sub	rsp,	0
call	f33
add	rsp,	0
mov	rbx,	[rsp]
pop	rbx
ret
f30:
push	rbx
mov	rax,	[rbx+8]
mov	rdx,	[rbx+16]
mov	rcx,	[rbx+0]
mov	[rcx+16],	rax
mov	[rcx+24],	rdx
mov	rbx,	[rbx+0]
sub	rsp,	0
call	f21
add	rsp,	0
mov	rbx,	[rsp]
pop	rbx
ret
f31:
push	rbx
mov	qword	[rsp-8],	10
mov	rax,	[rbx+0]
mov	[rsp-16],	rax
lea	rbx,	[rsp-16]
sub	rsp,	16
call	f32
add	rsp,	16
mov	rbx,	[rsp]
pop	rbx
ret
f32:
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
call	f21
add	rsp,	8
mov	rbx,	[rsp]
pop	rbx
ret
f33:
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
SECTION .data
s1	db	'Enter move (Row,Column):'
s2	db	'Illegal move.'
s3	db	'Illegal move.'
s4	db	'Game over'
s5	db	'Cats game'
