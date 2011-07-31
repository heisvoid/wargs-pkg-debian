/* vim: set sw=2 ts=2 expandtab: */

#include "asm.h"

.text


/*----------------------------------------------------------------*/
func____begtext:	/* 0x10003 */
/*----------------------------------------------------------------*/
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		mov    $0x2ee00,%eax
		call   w_dos_malloc
		mov    %eax,data_2092c
		push   %ebx
		push   %edx
		mov    $0x140,%ebx
		xor    %edx,%edx
		mov    $0x1,%eax
		mov    %edx,data_20932
		mov    %ebx,data_20936
		call   func_1621e
		pop    %edx
		pop    %ebx
		ret
	jump_1099e:
		pop    %edi
		pop    %esi
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_11142:
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %edx
		push   %esi
		sub    $0x18,%esp
		cwtl
		mov    %eax,%edx
		shl    $0x2,%edx
		sub    %eax,%edx
		mov    data_21864(%edx),%al
		mov    %al,0x10(%esp)
		mov    data_21865(%edx),%al
		mov    %al,0x14(%esp)
		mov    data_21866(%edx),%al
		mov    %al,(%esp)
		mov    data_21fe2,%eax
		sar    $0x10,%eax
		mov    %eax,%ebx
		shl    $0x2,%ebx
		sub    %eax,%ebx
		mov    data_21fde,%ecx
		mov    data_21861(%ebx),%edx
		sar    $0x10,%ecx
		sar    $0x18,%edx
		imul   %ecx,%edx
		mov    $0x64,%esi
		mov    %edx,%eax
		sar    $0x1f,%edx
		idiv   %esi
		mov    data_21862(%ebx),%edx
		sar    $0x18,%edx
		imul   %ecx,%edx
		mov    %al,0x8(%esp)
		mov    %edx,%eax
		sar    $0x1f,%edx
		idiv   %esi
		mov    data_21863(%ebx),%edx
		sar    $0x18,%edx
		imul   %ecx,%edx
		mov    %al,0x4(%esp)
		mov    %edx,%eax
		sar    $0x1f,%edx
		idiv   %esi
		mov    $0x64,%ebx
		sub    data_21fe0,%bx
		xor    %edx,%edx
		movswl %bx,%ebx
		mov    0x10(%esp),%dl
		imul   %ebx,%edx
		mov    %al,%cl
		mov    %edx,%eax
		sar    $0x1f,%edx
		idiv   %esi
		xor    %edx,%edx
		mov    0x8(%esp),%dl
		add    %edx,%eax
		xor    %edx,%edx
		mov    0x14(%esp),%dl
		imul   %ebx,%edx
		add    $0x9,%eax
		mov    %al,0x10(%esp)
		mov    %edx,%eax
		sar    $0x1f,%edx
		idiv   %esi
		xor    %edx,%edx
		mov    0x4(%esp),%dl
		add    %edx,%eax
		xor    %edx,%edx
		mov    (%esp),%dl
		imul   %ebx,%edx
		add    $0x9,%eax
		mov    %al,0x14(%esp)
		mov    %edx,%eax
		sar    $0x1f,%edx
		idiv   %esi
		xor    %edx,%edx
		mov    %cl,%dl
		add    %edx,%eax
		mov    %esi,%ebx
		add    $0x9,%eax
		xor    %esi,%ebx
		mov    %al,(%esp)
		mov    data_21fe4,%al
		mov    $0x7fff,%ecx
		mov    %al,0xc(%esp)
	jump_11248:
		movswl %bx,%edx
		lea    (%edx,%edx,2),%edx
		movsbw data_21864(%edx),%ax
		xor    %edx,%edx
		mov    0x10(%esp),%dl
		sub    %eax,%edx
		mov    %edx,%eax
		test   %dx,%dx
		jge    jump_11267
		neg    %eax
	jump_11267:
		movswl %bx,%edx
		lea    (%edx,%edx,2),%edx
		movzbw 0x14(%esp),%si
		movsbw data_21865(%edx),%dx
		sub    %edx,%esi
		mov    %esi,%edx
		test   %si,%si
		jge    jump_11286
		neg    %edx
	jump_11286:
		add    %edx,%eax
		movswl %bx,%edx
		lea    (%edx,%edx,2),%edx
		movsbw data_21866(%edx),%si
		xor    %edx,%edx
		mov    (%esp),%dl
		sub    %esi,%edx
		test   %dx,%dx
		jge    jump_112a4
		neg    %edx
	jump_112a4:
		add    %edx,%eax
		cmp    %cx,%ax
		jge    jump_112b1
		mov    %eax,%ecx
		mov    %bl,0xc(%esp)
	jump_112b1:
		inc    %ebx
		cmp    $0x100,%bx
		jl     jump_11248
		mov    0xc(%esp),%al
		add    $0x18,%esp
		pop    %esi
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_112c5:
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %edx
		push   %esi
		push   %edi
		cwtl
		mov    %eax,%edx
		shl    $0x2,%eax
		sub    %edx,%eax
		mov    data_21864(%eax),%dl
		mov    %dl,data_21ff7
		mov    data_21865(%eax),%dl
		mov    data_21866(%eax),%al
		mov    %al,data_21ff5
		mov    data_21fe2,%eax
		sar    $0x10,%eax
		mov    %eax,%ebx
		shl    $0x2,%ebx
		sub    %eax,%ebx
		mov    data_21fde,%ecx
		mov    %dl,data_21ff6
		mov    data_21861(%ebx),%edx
		sar    $0x10,%ecx
		sar    $0x18,%edx
		imul   %ecx,%edx
		mov    $0x64,%esi
		mov    %edx,%eax
		sar    $0x1f,%edx
		idiv   %esi
		mov    data_21862(%ebx),%edx
		sar    $0x18,%edx
		imul   %ecx,%edx
		mov    %al,data_21ff4
		mov    %edx,%eax
		sar    $0x1f,%edx
		idiv   %esi
		mov    data_21863(%ebx),%edx
		sar    $0x18,%edx
		imul   %ecx,%edx
		mov    %al,data_21ff3
		mov    %edx,%eax
		sar    $0x1f,%edx
		idiv   %esi
		mov    $0x64,%edx
		mov    %al,data_21ff2
		mov    data_21fe0,%ax
		sub    %eax,%edx
		mov    %dx,data_21fed
		xor    %edx,%edx
		mov    data_21feb,%ebx
		mov    data_21ff7,%dl
		sar    $0x10,%ebx
		imul   %ebx,%edx
		mov    %edx,%eax
		sar    $0x1f,%edx
		idiv   %esi
		xor    %edx,%edx
		mov    data_21ff4,%dl
		add    %edx,%eax
		xor    %edx,%edx
		mov    data_21ff6,%dl
		imul   %ebx,%edx
		add    $0x9,%eax
		mov    %al,data_21ff7
		mov    %edx,%eax
		sar    $0x1f,%edx
		idiv   %esi
		xor    %edx,%edx
		mov    data_21ff3,%dl
		add    %edx,%eax
		xor    %edx,%edx
		mov    data_21ff5,%dl
		imul   %ebx,%edx
		add    $0x9,%eax
		mov    %al,data_21ff6
		mov    %edx,%eax
		sar    $0x1f,%edx
		idiv   %esi
		xor    %edx,%edx
		mov    %esi,%ebx
		mov    data_21ff2,%dl
		xor    %esi,%ebx
		add    %edx,%eax
		mov    %bx,data_21fed
		add    $0x9,%eax
		mov    $0x7fff,%edx
		mov    %al,data_21ff5
		mov    data_21fe4,%al
		mov    %dx,data_21fef
		mov    %al,data_21ff1
		jmp    jump_11501
	jump_11409:
		mov    data_21feb,%eax
		sar    $0x10,%eax
		xor    %ebx,%ebx
		lea    (%eax,%eax,2),%eax
		mov    data_21ff7,%bl
		movsbw data_21864(%eax),%dx
		sub    %edx,%ebx
		mov    %bx,data_21feb
		mov    data_21fe9,%edx
		sar    $0x10,%edx
		cmp    $0x12,%edx
		ja     jump_114fa
		xor    %ebx,%ebx
		movsbw data_21865(%eax),%dx
		mov    data_21ff6,%bl
		sub    %edx,%ebx
		mov    %bx,data_21fe9
		mov    data_21fe7,%edx
		sar    $0x10,%edx
		cmp    $0x12,%edx
		ja     jump_114fa
		mov    %ebx,%edx
		xor    %ebx,%edx
		movsbw data_21866(%eax),%ax
		mov    data_21ff5,%dl
		sub    %eax,%edx
		mov    %dx,data_21fe9
		mov    data_21feb,%si
		mov    data_21fe7,%eax
		add    %ebx,%esi
		sar    $0x10,%eax
		mov    %si,data_21feb
		cmp    $0x12,%eax
		ja     jump_114fa
		mov    %esi,%edi
		add    %edx,%edi
		mov    %di,data_21feb
		cmp    $0xf,%di
		jge    jump_114c2
		mov    $0x1b,%eax
		sub    %edi,%eax
		mov    %ax,data_21feb
		jmp    jump_114ce
	jump_114c2:
		mov    %edi,%edx
		sub    $0x1b,%edx
		mov    %dx,data_21feb
	jump_114ce:
		mov    data_21feb,%ax
		cmp    data_21fef,%ax
		jge    jump_114fa
		mov    %ax,data_21fef
		mov    data_21fed,%al
		mov    data_21fef,%si
		mov    %al,data_21ff1
		cmp    $0x9,%si
		jle    jump_11510
	jump_114fa:
		incw   data_21fed
	jump_11501:
		cmpw   $0x100,data_21fed
		jl     jump_11409
	jump_11510:
		mov    data_21ff1,%al
		jmp    jump_1099e


/*----------------------------------------------------------------*/
func_11998:
/*----------------------------------------------------------------*/
		push   %ecx
		push   %edx
		mov    %eax,%ecx
		mov    %edx,%eax
		mov    data_20936,%edx
		mul    %edx
		add    %ecx,%eax
		add    data_3e954,%eax
		pop    %edx
		pop    %ecx
		ret


/*----------------------------------------------------------------*/
func_119b1:
/*----------------------------------------------------------------*/
		call   func_11998
		mov    %bl,(%eax)
		ret


/*----------------------------------------------------------------*/
func_11ad0:
/*----------------------------------------------------------------*/
		push   %ecx
		push   %edi
		cmp    $0x0,%bx
		jle    jump_11aeb
		call   func_11998
		mov    %eax,%edi
		mov    data_20930,%ax
		movzwl %bx,%ecx
		cld
		rep stos %al,%es:(%edi)
	jump_11aeb:
		pop    %edi
		pop    %ecx
		ret


/*----------------------------------------------------------------*/
func_11c39:
/*----------------------------------------------------------------*/
		push   %ebx
		call   func_11998
		mov    $0x0,%ebx
		mov    (%eax),%bl
		add    data_21fd8,%ebx
		mov    (%ebx),%bl
		mov    %bl,(%eax)
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_11c52:
/*----------------------------------------------------------------*/
		push   %ecx
		cmp    $0x0,%bx
		jle    jump_11c74
		call   func_11998
		mov    %ebx,%ecx
	jump_11c60:
		mov    $0x0,%ebx
		mov    (%eax),%bl
		add    data_21fd8,%ebx
		mov    (%ebx),%bl
		mov    %bl,(%eax)
		inc    %eax
		loop   jump_11c60
	jump_11c74:
		pop    %ecx
		ret


/*----------------------------------------------------------------*/
func_12009:
/*----------------------------------------------------------------*/
		push   %ebp
		mov    %esp,%ebp
		add    $0xfffffff8,%esp
		push   %esi
		push   %edi
		call   func_11998
		mov    $0x0,%edx
		mov    (%ebx),%dx
		inc    %dx
		mov    %edx,-0x4(%ebp)
		mov    0x2(%ebx),%dx
		inc    %dx
		mov    %dx,-0x6(%ebp)
		add    $0x4,%ebx
		mov    %ebx,%esi
		mov    %eax,%edi
		mov    %cl,%bl
		mov    0x8(%ebp),%bh
	jump_12039:
		mov    -0x4(%ebp),%ecx
		mov    $0x1,%dl
		mov    (%esi),%dh
	jump_12040:
		test   $0x80,%dh
		je     jump_1204e
		cmp    $0xff,%bl
		je     jump_12055
		mov    %bl,(%edi)
		jmp    jump_12055
	jump_1204e:
		cmp    $0xff,%bh
		je     jump_12055
		mov    %bh,(%edi)
	jump_12055:
		shl    %dx
		cmp    $0x100,%dx
		jne    jump_12064
		inc    %esi
		mov    $0x1,%dl
		mov    (%esi),%dh
	jump_12064:
		inc    %edi
		loop   jump_12040
		cmp    $0x1,%dl
		je     jump_1206d
		inc    %esi
	jump_1206d:
		add    data_20936,%eax
		mov    %eax,%edi
		decw   -0x6(%ebp)
		jne    jump_12039
		pop    %edi
		pop    %esi
		leave
		ret    $0x4


/*----------------------------------------------------------------*/
func_12081:
/*----------------------------------------------------------------*/
		push   %ebp
		mov    %esp,%ebp
		add    $0xffffffec,%esp
		push   %esi
		push   %edi
		call   func_11998
		mov    $0x0,%edx
		mov    (%ebx),%dx
		inc    %dx
		mov    %edx,-0x4(%ebp)
		mov    0x2(%ebx),%dx
		inc    %dx
		mov    %dx,-0x6(%ebp)
		add    $0x4,%ebx
		mov    %ebx,%esi
		mov    %eax,%edi
		mov    -0x4(%ebp),%ebx
		mov    data_20936,%eax
		sub    %ebx,%eax
		mov    %eax,-0x14(%ebp)
		mov    $0xff,%bl
		cmp    $0xff,%cl
		je     jump_120cf
		mov    data_21fdc,%eax
		shl    $0x8,%ecx
		add    %ecx,%eax
		mov    %eax,-0xc(%ebp)
		mov    $0x0,%bl
	jump_120cf:
		mov    $0xff,%bh
		mov    $0x0,%ecx
		mov    0x8(%ebp),%cl
		cmp    $0xff,%cl
		je     jump_120ed
		mov    data_21fdc,%eax
		shl    $0x8,%ecx
		add    %ecx,%eax
		mov    %eax,-0x10(%ebp)
		mov    $0x0,%bh
	jump_120ed:
		mov    -0x4(%ebp),%ecx
		mov    $0x1,%dl
		mov    (%esi),%dh
	jump_120f4:
		test   $0x80,%dh
		je     jump_1210e
		cmp    $0xff,%bl
		je     jump_12121
		mov    $0x0,%eax
		mov    (%edi),%al
		add    -0xc(%ebp),%eax
		mov    (%eax),%al
		mov    %al,(%edi)
		jmp    jump_12121
	jump_1210e:
		cmp    $0xff,%bh
		je     jump_12121
		mov    $0x0,%eax
		mov    (%edi),%al
		add    -0x10(%ebp),%eax
		mov    (%eax),%al
		mov    %al,(%edi)
	jump_12121:
		shl    %dx
		cmp    $0x100,%dx
		jne    jump_12130
		inc    %esi
		mov    $0x1,%dl
		mov    (%esi),%dh
	jump_12130:
		inc    %edi
		loop   jump_120f4
		cmp    $0x1,%dl
		je     jump_12139
		inc    %esi
	jump_12139:
		add    -0x14(%ebp),%edi
		decw   -0x6(%ebp)
		jne    jump_120ed
		pop    %edi
		pop    %esi
		leave
		ret    $0x4
.data
data_12148:
		.fill   0xa
data_12152:
		.fill   0x32
data_12184:
		.ascii  "\x01\x01\x01\x01\x01"
data_12189:
		.string "blackbox.sv1"
		.fill   0x11
		.string ".\\chapdata\\contibak.sv1"
		.fill   0x6
		.string "blackbox.sv2"
		.fill   0x11
		.string ".\\chapdata\\contibak.sv2"
		.fill   0x6
		.string "blackbox.sv3"
		.fill   0x11
		.string ".\\chapdata\\contibak.sv3"
		.fill   0x6
		.string "blackbox.sv4"
		.fill   0x11
		.string ".\\chapdata\\contibak.sv4"
		.fill   0x6
		.string "blackbox.sv5"
		.fill   0x11
		.string ".\\chapdata\\contibak.sv5"
		.fill   0x6
data_122b5:
		.string "blackbox.dat"
		.fill   0x11
		.string "blackbox.dat"
		.fill   0x11
data_122f1:
		.string "blackbox.dat"
		.fill   0x11
		.string ".\\chapdata\\contibak.tmp"
		.fill   0x6
.text


/*----------------------------------------------------------------*/
func_1232d:
/*----------------------------------------------------------------*/
		push   %edx
		push   %esi
		push   %edi
		sub    $0xc,%esp
	jump_12333:
		mov    %esp,%esi
		mov    $data_225fc,%edi
		call   func_14300
		mov    %esp,%esi
		movsl  %ds:(%esi),%es:(%edi)
		movsl  %ds:(%esi),%es:(%edi)
		movsl  %ds:(%esi),%es:(%edi)
		mov    data_225fc,%edx
		cmp    $0x1,%edx
		je     jump_12333
		je     jump_12333
		add    $0xc,%esp
		pop    %edi
		pop    %esi
		pop    %edx
		ret


/*----------------------------------------------------------------*/
func_12358:
/*----------------------------------------------------------------*/
		push   %ebx
		push   %edx
		mov    %eax,%ebx
		mov    data_22618,%dx
		cmp    $0x3,%dx
		je     jump_1236e
		test   %dx,%dx
		jne    jump_12373
	jump_1236e:
		call   func_1a875
	jump_12373:
		call   func_16324
		call   func_14521
		test   %ebx,%ebx
		je     jump_1238f
		mov    $0xff,%edx
		xor    %eax,%eax
		call   func_165d7
		jmp    jump_12394
	jump_1238f:
		call   func_15d26
	jump_12394:
		mov    %ebx,%eax
		call   w_dos_exit
		pop    %edx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_1239e:
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %edx
		push   $0x200
		push   $data_20010
		call   w_dos_open
		movswl %ax,%ecx
		add    $0x8,%esp
		cmp    $0xffffffff,%ecx
		jne    jump_123c7
		mov    $data_20019,%eax
		call   func_puts_
		jmp    jump_123d8
	jump_123c7:
		mov    $game_cfg_speed,%edx
		mov    $0xa,%ebx
		mov    %ecx,%eax
		call   w_dos_read
	jump_123d8:
		mov    %ecx,%eax
		call   w_dos_close
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_123e3:
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %esi
		push   %edi
		push   %ebp
		mov    %eax,%ebx
		mov    %edx,%esi
		mov    %edx,%eax
		mov    $0x180,%edx
		call   w_dos_creat
		cwtl
		call   w_dos_close
		push   $0x200
		push   %ebx
		call   w_dos_open
		add    $0x8,%esp
		movswl %ax,%edx
		mov    %eax,%ecx
		cmp    $0xffffffff,%edx
		jne    jump_1243a
		push   %ebx
		push   $data_2002e
		call   w_printf
		add    $0x8,%esp
		call   w_dos_getch
		mov    %edx,%eax
		call   w_dos_close
		mov    $0xff,%eax
		call   func_12358
	jump_1243a:
		movswl %cx,%ecx
		mov    %ecx,%eax
		call   func_filelength_
		mov    %eax,%ebx
		mov    %eax,%ebp
		call   w_dos_malloc
		mov    %eax,%edx
		mov    %eax,%edi
		mov    %ecx,%eax
		call   w_dos_read
		mov    %ecx,%eax
		call   w_dos_close
		push   $0x201
		push   %esi
		call   w_dos_open
		add    $0x8,%esp
		movswl %ax,%edx
		mov    %eax,%ebx
		cmp    $0xffffffff,%edx
		jne    jump_1249b
		push   %esi
		push   $data_2003e
		call   w_printf
		add    $0x8,%esp
		call   w_dos_getch
		mov    %edx,%eax
		call   w_dos_close
		mov    $0xff,%eax
		call   func_12358
	jump_1249b:
		movswl %bx,%ecx
		mov    %edi,%edx
		mov    %ecx,%eax
		mov    %ebp,%ebx
		call   w_dos_write
		mov    %ecx,%eax
		call   w_dos_close
		mov    %edi,%eax
		call   w_dos_free
		pop    %ebp
		pop    %edi
		pop    %esi
		pop    %ecx
		pop    %ebx
		ret

vtable_12568:
		.long   func_125b7
		.long   func_127d1
		.long   func_129e7
		.long   func_12be2
		.long   func_12ddd


/*----------------------------------------------------------------*/
func_1257c:
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %esi
		push   %edi
		sub    $0x6c,%esp
		lea    0x60(%esp),%edi
		mov    $data_12148,%esi
		movsl  %ds:(%esi),%es:(%edi)
		movsl  %ds:(%esi),%es:(%edi)
		movsw  %ds:(%esi),%es:(%edi)
		mov    $0xc,%ecx
		mov    %esp,%edi
		mov    $data_12152,%esi
		rep movsl %ds:(%esi),%es:(%edi)
		movsw  %ds:(%esi),%es:(%edi)
		cmp    $0x4,%ax
		ja     jump_12ffe
		and    $0xffff,%eax
		jmp    *vtable_12568(,%eax,4)


/*----------------------------------------------------------------*/
func_125b7:
/*----------------------------------------------------------------*/
		mov    $data_2004f,%eax
		lea    0x34(%esp),%ebx
		xor    %edx,%edx
		call   w_dos_findfirst
		mov    0x4c(%esp),%esi
		lea    0x60(%esp),%edx
		and    $0x1e0,%esi
		xor    %eax,%eax
		shr    $0x5,%si
		mov    $0xa,%ebx
		mov    %si,%ax
		mov    %esp,%edi
		call   func_itoa_
		lea    0x60(%esp),%esi
		lea    0x60(%esp),%edx
		push   %edi
		sub    %ecx,%ecx
		dec    %ecx
		mov    $0x0,%al
		repnz scas %es:(%edi),%al
		dec    %edi
	jump_125fb:
		mov    (%esi),%al
		mov    %al,(%edi)
		cmp    $0x0,%al
		je     jump_12617
		mov    0x1(%esi),%al
		add    $0x2,%esi
		mov    %al,0x1(%edi)
		add    $0x2,%edi
		cmp    $0x0,%al
		jne    jump_125fb
	jump_12617:
		pop    %edi
		mov    %esp,%edi
		mov    $data_2005c,%esi
		mov    $0xa,%ebx
		push   %edi
		sub    %ecx,%ecx
		dec    %ecx
		mov    $0x0,%al
		repnz scas %es:(%edi),%al
		dec    %edi
	jump_1262d:
		mov    (%esi),%al
		mov    %al,(%edi)
		cmp    $0x0,%al
		je     jump_12649
		mov    0x1(%esi),%al
		add    $0x2,%esi
		mov    %al,0x1(%edi)
		add    $0x2,%edi
		cmp    $0x0,%al
		jne    jump_1262d
	jump_12649:
		pop    %edi
		mov    0x4c(%esp),%esi
		xor    %eax,%eax
		and    $0x1f,%esi
		mov    %esp,%edi
		mov    %si,%ax
		lea    0x60(%esp),%esi
		call   func_itoa_
		push   %edi
		sub    %ecx,%ecx
		dec    %ecx
		mov    $0x0,%al
		repnz scas %es:(%edi),%al
		dec    %edi
	jump_1266a:
		mov    (%esi),%al
		mov    %al,(%edi)
		cmp    $0x0,%al
		je     jump_12686
		mov    0x1(%esi),%al
		add    $0x2,%esi
		mov    %al,0x1(%edi)
		add    $0x2,%edi
		cmp    $0x0,%al
		jne    jump_1266a
	jump_12686:
		pop    %edi
		mov    %esp,%edi
		mov    $data_20061,%esi
		lea    0x60(%esp),%edx
		push   %edi
		sub    %ecx,%ecx
		dec    %ecx
		mov    $0x0,%al
		repnz scas %es:(%edi),%al
		dec    %edi
	jump_1269b:
		mov    (%esi),%al
		mov    %al,(%edi)
		cmp    $0x0,%al
		je     jump_126b7
		mov    0x1(%esi),%al
		add    $0x2,%esi
		mov    %al,0x1(%edi)
		add    $0x2,%edi
		cmp    $0x0,%al
		jne    jump_1269b
	jump_126b7:
		pop    %edi
		mov    0x4a(%esp),%esi
		mov    $0xa,%ebx
		and    $0xf800,%esi
		xor    %eax,%eax
		shr    $0xb,%si
		mov    %esp,%edi
		mov    %si,%ax
		lea    0x60(%esp),%esi
		call   func_itoa_
		push   %edi
		sub    %ecx,%ecx
		dec    %ecx
		mov    $0x0,%al
		repnz scas %es:(%edi),%al
		dec    %edi
	jump_126e4:
		mov    (%esi),%al
		mov    %al,(%edi)
		cmp    $0x0,%al
		je     jump_12700
		mov    0x1(%esi),%al
		add    $0x2,%esi
		mov    %al,0x1(%edi)
		add    $0x2,%edi
		cmp    $0x0,%al
		jne    jump_126e4
	jump_12700:
		pop    %edi
		mov    %esp,%edi
		mov    $data_20066,%esi
		lea    0x60(%esp),%edx
		push   %edi
		sub    %ecx,%ecx
		dec    %ecx
		mov    $0x0,%al
		repnz scas %es:(%edi),%al
		dec    %edi
	jump_12715:
		mov    (%esi),%al
		mov    %al,(%edi)
		cmp    $0x0,%al
		je     jump_12731
		mov    0x1(%esi),%al
		add    $0x2,%esi
		mov    %al,0x1(%edi)
		add    $0x2,%edi
		cmp    $0x0,%al
		jne    jump_12715
	jump_12731:
		pop    %edi
		mov    0x4a(%esp),%esi
		mov    $0xa,%ebx
		and    $0x7e0,%esi
		xor    %eax,%eax
		shr    $0x5,%si
		mov    %esp,%edi
		mov    %si,%ax
		lea    0x60(%esp),%esi
		call   func_itoa_
		push   %edi
		sub    %ecx,%ecx
		dec    %ecx
		mov    $0x0,%al
		repnz scas %es:(%edi),%al
		dec    %edi
	jump_1275e:
		mov    (%esi),%al
		mov    %al,(%edi)
		cmp    $0x0,%al
		je     jump_1277a
		mov    0x1(%esi),%al
		add    $0x2,%esi
		mov    %al,0x1(%edi)
		add    $0x2,%edi
		cmp    $0x0,%al
		jne    jump_1275e
	jump_1277a:
		pop    %edi
		mov    %esp,%edi
		mov    $data_2006b,%esi
		push   %edi
		sub    %ecx,%ecx
		dec    %ecx
		mov    $0x0,%al
		repnz scas %es:(%edi),%al
		dec    %edi
	jump_1278b:
		mov    (%esi),%al
		mov    %al,(%edi)
		cmp    $0x0,%al
		je     jump_127a7
		mov    0x1(%esi),%al
		add    $0x2,%esi
		mov    %al,0x1(%edi)
		add    $0x2,%edi
		cmp    $0x0,%al
		jne    jump_1278b
	jump_127a7:
		pop    %edi
		mov    %esp,%eax
		push   %eax
		push   $0x35
	jump_127ad:
		lea    0x8(%esp),%edi
		sub    %ecx,%ecx
		dec    %ecx
		xor    %eax,%eax
		repnz scas %es:(%edi),%al
		not    %ecx
		dec    %ecx
		mov    %ecx,%eax
		shr    %eax
		mov    $0xa0,%edx
		shl    $0x3,%eax
		sub    %eax,%edx
		movswl %dx,%eax
		jmp    jump_12ff5


/*----------------------------------------------------------------*/
func_127d1:
/*----------------------------------------------------------------*/
		mov    $data_2006f,%eax
		lea    0x34(%esp),%ebx
		xor    %edx,%edx
		call   w_dos_findfirst
		mov    0x4c(%esp),%esi
		lea    0x60(%esp),%edx
		and    $0x1e0,%esi
		xor    %eax,%eax
		shr    $0x5,%si
		mov    $0xa,%ebx
		mov    %si,%ax
		mov    %esp,%edi
		call   func_itoa_
		lea    0x60(%esp),%esi
		lea    0x60(%esp),%edx
		push   %edi
		sub    %ecx,%ecx
		dec    %ecx
		mov    $0x0,%al
		repnz scas %es:(%edi),%al
		dec    %edi
	jump_12815:
		mov    (%esi),%al
		mov    %al,(%edi)
		cmp    $0x0,%al
		je     jump_12831
		mov    0x1(%esi),%al
		add    $0x2,%esi
		mov    %al,0x1(%edi)
		add    $0x2,%edi
		cmp    $0x0,%al
		jne    jump_12815
	jump_12831:
		pop    %edi
		mov    %esp,%edi
		mov    $data_2005c,%esi
		mov    $0xa,%ebx
		push   %edi
		sub    %ecx,%ecx
		dec    %ecx
		mov    $0x0,%al
		repnz scas %es:(%edi),%al
		dec    %edi
	jump_12847:
		mov    (%esi),%al
		mov    %al,(%edi)
		cmp    $0x0,%al
		je     jump_12863
		mov    0x1(%esi),%al
		add    $0x2,%esi
		mov    %al,0x1(%edi)
		add    $0x2,%edi
		cmp    $0x0,%al
		jne    jump_12847
	jump_12863:
		pop    %edi
		mov    0x4c(%esp),%esi
		xor    %eax,%eax
		and    $0x1f,%esi
		mov    %esp,%edi
		mov    %si,%ax
		lea    0x60(%esp),%esi
		call   func_itoa_
		push   %edi
		sub    %ecx,%ecx
		dec    %ecx
		mov    $0x0,%al
		repnz scas %es:(%edi),%al
		dec    %edi
	jump_12884:
		mov    (%esi),%al
		mov    %al,(%edi)
		cmp    $0x0,%al
		je     jump_128a0
		mov    0x1(%esi),%al
		add    $0x2,%esi
		mov    %al,0x1(%edi)
		add    $0x2,%edi
		cmp    $0x0,%al
		jne    jump_12884
	jump_128a0:
		pop    %edi
		mov    %esp,%edi
		mov    $data_20061,%esi
		lea    0x60(%esp),%edx
		push   %edi
		sub    %ecx,%ecx
		dec    %ecx
		mov    $0x0,%al
		repnz scas %es:(%edi),%al
		dec    %edi
	jump_128b5:
		mov    (%esi),%al
		mov    %al,(%edi)
		cmp    $0x0,%al
		je     jump_128d1
		mov    0x1(%esi),%al
		add    $0x2,%esi
		mov    %al,0x1(%edi)
		add    $0x2,%edi
		cmp    $0x0,%al
		jne    jump_128b5
	jump_128d1:
		pop    %edi
		mov    0x4a(%esp),%esi
		mov    $0xa,%ebx
		and    $0xf800,%esi
		xor    %eax,%eax
		shr    $0xb,%si
		mov    %esp,%edi
		mov    %si,%ax
		lea    0x60(%esp),%esi
		call   func_itoa_
		push   %edi
		sub    %ecx,%ecx
		dec    %ecx
		mov    $0x0,%al
		repnz scas %es:(%edi),%al
		dec    %edi
	jump_128fe:
		mov    (%esi),%al
		mov    %al,(%edi)
		cmp    $0x0,%al
		je     jump_1291a
		mov    0x1(%esi),%al
		add    $0x2,%esi
		mov    %al,0x1(%edi)
		add    $0x2,%edi
		cmp    $0x0,%al
		jne    jump_128fe
	jump_1291a:
		pop    %edi
		mov    %esp,%edi
		mov    $data_20066,%esi
		lea    0x60(%esp),%edx
		push   %edi
		sub    %ecx,%ecx
		dec    %ecx
		mov    $0x0,%al
		repnz scas %es:(%edi),%al
		dec    %edi
	jump_1292f:
		mov    (%esi),%al
		mov    %al,(%edi)
		cmp    $0x0,%al
		je     jump_1294b
		mov    0x1(%esi),%al
		add    $0x2,%esi
		mov    %al,0x1(%edi)
		add    $0x2,%edi
		cmp    $0x0,%al
		jne    jump_1292f
	jump_1294b:
		pop    %edi
		mov    0x4a(%esp),%esi
		mov    $0xa,%ebx
		and    $0x7e0,%esi
		xor    %eax,%eax
		shr    $0x5,%si
		mov    %esp,%edi
		mov    %si,%ax
		lea    0x60(%esp),%esi
		call   func_itoa_
		push   %edi
		sub    %ecx,%ecx
		dec    %ecx
		mov    $0x0,%al
		repnz scas %es:(%edi),%al
		dec    %edi
	jump_12978:
		mov    (%esi),%al
		mov    %al,(%edi)
		cmp    $0x0,%al
		je     jump_12994
		mov    0x1(%esi),%al
		add    $0x2,%esi
		mov    %al,0x1(%edi)
		add    $0x2,%edi
		cmp    $0x0,%al
		jne    jump_12978
	jump_12994:
		pop    %edi
		mov    %esp,%edi
		mov    $data_2006b,%esi
		push   %edi
		sub    %ecx,%ecx
		dec    %ecx
		mov    $0x0,%al
		repnz scas %es:(%edi),%al
		dec    %edi
	jump_129a5:
		mov    (%esi),%al
		mov    %al,(%edi)
		cmp    $0x0,%al
		je     jump_129c1
		mov    0x1(%esi),%al
		add    $0x2,%esi
		mov    %al,0x1(%edi)
		add    $0x2,%edi
		cmp    $0x0,%al
		jne    jump_129a5
	jump_129c1:
		pop    %edi
		mov    %esp,%eax
		push   %eax
		push   $0x49
	jump_129c7:
		lea    0x8(%esp),%edi
		sub    %ecx,%ecx
		dec    %ecx
		xor    %eax,%eax
		repnz scas %es:(%edi),%al
		not    %ecx
		dec    %ecx
		shr    %ecx
		mov    $0xa0,%eax
		shl    $0x3,%ecx
		sub    %ecx,%eax
		cwtl
		jmp    jump_12ff5


/*----------------------------------------------------------------*/
func_129e7:
/*----------------------------------------------------------------*/
		mov    $data_2007c,%eax
		lea    0x34(%esp),%ebx
		xor    %edx,%edx
		call   w_dos_findfirst
		mov    0x4c(%esp),%esi
		lea    0x60(%esp),%edx
		and    $0x1e0,%esi
		xor    %eax,%eax
		shr    $0x5,%si
		mov    $0xa,%ebx
		mov    %si,%ax
		mov    %esp,%edi
		call   func_itoa_
		lea    0x60(%esp),%esi
		lea    0x60(%esp),%edx
		push   %edi
		sub    %ecx,%ecx
		dec    %ecx
		mov    $0x0,%al
		repnz scas %es:(%edi),%al
		dec    %edi
	jump_12a2b:
		mov    (%esi),%al
		mov    %al,(%edi)
		cmp    $0x0,%al
		je     jump_12a47
		mov    0x1(%esi),%al
		add    $0x2,%esi
		mov    %al,0x1(%edi)
		add    $0x2,%edi
		cmp    $0x0,%al
		jne    jump_12a2b
	jump_12a47:
		pop    %edi
		mov    %esp,%edi
		mov    $data_2005c,%esi
		mov    $0xa,%ebx
		push   %edi
		sub    %ecx,%ecx
		dec    %ecx
		mov    $0x0,%al
		repnz scas %es:(%edi),%al
		dec    %edi
	jump_12a5d:
		mov    (%esi),%al
		mov    %al,(%edi)
		cmp    $0x0,%al
		je     jump_12a79
		mov    0x1(%esi),%al
		add    $0x2,%esi
		mov    %al,0x1(%edi)
		add    $0x2,%edi
		cmp    $0x0,%al
		jne    jump_12a5d
	jump_12a79:
		pop    %edi
		mov    0x4c(%esp),%esi
		xor    %eax,%eax
		and    $0x1f,%esi
		mov    %esp,%edi
		mov    %si,%ax
		lea    0x60(%esp),%esi
		call   func_itoa_
		push   %edi
		sub    %ecx,%ecx
		dec    %ecx
		mov    $0x0,%al
		repnz scas %es:(%edi),%al
		dec    %edi
	jump_12a9a:
		mov    (%esi),%al
		mov    %al,(%edi)
		cmp    $0x0,%al
		je     jump_12ab6
		mov    0x1(%esi),%al
		add    $0x2,%esi
		mov    %al,0x1(%edi)
		add    $0x2,%edi
		cmp    $0x0,%al
		jne    jump_12a9a
	jump_12ab6:
		pop    %edi
		mov    %esp,%edi
		mov    $data_20061,%esi
		lea    0x60(%esp),%edx
		push   %edi
		sub    %ecx,%ecx
		dec    %ecx
		mov    $0x0,%al
		repnz scas %es:(%edi),%al
		dec    %edi
	jump_12acb:
		mov    (%esi),%al
		mov    %al,(%edi)
		cmp    $0x0,%al
		je     jump_12ae7
		mov    0x1(%esi),%al
		add    $0x2,%esi
		mov    %al,0x1(%edi)
		add    $0x2,%edi
		cmp    $0x0,%al
		jne    jump_12acb
	jump_12ae7:
		pop    %edi
		mov    0x4a(%esp),%esi
		mov    $0xa,%ebx
		and    $0xf800,%esi
		xor    %eax,%eax
		shr    $0xb,%si
		mov    %esp,%edi
		mov    %si,%ax
		lea    0x60(%esp),%esi
		call   func_itoa_
		push   %edi
		sub    %ecx,%ecx
		dec    %ecx
		mov    $0x0,%al
		repnz scas %es:(%edi),%al
		dec    %edi
	jump_12b14:
		mov    (%esi),%al
		mov    %al,(%edi)
		cmp    $0x0,%al
		je     jump_12b30
		mov    0x1(%esi),%al
		add    $0x2,%esi
		mov    %al,0x1(%edi)
		add    $0x2,%edi
		cmp    $0x0,%al
		jne    jump_12b14
	jump_12b30:
		pop    %edi
		mov    %esp,%edi
		mov    $data_20066,%esi
		lea    0x60(%esp),%edx
		push   %edi
		sub    %ecx,%ecx
		dec    %ecx
		mov    $0x0,%al
		repnz scas %es:(%edi),%al
		dec    %edi
	jump_12b45:
		mov    (%esi),%al
		mov    %al,(%edi)
		cmp    $0x0,%al
		je     jump_12b61
		mov    0x1(%esi),%al
		add    $0x2,%esi
		mov    %al,0x1(%edi)
		add    $0x2,%edi
		cmp    $0x0,%al
		jne    jump_12b45
	jump_12b61:
		pop    %edi
		mov    0x4a(%esp),%esi
		mov    $0xa,%ebx
		and    $0x7e0,%esi
		xor    %eax,%eax
		shr    $0x5,%si
		mov    %esp,%edi
		mov    %si,%ax
		lea    0x60(%esp),%esi
		call   func_itoa_
		push   %edi
		sub    %ecx,%ecx
		dec    %ecx
		mov    $0x0,%al
		repnz scas %es:(%edi),%al
		dec    %edi
	jump_12b8e:
		mov    (%esi),%al
		mov    %al,(%edi)
		cmp    $0x0,%al
		je     jump_12baa
		mov    0x1(%esi),%al
		add    $0x2,%esi
		mov    %al,0x1(%edi)
		add    $0x2,%edi
		cmp    $0x0,%al
		jne    jump_12b8e
	jump_12baa:
		pop    %edi
		mov    %esp,%edi
		mov    $data_2006b,%esi
		push   %edi
		sub    %ecx,%ecx
		dec    %ecx
		mov    $0x0,%al
		repnz scas %es:(%edi),%al
		dec    %edi
	jump_12bbb:
		mov    (%esi),%al
		mov    %al,(%edi)
		cmp    $0x0,%al
		je     jump_12bd7
		mov    0x1(%esi),%al
		add    $0x2,%esi
		mov    %al,0x1(%edi)
		add    $0x2,%edi
		cmp    $0x0,%al
		jne    jump_12bbb
	jump_12bd7:
		pop    %edi
		mov    %esp,%eax
		push   %eax
		push   $0x5d
		jmp    jump_129c7


/*----------------------------------------------------------------*/
func_12be2:
/*----------------------------------------------------------------*/
		mov    $data_20089,%eax
		lea    0x34(%esp),%ebx
		xor    %edx,%edx
		call   w_dos_findfirst
		mov    0x4c(%esp),%esi
		lea    0x60(%esp),%edx
		and    $0x1e0,%esi
		xor    %eax,%eax
		shr    $0x5,%si
		mov    $0xa,%ebx
		mov    %si,%ax
		mov    %esp,%edi
		call   func_itoa_
		lea    0x60(%esp),%esi
		lea    0x60(%esp),%edx
		push   %edi
		sub    %ecx,%ecx
		dec    %ecx
		mov    $0x0,%al
		repnz scas %es:(%edi),%al
		dec    %edi
	jump_12c26:
		mov    (%esi),%al
		mov    %al,(%edi)
		cmp    $0x0,%al
		je     jump_12c42
		mov    0x1(%esi),%al
		add    $0x2,%esi
		mov    %al,0x1(%edi)
		add    $0x2,%edi
		cmp    $0x0,%al
		jne    jump_12c26
	jump_12c42:
		pop    %edi
		mov    %esp,%edi
		mov    $data_2005c,%esi
		mov    $0xa,%ebx
		push   %edi
		sub    %ecx,%ecx
		dec    %ecx
		mov    $0x0,%al
		repnz scas %es:(%edi),%al
		dec    %edi
	jump_12c58:
		mov    (%esi),%al
		mov    %al,(%edi)
		cmp    $0x0,%al
		je     jump_12c74
		mov    0x1(%esi),%al
		add    $0x2,%esi
		mov    %al,0x1(%edi)
		add    $0x2,%edi
		cmp    $0x0,%al
		jne    jump_12c58
	jump_12c74:
		pop    %edi
		mov    0x4c(%esp),%esi
		xor    %eax,%eax
		and    $0x1f,%esi
		mov    %esp,%edi
		mov    %si,%ax
		lea    0x60(%esp),%esi
		call   func_itoa_
		push   %edi
		sub    %ecx,%ecx
		dec    %ecx
		mov    $0x0,%al
		repnz scas %es:(%edi),%al
		dec    %edi
	jump_12c95:
		mov    (%esi),%al
		mov    %al,(%edi)
		cmp    $0x0,%al
		je     jump_12cb1
		mov    0x1(%esi),%al
		add    $0x2,%esi
		mov    %al,0x1(%edi)
		add    $0x2,%edi
		cmp    $0x0,%al
		jne    jump_12c95
	jump_12cb1:
		pop    %edi
		mov    %esp,%edi
		mov    $data_20061,%esi
		lea    0x60(%esp),%edx
		push   %edi
		sub    %ecx,%ecx
		dec    %ecx
		mov    $0x0,%al
		repnz scas %es:(%edi),%al
		dec    %edi
	jump_12cc6:
		mov    (%esi),%al
		mov    %al,(%edi)
		cmp    $0x0,%al
		je     jump_12ce2
		mov    0x1(%esi),%al
		add    $0x2,%esi
		mov    %al,0x1(%edi)
		add    $0x2,%edi
		cmp    $0x0,%al
		jne    jump_12cc6
	jump_12ce2:
		pop    %edi
		mov    0x4a(%esp),%esi
		mov    $0xa,%ebx
		and    $0xf800,%esi
		xor    %eax,%eax
		shr    $0xb,%si
		mov    %esp,%edi
		mov    %si,%ax
		lea    0x60(%esp),%esi
		call   func_itoa_
		push   %edi
		sub    %ecx,%ecx
		dec    %ecx
		mov    $0x0,%al
		repnz scas %es:(%edi),%al
		dec    %edi
	jump_12d0f:
		mov    (%esi),%al
		mov    %al,(%edi)
		cmp    $0x0,%al
		je     jump_12d2b
		mov    0x1(%esi),%al
		add    $0x2,%esi
		mov    %al,0x1(%edi)
		add    $0x2,%edi
		cmp    $0x0,%al
		jne    jump_12d0f
	jump_12d2b:
		pop    %edi
		mov    %esp,%edi
		mov    $data_20066,%esi
		lea    0x60(%esp),%edx
		push   %edi
		sub    %ecx,%ecx
		dec    %ecx
		mov    $0x0,%al
		repnz scas %es:(%edi),%al
		dec    %edi
	jump_12d40:
		mov    (%esi),%al
		mov    %al,(%edi)
		cmp    $0x0,%al
		je     jump_12d5c
		mov    0x1(%esi),%al
		add    $0x2,%esi
		mov    %al,0x1(%edi)
		add    $0x2,%edi
		cmp    $0x0,%al
		jne    jump_12d40
	jump_12d5c:
		pop    %edi
		mov    0x4a(%esp),%esi
		mov    $0xa,%ebx
		and    $0x7e0,%esi
		xor    %eax,%eax
		shr    $0x5,%si
		mov    %esp,%edi
		mov    %si,%ax
		lea    0x60(%esp),%esi
		call   func_itoa_
		push   %edi
		sub    %ecx,%ecx
		dec    %ecx
		mov    $0x0,%al
		repnz scas %es:(%edi),%al
		dec    %edi
	jump_12d89:
		mov    (%esi),%al
		mov    %al,(%edi)
		cmp    $0x0,%al
		je     jump_12da5
		mov    0x1(%esi),%al
		add    $0x2,%esi
		mov    %al,0x1(%edi)
		add    $0x2,%edi
		cmp    $0x0,%al
		jne    jump_12d89
	jump_12da5:
		pop    %edi
		mov    %esp,%edi
		mov    $data_2006b,%esi
		push   %edi
		sub    %ecx,%ecx
		dec    %ecx
		mov    $0x0,%al
		repnz scas %es:(%edi),%al
		dec    %edi
	jump_12db6:
		mov    (%esi),%al
		mov    %al,(%edi)
		cmp    $0x0,%al
		je     jump_12dd2
		mov    0x1(%esi),%al
		add    $0x2,%esi
		mov    %al,0x1(%edi)
		add    $0x2,%edi
		cmp    $0x0,%al
		jne    jump_12db6
	jump_12dd2:
		pop    %edi
		mov    %esp,%eax
		push   %eax
		push   $0x71
		jmp    jump_127ad


/*----------------------------------------------------------------*/
func_12ddd:
/*----------------------------------------------------------------*/
		mov    $data_20096,%eax
		lea    0x34(%esp),%ebx
		xor    %edx,%edx
		call   w_dos_findfirst
		mov    0x4c(%esp),%esi
		lea    0x60(%esp),%edx
		and    $0x1e0,%esi
		xor    %eax,%eax
		shr    $0x5,%si
		mov    $0xa,%ebx
		mov    %si,%ax
		mov    %esp,%edi
		call   func_itoa_
		lea    0x60(%esp),%esi
		lea    0x60(%esp),%edx
		push   %edi
		sub    %ecx,%ecx
		dec    %ecx
		mov    $0x0,%al
		repnz scas %es:(%edi),%al
		dec    %edi
	jump_12e21:
		mov    (%esi),%al
		mov    %al,(%edi)
		cmp    $0x0,%al
		je     jump_12e3d
		mov    0x1(%esi),%al
		add    $0x2,%esi
		mov    %al,0x1(%edi)
		add    $0x2,%edi
		cmp    $0x0,%al
		jne    jump_12e21
	jump_12e3d:
		pop    %edi
		mov    %esp,%edi
		mov    $data_2005c,%esi
		mov    $0xa,%ebx
		push   %edi
		sub    %ecx,%ecx
		dec    %ecx
		mov    $0x0,%al
		repnz scas %es:(%edi),%al
		dec    %edi
	jump_12e53:
		mov    (%esi),%al
		mov    %al,(%edi)
		cmp    $0x0,%al
		je     jump_12e6f
		mov    0x1(%esi),%al
		add    $0x2,%esi
		mov    %al,0x1(%edi)
		add    $0x2,%edi
		cmp    $0x0,%al
		jne    jump_12e53
	jump_12e6f:
		pop    %edi
		mov    0x4c(%esp),%esi
		xor    %eax,%eax
		and    $0x1f,%esi
		mov    %esp,%edi
		mov    %si,%ax
		lea    0x60(%esp),%esi
		call   func_itoa_
		push   %edi
		sub    %ecx,%ecx
		dec    %ecx
		mov    $0x0,%al
		repnz scas %es:(%edi),%al
		dec    %edi
	jump_12e90:
		mov    (%esi),%al
		mov    %al,(%edi)
		cmp    $0x0,%al
		je     jump_12eac
		mov    0x1(%esi),%al
		add    $0x2,%esi
		mov    %al,0x1(%edi)
		add    $0x2,%edi
		cmp    $0x0,%al
		jne    jump_12e90
	jump_12eac:
		pop    %edi
		mov    %esp,%edi
		mov    $data_20061,%esi
		lea    0x60(%esp),%edx
		push   %edi
		sub    %ecx,%ecx
		dec    %ecx
		mov    $0x0,%al
		repnz scas %es:(%edi),%al
		dec    %edi
	jump_12ec1:
		mov    (%esi),%al
		mov    %al,(%edi)
		cmp    $0x0,%al
		je     jump_12edd
		mov    0x1(%esi),%al
		add    $0x2,%esi
		mov    %al,0x1(%edi)
		add    $0x2,%edi
		cmp    $0x0,%al
		jne    jump_12ec1
	jump_12edd:
		pop    %edi
		mov    0x4a(%esp),%esi
		mov    $0xa,%ebx
		and    $0xf800,%esi
		xor    %eax,%eax
		shr    $0xb,%si
		mov    %esp,%edi
		mov    %si,%ax
		lea    0x60(%esp),%esi
		call   func_itoa_
		push   %edi
		sub    %ecx,%ecx
		dec    %ecx
		mov    $0x0,%al
		repnz scas %es:(%edi),%al
		dec    %edi
	jump_12f0a:
		mov    (%esi),%al
		mov    %al,(%edi)
		cmp    $0x0,%al
		je     jump_12f26
		mov    0x1(%esi),%al
		add    $0x2,%esi
		mov    %al,0x1(%edi)
		add    $0x2,%edi
		cmp    $0x0,%al
		jne    jump_12f0a
	jump_12f26:
		pop    %edi
		mov    %esp,%edi
		mov    $data_20066,%esi
		lea    0x60(%esp),%edx
		push   %edi
		sub    %ecx,%ecx
		dec    %ecx
		mov    $0x0,%al
		repnz scas %es:(%edi),%al
		dec    %edi
	jump_12f3b:
		mov    (%esi),%al
		mov    %al,(%edi)
		cmp    $0x0,%al
		je     jump_12f57
		mov    0x1(%esi),%al
		add    $0x2,%esi
		mov    %al,0x1(%edi)
		add    $0x2,%edi
		cmp    $0x0,%al
		jne    jump_12f3b
	jump_12f57:
		pop    %edi
		mov    0x4a(%esp),%esi
		mov    $0xa,%ebx
		and    $0x7e0,%esi
		xor    %eax,%eax
		shr    $0x5,%si
		mov    %esp,%edi
		mov    %si,%ax
		lea    0x60(%esp),%esi
		call   func_itoa_
		push   %edi
		sub    %ecx,%ecx
		dec    %ecx
		mov    $0x0,%al
		repnz scas %es:(%edi),%al
		dec    %edi
	jump_12f84:
		mov    (%esi),%al
		mov    %al,(%edi)
		cmp    $0x0,%al
		je     jump_12fa0
		mov    0x1(%esi),%al
		add    $0x2,%esi
		mov    %al,0x1(%edi)
		add    $0x2,%edi
		cmp    $0x0,%al
		jne    jump_12f84
	jump_12fa0:
		pop    %edi
		mov    %esp,%edi
		mov    $data_2006b,%esi
		push   %edi
		sub    %ecx,%ecx
		dec    %ecx
		mov    $0x0,%al
		repnz scas %es:(%edi),%al
		dec    %edi
	jump_12fb1:
		mov    (%esi),%al
		mov    %al,(%edi)
		cmp    $0x0,%al
		je     jump_12fcd
		mov    0x1(%esi),%al
		add    $0x2,%esi
		mov    %al,0x1(%edi)
		add    $0x2,%edi
		cmp    $0x0,%al
		jne    jump_12fb1
	jump_12fcd:
		pop    %edi
		mov    %esp,%eax
		push   %eax
		push   $0x85
		lea    0x8(%esp),%edi
		sub    %ecx,%ecx
		dec    %ecx
		xor    %eax,%eax
		repnz scas %es:(%edi),%al
		not    %ecx
		dec    %ecx
		mov    %ecx,%eax
		shr    %eax
		mov    $0xa0,%edx
		shl    $0x3,%eax
		sub    %eax,%edx
		movswl %dx,%eax
	jump_12ff5:
		push   %eax
		call   func_15421
		add    $0xc,%esp
	jump_12ffe:
		add    $0x6c,%esp
		pop    %edi
		pop    %esi
		pop    %ecx
		pop    %ebx
		ret

vtable_13008:
		.long   func_135b1
		.long   func_135cf
		.long   func_135f3
		.long   func_1360d
		.long   func_13627
		.long   func_13644

vtable_13020:
		.long   func_1368a
		.long   func_136a8
		.long   func_136cc
		.long   func_136e6
		.long   func_13700
		.long   func_1371d


/*----------------------------------------------------------------*/
func_13038:
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %edx
		push   %esi
		push   %edi
		push   %ebp
		sub    $0x144,%esp
		lea    0x138(%esp),%edi
		mov    $data_12184,%esi
		movsl  %ds:(%esi),%es:(%edi)
		movsb  %ds:(%esi),%es:(%edi)
		mov    $0x4b,%ecx
		mov    %esp,%edi
		mov    $data_12189,%esi
		mov    $0x6,%edx
		rep movsl %ds:(%esi),%es:(%edi)
		mov    %edx,0x140(%esp)
		xor    %edi,%edi
	jump_1306e:
		movswl %di,%ebx
		mov    %ebx,%eax
		shl    $0x4,%eax
		sub    %ebx,%eax
		mov    %esp,%ecx
		add    %eax,%eax
		mov    $data_200a3,%edx
		add    %ecx,%eax
		call   w_dos_fopen
		mov    %eax,%ecx
		test   %eax,%eax
		jne    jump_130a2
		mov    %ebx,%edx
		mov    %ebx,%eax
		sar    $0x1f,%edx
		sub    %edx,%eax
		sar    %eax
		xor    %dl,%dl
		mov    %dl,0x138(%esp,%eax,1)
	jump_130a2:
		mov    %ecx,%eax
		inc    %edi
		call   w_dos_fclose
		cmp    $0xa,%di
		jl     jump_1306e
		mov    $data_200a6,%eax
		mov    data_3e954,%edx
		call   func_16101
		cmpb   $0x1,0x138(%esp)
		jne    jump_130d8
		mov    $0x37,%edx
		xor    %eax,%eax
		call   func_1257c
		jmp    jump_130e9
	jump_130d8:
		push   $data_200af
		push   $0x35
		push   $0x7d
		call   func_15421
		add    $0xc,%esp
	jump_130e9:
		cmpb   $0x1,0x139(%esp)
		jne    jump_13104
		mov    $0x1,%eax
		mov    $0x37,%edx
		call   func_1257c
		jmp    jump_13115
	jump_13104:
		push   $data_200af
		push   $0x49
		push   $0x7d
		call   func_15421
		add    $0xc,%esp
	jump_13115:
		cmpb   $0x1,0x13a(%esp)
		jne    jump_13130
		mov    $0x2,%eax
		mov    $0x37,%edx
		call   func_1257c
		jmp    jump_13141
	jump_13130:
		push   $data_200af
		push   $0x5d
		push   $0x7d
		call   func_15421
		add    $0xc,%esp
	jump_13141:
		cmpb   $0x1,0x13b(%esp)
		jne    jump_1315c
		mov    $0x3,%eax
		mov    $0x37,%edx
		call   func_1257c
		jmp    jump_1316d
	jump_1315c:
		push   $data_200af
		push   $0x71
		push   $0x7d
		call   func_15421
		add    $0xc,%esp
	jump_1316d:
		cmpb   $0x1,0x13c(%esp)
		jne    jump_13188
		mov    $0x4,%eax
		mov    $0x37,%edx
		call   func_1257c
		jmp    jump_1319c
	jump_13188:
		push   $data_200af
		push   $0x85
		push   $0x7d
		call   func_15421
		add    $0xc,%esp
	jump_1319c:
		push   $data_200b9
		push   $0x99
		push   $0x68
		call   func_15421
		add    $0xc,%esp
		mov    data_3e954,%eax
		call   func_15f6e
		call   func_14543
		call   func_1232d
		mov    $0x37,%ebp
	jump_131c9:
#if 1
    /* draw load menu */
    push   %eax
    call   w_game_update
    pop    %eax
#endif
		lea    0x12c(%esp),%esi
		mov    $data_225fc,%edi
		call   func_14300
		lea    0x12c(%esp),%esi
		movsl  %ds:(%esi),%es:(%edi)
		movsl  %ds:(%esi),%es:(%edi)
		movsl  %ds:(%esi),%es:(%edi)
		mov    data_22600,%edx
		cmp    $0x50,%edx
		jle    jump_13287
		cmp    $0xf0,%edx
		jge    jump_13287
		mov    data_22604,%ecx
		cmp    $0x35,%ecx
		jle    jump_13287
		cmp    $0x46,%ecx
		jge    jump_13287
		cmpl   $0x1,data_225fc
		jne    jump_13280
		cmpb   $0x0,0x138(%esp)
		je     jump_13280
		mov    $data_2004f,%eax
		mov    $data_200c8,%edx
		call   func_123e3
		mov    $data_200ed,%eax
		mov    $data_200d5,%edx
		call   func_123e3
		mov    $data_20108,%eax
		mov    $data_20105,%edx
		call   w_dos_fopen
		call   w_dos_fclose
		mov    $data_2011a,%eax
		mov    $data_20105,%edx
		call   w_dos_fopen
		call   w_dos_fclose
		mov    $data_2011c,%eax
		call   w_dos_unlink
		mov    $0x1,%eax
		call   func_12358
	jump_13280:
		xor    %ecx,%ecx
		jmp    jump_13573
	jump_13287:
		mov    data_22600,%edi
		cmp    $0x50,%edi
		jle    jump_13330
		cmp    $0xf0,%edi
		jge    jump_13330
		mov    data_22604,%edx
		cmp    $0x49,%edx
		jle    jump_13330
		cmp    $0x5a,%edx
		jge    jump_13330
		mov    data_225fc,%edi
		cmp    $0x1,%edi
		jne    jump_13326
		cmpb   $0x0,0x139(%esp)
		je     jump_13326
		mov    $data_2006f,%eax
		mov    $data_200c8,%edx
		call   func_123e3
		mov    $data_20128,%eax
		mov    $data_200d5,%edx
		call   func_123e3
		mov    $data_20108,%eax
		mov    $data_20105,%edx
		call   w_dos_fopen
		call   w_dos_fclose
		mov    $data_2011a,%eax
		mov    $data_20105,%edx
		call   w_dos_fopen
		call   w_dos_fclose
		mov    $data_2011c,%eax
		call   w_dos_unlink
		mov    %edi,%eax
		call   func_12358
	jump_13326:
		mov    $0x1,%ecx
		jmp    jump_13573
	jump_13330:
		mov    data_22600,%ecx
		cmp    $0x50,%ecx
		jle    jump_133d9
		cmp    $0xf0,%ecx
		jge    jump_133d9
		mov    data_22604,%edi
		cmp    $0x5d,%edi
		jle    jump_133d9
		cmp    $0x6e,%edi
		jge    jump_133d9
		mov    data_225fc,%esi
		cmp    $0x1,%esi
		jne    jump_133cf
		cmpb   $0x0,0x13a(%esp)
		je     jump_133cf
		mov    $data_2007c,%eax
		mov    $data_200c8,%edx
		call   func_123e3
		mov    $data_20140,%eax
		mov    $data_200d5,%edx
		call   func_123e3
		mov    $data_20108,%eax
		mov    $data_20105,%edx
		call   w_dos_fopen
		call   w_dos_fclose
		mov    $data_2011a,%eax
		mov    $data_20105,%edx
		call   w_dos_fopen
		call   w_dos_fclose
		mov    $data_2011c,%eax
		call   w_dos_unlink
		mov    %esi,%eax
		call   func_12358
	jump_133cf:
		mov    $0x2,%ecx
		jmp    jump_13573
	jump_133d9:
		mov    data_22600,%edx
		cmp    $0x50,%edx
		jle    jump_13485
		cmp    $0xf0,%edx
		jge    jump_13485
		mov    data_22604,%ecx
		cmp    $0x71,%ecx
		jle    jump_13485
		cmp    $0x82,%ecx
		jge    jump_13485
		mov    data_225fc,%ecx
		cmp    $0x1,%ecx
		jne    jump_1347b
		cmpb   $0x0,0x13b(%esp)
		je     jump_1347b
		mov    $data_20089,%eax
		mov    $data_200c8,%edx
		call   func_123e3
		mov    $data_20158,%eax
		mov    $data_200d5,%edx
		call   func_123e3
		mov    $data_20108,%eax
		mov    $data_20105,%edx
		call   w_dos_fopen
		call   w_dos_fclose
		mov    $data_2011a,%eax
		mov    $data_20105,%edx
		call   w_dos_fopen
		call   w_dos_fclose
		mov    $data_2011c,%eax
		call   w_dos_unlink
		mov    %ecx,%eax
		call   func_12358
	jump_1347b:
		mov    $0x3,%ecx
		jmp    jump_13573
	jump_13485:
		mov    data_22600,%edi
		cmp    $0x50,%edi
		jle    jump_13531
		cmp    $0xf0,%edi
		jge    jump_13531
		mov    data_22604,%edx
		cmp    $0x85,%edx
		jle    jump_13531
		cmp    $0x96,%edx
		jge    jump_13531
		mov    data_225fc,%ebx
		cmp    $0x1,%ebx
		jne    jump_1352a
		cmpb   $0x0,0x13c(%esp)
		je     jump_1352a
		mov    $data_20096,%eax
		mov    $data_200c8,%edx
		call   func_123e3
		mov    $data_20170,%eax
		mov    $data_200d5,%edx
		call   func_123e3
		mov    $data_20108,%eax
		mov    $data_20105,%edx
		call   w_dos_fopen
		call   w_dos_fclose
		mov    $data_2011a,%eax
		mov    $data_20105,%edx
		call   w_dos_fopen
		call   w_dos_fclose
		mov    $data_2011c,%eax
		call   w_dos_unlink
		mov    %ebx,%eax
		call   func_12358
	jump_1352a:
		mov    $0x4,%ecx
		jmp    jump_13573
	jump_13531:
		mov    data_22600,%ecx
		cmp    $0x50,%ecx
		jle    jump_1356e
		cmp    $0xf0,%ecx
		jge    jump_1356e
		mov    data_22604,%edi
		cmp    $0x99,%edi
		jle    jump_1356e
		cmp    $0xaa,%edi
		jge    jump_1356e
		cmpl   $0x1,data_225fc
		je     jump_1374c
		mov    $0x5,%ecx
		jmp    jump_13573
	jump_1356e:
		mov    $0x6,%ecx
	jump_13573:
		cmp    0x140(%esp),%cx
		je     jump_131c9
		mov    $0x4,%eax
		mov    $0x100,%edx
		mov    $0xff,%ebx
		call   func_14f3f
		call   func_14585
		cmp    $0x5,%cx
		ja     jump_13658
		xor    %eax,%eax
		mov    %cx,%ax
		jmp    *vtable_13008(,%eax,4)


/*----------------------------------------------------------------*/
func_135b1:
/*----------------------------------------------------------------*/
		cmpb   $0x1,0x138(%esp)
		jne    jump_135c1
		mov    %ebp,%edx
		xor    %eax,%eax
		jmp    jump_135e0
	jump_135c1:
		push   $data_200af
		push   $0x35
	jump_135c8:
		push   $0x7d
		jmp    jump_13650


/*----------------------------------------------------------------*/
func_135cf:
/*----------------------------------------------------------------*/
		cmpb   $0x1,0x139(%esp)
		jne    jump_135ea
		mov    $0x1,%eax
	jump_135de:
		mov    %ebp,%edx
	jump_135e0:
		call   func_1257c
		jmp    jump_13658
	jump_135ea:
		push   $data_200af
		push   $0x49
		jmp    jump_135c8


/*----------------------------------------------------------------*/
func_135f3:
/*----------------------------------------------------------------*/
		cmpb   $0x1,0x13a(%esp)
		jne    jump_13604
		mov    $0x2,%eax
		jmp    jump_135de
	jump_13604:
		push   $data_200af
		push   $0x5d
		jmp    jump_135c8


/*----------------------------------------------------------------*/
func_1360d:
/*----------------------------------------------------------------*/
		cmpb   $0x1,0x13b(%esp)
		jne    jump_1361e
		mov    $0x3,%eax
		jmp    jump_135de
	jump_1361e:
		push   $data_200af
		push   $0x71
		jmp    jump_135c8


/*----------------------------------------------------------------*/
func_13627:
/*----------------------------------------------------------------*/
		cmpb   $0x1,0x13c(%esp)
		jne    jump_13638
		mov    $0x4,%eax
		jmp    jump_135de
	jump_13638:
		push   $data_200af
		push   $0x85
		jmp    jump_135c8


/*----------------------------------------------------------------*/
func_13644:
/*----------------------------------------------------------------*/
		push   $data_200b9
		push   $0x99
		push   $0x68
	jump_13650:
		call   func_15421
		add    $0xc,%esp
	jump_13658:
		mov    $0x4,%eax
		mov    $0x1000,%edx
		mov    $0xff,%ebx
		mov    0x140(%esp),%esi
		call   func_14f3f
		cmp    $0x5,%si
		ja     jump_13731
		xor    %eax,%eax
		mov    %si,%ax
		jmp    *vtable_13020(,%eax,4)


/*----------------------------------------------------------------*/
func_1368a:
/*----------------------------------------------------------------*/
		cmpb   $0x1,0x138(%esp)
		jne    jump_1369a
		mov    %ebp,%edx
		xor    %eax,%eax
		jmp    jump_136b9
	jump_1369a:
		push   $data_200af
		push   $0x35
	jump_136a1:
		push   $0x7d
		jmp    jump_13729


/*----------------------------------------------------------------*/
func_136a8:
/*----------------------------------------------------------------*/
		cmpb   $0x1,0x139(%esp)
		jne    jump_136c3
		mov    $0x1,%eax
	jump_136b7:
		mov    %ebp,%edx
	jump_136b9:
		call   func_1257c
		jmp    jump_13731
	jump_136c3:
		push   $data_200af
		push   $0x49
		jmp    jump_136a1


/*----------------------------------------------------------------*/
func_136cc:
/*----------------------------------------------------------------*/
		cmpb   $0x1,0x13a(%esp)
		jne    jump_136dd
		mov    $0x2,%eax
		jmp    jump_136b7
	jump_136dd:
		push   $data_200af
		push   $0x5d
		jmp    jump_136a1


/*----------------------------------------------------------------*/
func_136e6:
/*----------------------------------------------------------------*/
		cmpb   $0x1,0x13b(%esp)
		jne    jump_136f7
		mov    $0x3,%eax
		jmp    jump_136b7
	jump_136f7:
		push   $data_200af
		push   $0x71
		jmp    jump_136a1


/*----------------------------------------------------------------*/
func_13700:
/*----------------------------------------------------------------*/
		cmpb   $0x1,0x13c(%esp)
		jne    jump_13711
		mov    $0x4,%eax
		jmp    jump_136b7
	jump_13711:
		push   $data_200af
		push   $0x85
		jmp    jump_136a1


/*----------------------------------------------------------------*/
func_1371d:
/*----------------------------------------------------------------*/
		push   $data_200b9
		push   $0x99
		push   $0x68
	jump_13729:
		call   func_15421
		add    $0xc,%esp
	jump_13731:
		mov    data_3e954,%eax
		mov    %ecx,0x140(%esp)
		call   func_15f6e
		call   func_14543
		jmp    jump_131c9
	jump_1374c:
		add    $0x144,%esp
	jump_13752:
		pop    %ebp
	jump_13753:
		pop    %edi
		pop    %esi
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_13759:
/*----------------------------------------------------------------*/
		push   %edx
		mov    $data_20188,%eax
		mov    $data_200c8,%edx
		call   func_123e3
		call   func_15d2d
		mov    $data_2011a,%eax
		mov    $data_20105,%edx
		call   w_dos_fopen
		call   w_dos_fclose
		mov    $data_20195,%eax
		mov    $data_20105,%edx
		call   w_dos_fopen
		call   w_dos_fclose
		mov    $data_2019b,%eax
		call   w_dos_unlink
		mov    $data_2011c,%eax
		call   w_dos_unlink
		mov    $0x1,%eax
		call   func_12358
		pop    %edx
		ret


/*----------------------------------------------------------------*/
func_137b6:
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %edx
		push   %esi
		push   %edi
		sub    $0x3c,%esp
		mov    $0xf,%ecx
		mov    %esp,%edi
		mov    $data_122b5,%esi
		rep movsl %ds:(%esi),%es:(%edi)
		xor    %ebx,%ebx
		mov    $0x1,%cl
	jump_137d0:
		movswl %bx,%edx
		mov    %edx,%eax
		shl    $0x4,%eax
		sub    %edx,%eax
		mov    %esp,%edx
		add    %eax,%eax
		add    %edx,%eax
		mov    $data_200a3,%edx
		call   w_dos_fopen
		test   %eax,%eax
		jne    jump_137f0
		xor    %cl,%cl
	jump_137f0:
		inc    %ebx
		call   w_dos_fclose
		cmp    $0x2,%bx
		jl     jump_137d0
		mov    $data_200a6,%eax
		mov    data_3e954,%edx
		call   func_16101
		push   $data_201a8
		push   $0x49
		push   $0x64
		call   func_15421
		add    $0xc,%esp
		push   $data_201b6
		push   $0x5d
		push   $0x64
		call   func_15421
		add    $0xc,%esp
		cmp    $0x1,%cl
		jne    jump_13844
		push   $data_201c2
		push   $0x71
		push   $0x5a
		call   func_15421
		add    $0xc,%esp
	jump_13844:
		push   $data_201d3
		push   $0x85
		push   $0x64
		call   func_15421
		add    $0xc,%esp
		push   $data_201dd
		push   $0xb6
		push   $0x4
		call   func_15421
		add    $0xc,%esp
		call   func_14585
		mov    data_3e954,%eax
		call   func_15f6e
		call   func_14543
		add    $0x3c,%esp
		jmp    jump_13753

vtable_13888:
		.long   func_13aac
		.long   func_13ab6
		.long   func_13abf
		.long   func_13aca

vtable_13898:
		.long   func_13b04
		.long   func_13b0e
		.long   func_13b17
		.long   func_13b22


/*----------------------------------------------------------------*/
func_138a8:
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %edx
		push   %esi
		push   %edi
		push   %ebp
		sub    $0x48,%esp
		mov    $0xf,%ecx
		mov    %esp,%edi
		mov    $data_122f1,%esi
		rep movsl %ds:(%esi),%es:(%edi)
		mov    $0x1,%cl
		xor    %esi,%esi
	jump_138c3:
		movswl %si,%edx
		mov    %edx,%eax
		shl    $0x4,%eax
		sub    %edx,%eax
		lea    (%eax,%eax,1),%edx
		mov    %esp,%eax
		add    %edx,%eax
		mov    $data_200a3,%edx
		call   w_dos_fopen
		test   %eax,%eax
		jne    jump_138e4
		xor    %cl,%cl
	jump_138e4:
		inc    %esi
		call   w_dos_fclose
		cmp    $0x2,%si
		jl     jump_138c3
		call   func_137b6
		mov    $0x64,%ebp
	jump_138fa:
#if 1
    /* draw main menu */
    push   %eax
    call   w_game_update
    pop    %eax
#endif
		lea    0x3c(%esp),%esi
		mov    $data_225fc,%edi
		call   func_14300
		lea    0x3c(%esp),%esi
		movsl  %ds:(%esi),%es:(%edi)
		movsl  %ds:(%esi),%es:(%edi)
		movsl  %ds:(%esi),%es:(%edi)
		mov    data_22600,%edx
		cmp    %edx,%ebp
		jge    jump_1395d
		cmp    $0xcc,%edx
		jge    jump_1395d
		mov    data_22604,%esi
		cmp    $0x49,%esi
		jle    jump_1395d
		cmp    $0x5a,%esi
		jge    jump_1395d
		mov    $0x1,%edi
		mov    data_225fc,%eax
		mov    %edi,data_2094d
		cmp    %edi,%eax
		jne    jump_13a74
		call   func_14585
		call   func_13759
	jump_13953:
		call   func_137b6
		jmp    jump_13b58
	jump_1395d:
		mov    data_22600,%eax
		cmp    %eax,%ebp
		jge    jump_139a3
		cmp    $0xcc,%eax
		jge    jump_139a3
		mov    data_22604,%ebx
		cmp    $0x5d,%ebx
		jle    jump_139a3
		cmp    $0x6e,%ebx
		jge    jump_139a3
		mov    $0x2,%ebx
		mov    data_225fc,%esi
		mov    %ebx,data_2094d
		cmp    $0x1,%esi
		jne    jump_13a74
		call   func_14585
		call   func_13038
		jmp    jump_13953
	jump_139a3:
		mov    data_22600,%edi
		cmp    %edi,%ebp
		jge    jump_13a23
		cmp    $0xcc,%edi
		jge    jump_13a23
		mov    data_22604,%edx
		cmp    $0x71,%edx
		jle    jump_13a23
		cmp    $0x82,%edx
		jge    jump_13a23
		cmp    $0x1,%cl
		jne    jump_13a23
		mov    $0x3,%eax
		mov    data_225fc,%edx
		mov    %eax,data_2094d
		cmp    $0x1,%edx
		jne    jump_13a74
		call   func_14585
		mov    $data_201e9,%eax
		mov    $data_20105,%edx
		call   w_dos_fopen
		call   w_dos_fclose
		mov    $data_2011a,%eax
		mov    $data_20105,%edx
		call   w_dos_fopen
		call   w_dos_fclose
		mov    $0x1,%eax
	jump_13a1c:
		call   func_12358
		jmp    jump_13a74
	jump_13a23:
		mov    data_22600,%esi
		cmp    %esi,%ebp
		jge    jump_13a6c
		cmp    $0xcc,%esi
		jge    jump_13a6c
		mov    data_22604,%eax
		cmp    $0x85,%eax
		jle    jump_13a6c
		cmp    $0x96,%eax
		jge    jump_13a6c
		mov    $0x4,%esi
		mov    data_225fc,%edi
		mov    %esi,data_2094d
		cmp    $0x1,%edi
		jne    jump_13a74
		mov    $data_2011a,%eax
		call   w_dos_unlink
		xor    %eax,%eax
		jmp    jump_13a1c
	jump_13a6c:
		xor    %ebx,%ebx
		mov    %ebx,data_2094d
	jump_13a74:
		mov    data_2094d,%eax
		cmp    data_20951,%eax
		je     jump_138fa
		mov    $0x4,%eax
		mov    $0x100,%edx
		mov    $0xff,%ebx
		call   func_14f3f
		mov    data_2094d,%eax
		dec    %eax
		cmp    $0x3,%eax
		ja     jump_13add
		jmp    *vtable_13888(,%eax,4)


/*----------------------------------------------------------------*/
func_13aac:
/*----------------------------------------------------------------*/
		push   $data_201a8
		push   $0x49
	jump_13ab3:
		push   %ebp
		jmp    jump_13ad5


/*----------------------------------------------------------------*/
func_13ab6:
/*----------------------------------------------------------------*/
		push   $data_201b6
		push   $0x5d
		jmp    jump_13ab3


/*----------------------------------------------------------------*/
func_13abf:
/*----------------------------------------------------------------*/
		push   $data_201c2
		push   $0x71
		push   $0x5a
		jmp    jump_13ad5


/*----------------------------------------------------------------*/
func_13aca:
/*----------------------------------------------------------------*/
		push   $data_201d3
		push   $0x85
		push   %ebp
	jump_13ad5:
		call   func_15421
		add    $0xc,%esp
	jump_13add:
		mov    $0x4,%eax
		mov    $0x1000,%edx
		mov    $0xff,%ebx
		call   func_14f3f
		mov    data_20951,%eax
		dec    %eax
		cmp    $0x3,%eax
		ja     jump_13b35
		jmp    *vtable_13898(,%eax,4)


/*----------------------------------------------------------------*/
func_13b04:
/*----------------------------------------------------------------*/
		push   $data_201a8
		push   $0x49
	jump_13b0b:
		push   %ebp
		jmp    jump_13b2d


/*----------------------------------------------------------------*/
func_13b0e:
/*----------------------------------------------------------------*/
		push   $data_201b6
		push   $0x5d
		jmp    jump_13b0b


/*----------------------------------------------------------------*/
func_13b17:
/*----------------------------------------------------------------*/
		push   $data_201c2
		push   $0x71
		push   $0x5a
		jmp    jump_13b2d


/*----------------------------------------------------------------*/
func_13b22:
/*----------------------------------------------------------------*/
		push   $data_201d3
		push   $0x85
		push   %ebp
	jump_13b2d:
		call   func_15421
		add    $0xc,%esp
	jump_13b35:
		call   func_14585
		mov    data_3e954,%eax
		call   func_15f6e
		call   func_14543
		mov    data_2094d,%eax
		mov    %eax,data_20951
		jmp    jump_138fa
	jump_13b58:
		add    $0x48,%esp
		jmp    jump_13752


/*----------------------------------------------------------------*/
func_13b60:
/*----------------------------------------------------------------*/
		push   %edx
		mov    $data_201f9,%eax
		mov    $data_200a3,%edx
		call   w_dos_fopen
		mov    %eax,%edx
		test   %eax,%eax
		je     jump_13b98
		mov    $data_201f9,%eax
		call   w_dos_unlink
		mov    $data_2011a,%eax
		call   w_dos_unlink
		mov    %edx,%eax
		call   w_dos_fclose
		mov    $0x4,%eax
		pop    %edx
		ret
	jump_13b98:
		mov    $data_2020a,%eax
		mov    $data_200a3,%edx
		call   w_dos_fopen
		mov    %eax,%edx
		test   %eax,%eax
		je     jump_13bcf
		mov    $data_2020a,%eax
		call   w_dos_unlink
		mov    $data_2011a,%eax
		call   w_dos_unlink
		mov    %edx,%eax
		call   w_dos_fclose
		mov    $0x5,%eax
		pop    %edx
		ret
	jump_13bcf:
		mov    $data_2021b,%eax
		mov    $data_200a3,%edx
		call   w_dos_fopen
		mov    %eax,%edx
		test   %eax,%eax
		je     jump_13c06
		mov    $data_2021b,%eax
		call   w_dos_unlink
		mov    $data_2011a,%eax
		call   w_dos_unlink
		mov    %edx,%eax
		call   w_dos_fclose
		mov    $0x6,%eax
		pop    %edx
		ret
	jump_13c06:
		mov    $data_2022c,%eax
		mov    $data_200a3,%edx
		call   w_dos_fopen
		mov    %eax,%edx
		test   %eax,%eax
		je     jump_13c3d
		mov    $data_2022c,%eax
		call   w_dos_unlink
		mov    $data_2011a,%eax
		call   w_dos_unlink
		mov    %edx,%eax
		call   w_dos_fclose
		mov    $0x7,%eax
		pop    %edx
		ret
	jump_13c3d:
		mov    $data_2023d,%eax
		mov    $data_200a3,%edx
		call   w_dos_fopen
		mov    %eax,%edx
		test   %eax,%eax
		je     jump_13c74
		mov    $data_2023d,%eax
		call   w_dos_unlink
		mov    $data_2011a,%eax
		call   w_dos_unlink
		mov    %edx,%eax
		call   w_dos_fclose
		mov    $0x8,%eax
		pop    %edx
		ret
	jump_13c74:
		mov    $data_2024e,%eax
		mov    $data_200a3,%edx
		call   w_dos_fopen
		mov    %eax,%edx
		test   %eax,%eax
		je     jump_13ca1
		mov    $data_2024e,%eax
		call   w_dos_unlink
		mov    %edx,%eax
		call   w_dos_fclose
		mov    $0x3,%eax
		pop    %edx
		ret
	jump_13ca1:
		mov    $data_2025e,%eax
		mov    $data_200a3,%edx
		call   w_dos_fopen
		mov    %eax,%edx
		test   %eax,%eax
		je     jump_13cd8
		mov    $data_2025e,%eax
		call   w_dos_unlink
		mov    $data_2011a,%eax
		call   w_dos_unlink
		mov    %edx,%eax
		call   w_dos_fclose
		xor    %eax,%eax
		call   func_12358
	jump_13cd8:
		xor    %eax,%eax
		pop    %edx
		ret


/*----------------------------------------------------------------*/
GLOBAL (ttl)	/* 0x13cdc */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %edx
		push   %esi
		push   %edi
		push   %ebp
		sub    $0x28,%esp
#if 0
		call   func_15d14
		call   func_15d1f
#endif
		mov    $data_2027b,%eax
		mov    $data_2026e,%edx
		mov    $0xff,%ebx
		call   func_14e41
		mov    $0x4,%eax
		mov    $0x1000,%edx
		call   func_14f3f
#if 1
    push   %eax
    call   w_game_cfg_setup
    pop    %eax
#else
		call   func_1239e
#endif
		call   func_13b60
		mov    game_cfg_soundblaster_adr,%dx
		mov    %ax,data_22618
		test   %dx,%dx
		setne  %al
		mov    data_22618,%bx
		movzbl %al,%ebp
		test   %bx,%bx
		jne    jump_13e23
		mov    $0x493e00,%eax
		call   w_dos_malloc
		mov    %eax,%ebx
		test   %eax,%eax
		jne    jump_13dac
		mov    $data_20286,%eax
#if 1
    mov    EXTERN(video_buffer),%edx
#else
		mov    $0xa0000,%edx
#endif
		call   func_16101
		xor    %eax,%eax
		call   func_1621e
		push   $data_2028f
		push   $0x50
		push   $0x14
		call   func_15421
		add    $0xc,%esp
		push   $data_202b1
		push   $0x64
		push   $0x14
		call   func_15421
		add    $0xc,%esp
		push   $data_202d4
		push   $0x78
		push   $0x14
		call   func_15421
		add    $0xc,%esp
		call   w_dos_getch
		call   func_15d26
		xor    %eax,%eax
		call   w_dos_exit
	jump_13dac:
		mov    %ebx,%eax
		mov    $0xb,%edx
		call   w_dos_free
		call   cdrom_setup_audio_info
		mov    $0x13,%eax
		mov    $0x3b71,%ebx
#if 1
    jmp   jump_13e1e
#else
		call   func_18649
		test   %eax,%eax
		jne    jump_13e1e
#endif
		mov    $data_20286,%eax
#if 1
    mov    EXTERN(video_buffer),%edx
#else
		mov    $0xa0000,%edx
#endif
		call   func_16101
		xor    %eax,%eax
		call   func_1621e
		push   $data_202f9
		push   $0x50
		push   $0x32
		call   func_15421
		add    $0xc,%esp
		push   $data_20315
		push   $0x64
		push   $0x32
		call   func_15421
		add    $0xc,%esp
		call   w_dos_getch
		call   func_175b7
		call   func_15d26
		xor    %eax,%eax
		call   w_dos_exit
	jump_13e1e:
		call   func_175b7
	jump_13e23:
#if 1
    push   %eax
    call   w_game_install_keyboard_isr
    pop    %eax
#endif
		mov    data_22618,%cx
		cmp    $0x3,%cx
		je     jump_13e39
		test   %cx,%cx
		jne    jump_13fd3
	jump_13e39:
		mov    game_cfg_soundblaster_irq,%eax
		mov    game_cfg_soundblaster_adr,%ecx
		mov    game_cfg_sound,%ebx
		mov    %ebp,%edx
		sar    $0x10,%eax
		sar    $0x10,%ecx
		push   %eax
		sar    $0x10,%ebx
		mov    $0x55f0,%eax /* 0x55f0 == 22000 */
		call   func_1a55f /* setup soundblaster */
		cmpw   $0x3,data_22618
		je     jump_13f01
		call   cdrom_setup_audio_info

		lea    0x24(%esp),%eax /* cdrom starting letter */
		lea    0x20(%esp),%edx /* number of cdrom */
		mov    %esp,%edi
		mov    $data_20331,%esi
		call   cdrom_get_cdrom_starting_letter_and_number

		call   func_175b7
		mov    0x24(%esp),%al
		mov    $0x3a,%ah
		xor    %dl,%dl
		add    $0x41,%al
		mov    %ah,0x1(%esp)
		mov    %dl,0x2(%esp)
		mov    %al,(%esp)
		push   %edi
		sub    %ecx,%ecx
		dec    %ecx
		mov    $0x0,%al
		repnz scas %es:(%edi),%al
		dec    %edi
	jump_13eaa:
		mov    (%esi),%al
		mov    %al,(%edi)
		cmp    $0x0,%al
		je     jump_13ec6
		mov    0x1(%esi),%al
		add    $0x2,%esi
		mov    %al,0x1(%edi)
		add    $0x2,%edi
		cmp    $0x0,%al
		jne    jump_13eaa
	jump_13ec6:
		pop    %edi
		push   $0x200
		push   $data_20345
		call   w_dos_open
		cwtl
		add    $0x8,%esp
		cmp    $0xffffffff,%eax
		jne    jump_13ee8
		call   w_dos_close
		mov    %esp,%eax
		jmp    jump_13ef2
	jump_13ee8:
		call   w_dos_close
		mov    $data_20345,%eax
	jump_13ef2:
		mov    $data_2034f,%edx
		mov    $0xa,%ebx
#if 1
    /* set FPS for hicom.fli play */
    push   %eax
    call   w_game_set_fps_hicom
    pop    %eax
#endif
		call   func_1948b
#if 1
    /* stop audio */
    push   %eax
    call   w_audio_sound_stop
    pop    %eax
#endif
	jump_13f01:
		cmpw   $0x0,data_22618
		jne    jump_13f14
		movw   $0x3,data_22618
	jump_13f14:
		call   cdrom_setup_audio_info
		lea    0x24(%esp),%eax
		lea    0x20(%esp),%edx
		mov    %esp,%edi
		mov    $data_20359,%esi
		call   cdrom_get_cdrom_starting_letter_and_number
		call   func_175b7
		xor    %bl,%bl
		mov    0x24(%esp),%al
		mov    $0x3a,%dh
		mov    %bl,0x2(%esp)
		add    $0x41,%al
		mov    %dh,0x1(%esp)
		mov    %al,(%esp)
		push   %edi
		sub    %ecx,%ecx
		dec    %ecx
		mov    $0x0,%al
		repnz scas %es:(%edi),%al
		dec    %edi
	jump_13f50:
		mov    (%esi),%al
		mov    %al,(%edi)
		cmp    $0x0,%al
		je     jump_13f6c
		mov    0x1(%esi),%al
		add    $0x2,%esi
		mov    %al,0x1(%edi)
		add    $0x2,%edi
		cmp    $0x0,%al
		jne    jump_13f50
	jump_13f6c:
		pop    %edi
		push   $0x200
		push   $data_2036f
		call   w_dos_open
		cwtl
		add    $0x8,%esp
		cmp    $0xffffffff,%eax
		jne    jump_13f8e
		call   w_dos_close
		mov    %esp,%eax
		jmp    jump_13f98
	jump_13f8e:
		call   w_dos_close
		mov    $data_2036f,%eax
	jump_13f98:
		mov    $data_2037b,%edx
		mov    $0xa,%ebx
#if 1
    push   %eax
    call   w_game_set_fps_softmax
    pop    %eax
#endif
		call   func_1948b
#if 1
    push   %eax
    call   w_audio_sound_stop
    call   w_conf_get_fast
    test   %eax,%eax
    je     jump_fps_slow
    call   w_game_set_fps_high
    jmp    jump_end_of_post_softmax_fli
  jump_fps_slow:
    call   w_game_set_fps_low
  jump_end_of_post_softmax_fli:
    pop    %eax
#endif
		call   func_1a875
		mov    game_cfg_soundblaster_irq,%eax
		mov    game_cfg_soundblaster_adr,%ecx
		mov    game_cfg_sound,%ebx
		mov    %ebp,%edx
		sar    $0x10,%eax
		sar    $0x10,%ecx
		push   %eax
		sar    $0x10,%ebx
		mov    $0x55f0,%eax
		call   func_1a55f
	jump_13fd3:
		call   func_15d1f
		call   func_162f7
		mov    $0x1,%eax
		mov    $0x266,%edx
		call   func_1621e
		call   func_141b4
		mov    $0x10,%eax
		call   func_145f5
		mov    $0x2,%eax
		mov    $0xc2,%edx
		call   func_14600
		cmpw   $0x3,data_22618
		mov    $data_2011c,%ebx
		mov    $data_200d5,%ecx
		mov    $data_200c8,%edi
	jump_14021:
		mov    data_22618,%si
		cmp    $0x3,%si
		jne    jump_14035
		call   func_138a8
		jmp    jump_14021
	jump_14035:
		cmp    $0x4,%si
		jne    jump_14062
		call   func_14585
		mov    $data_2004f,%eax
		mov    %edi,%edx
		call   func_123e3
		mov    $data_200ed,%eax
		mov    %ecx,%edx
		call   func_123e3
		mov    $data_201f9,%eax
		jmp    jump_140f7
	jump_14062:
		cmp    $0x5,%si
		jne    jump_1408a
		mov    $data_2006f,%eax
		mov    %edi,%edx
		call   func_123e3
		mov    $data_20128,%eax
		mov    %ecx,%edx
		call   func_123e3
		mov    $data_2020a,%eax
		jmp    jump_140f7
	jump_1408a:
		cmp    $0x6,%si
		jne    jump_140af
		mov    $data_2007c,%eax
		mov    %edi,%edx
		call   func_123e3
		mov    $data_20140,%eax
		mov    %ecx,%edx
		call   func_123e3
		mov    $data_2021b,%eax
		jmp    jump_140f7
	jump_140af:
		cmp    $0x7,%si
		jne    jump_140d4
		mov    $data_20089,%eax
		mov    %edi,%edx
		call   func_123e3
		mov    $data_20158,%eax
		mov    %ecx,%edx
		call   func_123e3
		mov    $data_2022c,%eax
		jmp    jump_140f7
	jump_140d4:
		cmp    $0x8,%si
		jne    jump_14103
		mov    $data_20096,%eax
		mov    %edi,%edx
		call   func_123e3
		mov    $data_20170,%eax
		mov    %ecx,%edx
		call   func_123e3
		mov    $data_2023d,%eax
	jump_140f7:
		call   w_dos_unlink
		mov    %ebx,%eax
		call   w_dos_unlink
	jump_14103:
		mov    $data_20108,%eax
		mov    $data_20105,%edx
		call   w_dos_fopen
		call   w_dos_fclose
		mov    $data_2011a,%eax
		mov    $data_20105,%edx
		call   w_dos_fopen
		call   w_dos_fclose
		mov    $0x1,%eax
		call   func_12358
		jmp    jump_14021


/*----------------------------------------------------------------*/
func_1413a:
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %edx
		mov    $0x10,%ecx
		mov    $data_20adf,%ebx
		mov    data_3e954,%edx
		mov    data_20963,%eax
		push   %edx
		sar    $0x10,%eax
		mov    data_20965,%edx
		push   $0x10
		sar    $0x10,%edx
		call   func_15efb
#if 1
    mov    EXTERN(video_buffer),%ecx
#else
		mov    data_20cd7,%ecx
#endif
	jump_1416c:
		mov    data_22790,%ebx
		mov    data_20965,%edx
		mov    data_20963,%eax
		sar    $0x10,%edx
		sar    $0x10,%eax
#if 1
    call   w_game_copy_ff
#else
		call   func_15dc0
#endif
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_1418c:
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %edx
		mov    $data_20adf,%ebx
#if 1
    mov    EXTERN(video_buffer),%ecx
#else
		mov    data_20cd7,%ecx
#endif
		mov    data_20961,%edx
		mov    data_2095f,%eax
		sar    $0x10,%edx
		sar    $0x10,%eax
#if 1
    call   w_game_copy
#else
		call   func_15e93
#endif
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_141b4:
/*----------------------------------------------------------------*/
		push   $0x5c
		call   func___CHK
		push   %ebx
		push   %ecx
		push   %edx
		push   %esi
		sub    $0x44,%esp
		lea    0x38(%esp),%eax
		lea    0x1c(%esp),%ebx
		call   func_segread_
		xor    %edx,%edx
		mov    $0x33,%eax
		mov    %dx,(%esp)
		mov    %esp,%edx
#if 0
		call   w_dos_int386 /* mouse reset driver and read status */
#endif
		xor    %eax,%eax
		mov    0x1c(%esp),%ax
		test   %eax,%eax
#if 1
    jmp    jump_14203
#else
		jne    jump_14203
#endif
		push   $data_20388
		call   w_printf
		add    $0x4,%esp
		xor    %eax,%eax
		call   w_dos_exit
	jump_14203:
		mov    $0xc,%ebx
		mov    $0x7f,%ecx /* call mask */
		mov    $mouse_isr,%edx /* ISR */
		mov    $mouse_isr,%eax
		mov    %bx,(%esp)
		mov    %cx,0x8(%esp)
		mov    %edx,0xc(%esp)
		lea    0x38(%esp),%ecx
		mov    %cs,%edx
		lea    0x1c(%esp),%ebx
		mov    $0x33,%eax
		mov    %dx,0x38(%esp)
		mov    %esp,%edx
#if 0
		call   w_dos_int386x /* define mouse ISR */
#endif
		xor    %edx,%edx
		mov    data_227aa,%dl
		mov    %edx,%eax
		shl    $0x2,%eax
		mov    $data_2096b,%esi
		sub    %edx,%eax
		mov    $0x96,%ebx
		mov    $0x64,%ecx
		mov    %ebx,data_22620(,%eax,4)
		mov    %esi,data_22790
		mov    %ecx,data_22624(,%eax,4)
#if 1
    push   %eax
    call   w_game_install_mouse_isr
    pop    %eax
#endif
		add    $0x44,%esp
		pop    %esi
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_14279:
/*----------------------------------------------------------------*/
		push   $0xc
		call   func___CHK
		push   %ebx
		push   %edx
		xor    %edx,%edx
		mov    data_227ab,%dl
		inc    %edx
		mov    $0x1e,%ebx
		mov    %edx,%eax
		sar    $0x1f,%edx
		idiv   %ebx
		mov    data_227aa,%ah
		mov    %dl,data_227ab
		cmp    %ah,%dl
		je     jump_142e3
		xor    %edx,%edx
		mov    data_227ab,%dl
		mov    %edx,%eax
		shl    $0x2,%eax
		sub    %edx,%eax
		mov    %eax,%edx
		shl    $0x2,%edx
		mov    0xc(%esp),%eax
		mov    %eax,data_2261c(%edx)
		mov    0x10(%esp),%eax
		mov    %eax,data_22620(%edx)
		mov    0x14(%esp),%eax
		mov    %eax,data_22624(%edx)
		mov    $0x1,%al
		pop    %edx
		pop    %ebx
		ret    $0xc
	jump_142e3:
		xor    %edx,%edx
		mov    data_227ab,%dl
		dec    %edx
		mov    %edx,%eax
		sar    $0x1f,%edx
		idiv   %ebx
		mov    %dl,data_227ab
		xor    %al,%al
		pop    %edx
		pop    %ebx
		ret    $0xc


/*----------------------------------------------------------------*/
func_14300:
/*----------------------------------------------------------------*/
		push   $0x20
		call   func___CHK
		push   %ebx
		push   %ecx
		push   %edx
		push   %edi
		sub    $0xc,%esp
		mov    %esi,%ebx
		mov    data_227ab,%al
		mov    data_227aa,%ah
		cmp    %ah,%al
		je     jump_14354
		xor    %edx,%edx
		mov    %ah,%dl
		inc    %edx
		mov    $0x1e,%ecx
		mov    %edx,%eax
		sar    $0x1f,%edx
		idiv   %ecx
		mov    %dl,data_227aa
		xor    %edx,%edx
		mov    data_227aa,%dl
		mov    %edx,%eax
		shl    $0x2,%eax
		sub    %edx,%eax
		mov    data_2261c(,%eax,4),%eax
		mov    %eax,(%esp)
		jmp    jump_14359
	jump_14354:
		xor    %edx,%edx
		mov    %edx,(%esp)
	jump_14359:
		xor    %edx,%edx
		mov    data_227aa,%dl
		mov    %edx,%eax
		shl    $0x2,%eax
		sub    %edx,%eax
		mov    %eax,%edx
		shl    $0x2,%edx
		mov    data_22620(%edx),%eax
		mov    %esp,%esi
		mov    %eax,0x4(%esp)
		mov    data_22624(%edx),%eax
		mov    %ebx,%edi
		mov    %eax,0x8(%esp)
		call   func_145b2
		mov    %eax,(%esp)
		movsl  %ds:(%esi),%es:(%edi)
		movsl  %ds:(%esi),%es:(%edi)
		movsl  %ds:(%esi),%es:(%edi)
		mov    %ebx,%eax
		add    $0xc,%esp
		pop    %edi
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret


/**
 * ax: condition mask
 * bx: button state
 * cx: cursor column
 * dx: cursor row
 * si: horizontal mouse count since last call
 * di: vertical mouse count since last call
 */
/*----------------------------------------------------------------*/
GLOBAL (mouse_isr) /* 143aa */
/*----------------------------------------------------------------*/
		push   %ds
#if 0
		call   func___GETDS
#endif
		push   %esi
		push   %edi
		push   %ebp
		push   %eax
		cmpb   $0x0,data_20cdb
		je     jump_143c7
		mov    data_227aa,%al
		mov    %al,data_227ab
	jump_143c7:
		movswl %cx,%eax
		sar    %eax
		mov    %eax,data_22788
		movswl %dx,%eax
		mov    %eax,data_2278c
		testb  $0x1,(%esp)
		je     jump_14414
		test   %bx,%bx
		jle    jump_143f1
		movswl %bx,%eax
		add    $0x5,%eax
		mov    %eax,data_22784
		jmp    jump_143fb
	jump_143f1:
		movl   $0x1,data_22784
	jump_143fb:
		mov    data_2278c,%edi
		push   %edi
		mov    data_22788,%ebp
		push   %ebp
		mov    data_22784,%eax
		push   %eax
		call   func_14279
	jump_14414:
		mov    (%esp),%ah
		test   $0x2,%ah
		jne    jump_14421
		test   $0x8,%ah
		je     jump_14449
	jump_14421:
		cmp    $0x2,%bx
		jle    jump_1442c
		mov    $0xa,%ebx
	jump_1442c:
		mov    data_2278c,%esi
		mov    data_22788,%edi
		push   %esi
		movswl %bx,%eax
		push   %edi
		inc    %eax
		push   %eax
		mov    %eax,data_22784
		call   func_14279
	jump_14449:
		mov    (%esp),%eax
		xor    %ah,%ah
		and    $0xa,%al
		cmp    $0xa,%ax
		jne    jump_14474
		mov    data_2278c,%esi
		push   %esi
		mov    data_22788,%edi
		push   %edi
		mov    $0xa,%eax
		push   %eax
		mov    %eax,data_22784
		call   func_14279
	jump_14474:
		mov    (%esp),%ah
		test   $0x4,%ah
		jne    jump_14481
		test   $0x10,%ah
		je     jump_144ae
	jump_14481:
		testb  $0x4,(%esp)
		sete   %al
		and    $0xff,%eax
		add    $0x8,%eax
		mov    %eax,data_22784
		mov    data_2278c,%eax
		push   %eax
		mov    data_22788,%esi
		push   %esi
		mov    data_22784,%edi
		push   %edi
		call   func_14279
	jump_144ae:
		mov    data_20965,%ax
		mov    %ax,data_20961
		mov    data_20967,%ax
		mov    %ax,data_20963
		mov    (%esp),%eax
		mov    %bx,data_2095f
		mov    %ax,data_2095d
		movswl %cx,%eax
		mov    %dx,data_20967
		sar    %eax
		mov    data_20969,%dx
		mov    %ax,data_20965
		test   %dx,%dx
		je     jump_14519
		test   %bx,%bx
		jne    jump_14505
		movl   $data_2096b,data_22790
		jmp    jump_1450f
	jump_14505:
		movl   $data_20a33,data_22790
	jump_1450f:
		call   func_1418c
		call   func_1413a
	jump_14519:
		add    $0x4,%esp
		pop    %ebp
		pop    %edi
		pop    %esi
		pop    %ds
#if 1
    ret
#else
		lret
#endif


/*----------------------------------------------------------------*/
func_14521:
/*----------------------------------------------------------------*/
		push   %ebx
		push   %edx
		sub    $0x38,%esp
		mov    %esp,%ebx
		xor    %edx,%edx
		mov    $0x33,%eax
		mov    %dx,0x1c(%esp)
		lea    0x1c(%esp),%edx
#if 0
		call   w_dos_int386
#endif
	jump_1453d:
		add    $0x38,%esp
		pop    %edx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_14543:
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %edx
		mov    $0x1,%edx
		mov    $0x10,%ecx
		mov    $data_20adf,%ebx
		mov    %dx,data_20969
		mov    data_3e954,%edx
		mov    data_20963,%eax
		push   %edx
		sar    $0x10,%eax
		mov    data_20965,%edx
		push   $0x10
		sar    $0x10,%edx
		call   func_15efb
#if 1
    mov    EXTERN(video_buffer),%ecx
#else
		mov    $0xa0000,%ecx
#endif
		jmp    jump_1416c


/*----------------------------------------------------------------*/
func_14585:
/*----------------------------------------------------------------*/
		push   %ebx
		cmpw   $0x0,data_20969
		je     jump_1459e
		xor    %ebx,%ebx
		mov    %bx,data_20969
		call   func_1418c
	jump_1459e:
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_145b2:
/*----------------------------------------------------------------*/
		push   %ebx
		push   %edx
		sub    $0x38,%esp
		mov    $0x3,%edx
		lea    0x1c(%esp),%ebx
		mov    $0x33,%eax
		mov    %dx,(%esp)
		mov    %esp,%edx
#if 1
    call   w_mouse_get_state
    movw   EXTERN(mouse_state_button),%bx
    movw   %bx,0x20(%esp)
    movw   EXTERN(mouse_state_x),%bx
    movw   %bx,0x24(%esp)
    movw   EXTERN(mouse_state_y),%bx
    movw   %bx,0x28(%esp)
#else
		call   w_dos_int386
#endif
		mov    0x20(%esp),%ebx
		test   %bx,%bx
		je     jump_145e3
		xor    %eax,%eax
		mov    %bx,%ax
		jmp    jump_1453d
	jump_145e3:
		xor    %eax,%eax
		jmp    jump_1453d


/*----------------------------------------------------------------*/
func_145f5:
/*----------------------------------------------------------------*/
		push   %ebx
		sub    $0x38,%esp
		mov    $0x7,%ebx
		jmp    jump_14609


/*----------------------------------------------------------------*/
func_14600:
/*----------------------------------------------------------------*/
		push   %ebx
		sub    $0x38,%esp
		mov    $0x8,%ebx
	jump_14609:
		mov    %ax,0x24(%esp)
		mov    %dx,0x28(%esp)
		lea    0x1c(%esp),%edx
		mov    $0x33,%eax
		mov    %bx,0x1c(%esp)
		mov    %esp,%ebx
#if 0
		call   w_dos_int386
#endif
		add    $0x38,%esp
		pop    %ebx
		ret
.data
data_14c33:
		.ascii  "\x00\x00\x01\x02\x03\x04\x05\x06"
		.ascii  "\x07\x08\x09\x0a\x0b\x0c\x0d\x0e"
		.ascii  "\x0f\x10\x11\x12\x13"
		.fill   0xb
data_14c53:
		.ascii  "\x00\x00\x00\x01\x02\x03\x04\x05"
		.ascii  "\x00\x00\x06\x07\x08\x09\x0a\x0b"
		.ascii  "\x00\x00\x0c\x0d\x0e\x0f\x10\x11"
		.ascii  "\x00\x00\x12\x13\x14\x15\x00\x00"
data_14c73:
		.ascii  "\x00\x00\x01\x02\x03\x04\x05\x06"
		.ascii  "\x07\x08\x09\x0a\x0b\x0c\x0d\x0e"
		.ascii  "\x0f\x10\x00\x11\x12\x13\x14\x15"
		.ascii  "\x16\x17\x18\x19\x1a\x1b\x00\x00"
data_14c93:
		.ascii  "\x00\x00\x01\x01\x01\x01\x01\x01"
		.ascii  "\x01\x01\x01\x01\x01\x01\x01\x01"
		.ascii  "\x00\x01\x01\x01"
data_14ca7:
		.ascii  "\x00\x02\x03\x03\x03\x03\x03\x03"
		.ascii  "\x03\x03\x03\x03\x03\x03\x03\x03"
		.ascii  "\x02\x03\x03\x03"
data_14cbb:
		.ascii  "\x00\x00\x02\x00\x02\x01\x02\x01"
		.ascii  "\x02\x03\x00\x02\x01\x03\x03\x01"
		.ascii  "\x02\x01\x03\x03\x01\x01"
data_14cd1:
		.fill   0x9
		.ascii  "\x01\x03\x03\x03\x01\x02\x04\x04"
		.ascii  "\x04\x02\x01\x03\x00"
data_14ce7:
		.ascii  "\x00\x05\x05\x05\x05\x05\x05\x05"
		.ascii  "\x05\x06\x07\x07\x07\x06\x06\x07"
		.ascii  "\x07\x07\x06\x06\x07\x05"
data_14cfd:
		.ascii  "\x08\x00\x7e\x00\x10\x00\x0d\x00"
		.ascii  "\x05\x00\x07\x00\x14\x00\x71\x00"
		.ascii  "\x69\x00\x6b\x00\x67\x00\x81\x00"
		.ascii  "\x7f\x00\x78\x00\x68\x00\x6e\x00"
		.ascii  "\x09\x00\x02\x00\x04\x00\x0b\x00"
		.ascii  "\x6f\x00\x13\x00\x0e\x00\x12\x00"
		.ascii  "\x77\x00\x11\x00"
data_14d31:
		.ascii  "\x08\x00\x7e\x00\x10\x00\x0d\x00"
		.ascii  "\x06\x00\x07\x00\x14\x00\x71\x00"
		.ascii  "\x69\x00\x6b\x00\x67\x00\x81\x00"
		.ascii  "\x7f\x00\x78\x00\x6a\x00\x70\x00"
		.ascii  "\x0a\x00\x03\x00\x04\x00\x0c\x00"
		.ascii  "\x6f\x00\x13\x00\x0f\x00\x12\x00"
		.ascii  "\x77\x00\x11\x00"
data_14d65:
		.ascii  "\x00\x00\x01\x00\x02\x00\x03\x00"
		.ascii  "\x05\x00\x08\x00\x01\x00\x09\x00"
		.ascii  "\x11\x00\x13\x00\x01\x00\x15\x00"
		.ascii  "\x16\x00\x17\x00\x18\x00\x01\x00"
		.ascii  "\x19\x00\x1a\x00\x1b\x00\x1c\x00"
		.ascii  "\x1d\x00"
data_14d8f:
		.ascii  "\x00\x00\x01\x00\x02\x00\x03\x00"
		.ascii  "\x64\x00\x04\x00\x65\x00\x66\x00"
		.ascii  "\x05\x00\x07\x00\x67\x00\x68\x00"
		.ascii  "\x69\x00\x6a\x00\x6b\x00\x6c\x00"
		.ascii  "\x6d\x00\x08\x00\x01\x00\x09\x00"
		.ascii  "\x6e\x00\x0b\x00\x0c\x00\x0d\x00"
		.ascii  "\x0e\x00\x10\x00\x11\x00\x12\x00"
		.ascii  "\x13\x00\x14\x00"
data_14dcb:
		.ascii  "\x02\x00"
data_14dcd:
		.ascii  "\x0b\x00"
data_14dcf:
		.ascii  "\x04\x00\x05\x00\x0e\x00\x06\x00"
		.ascii  "\x05\x00\x14\x00\x07\x00\x09\x00"
		.ascii  "\x02\x00\x0a\x00\x09\x00\x08\x00"
		.ascii  "\x0b\x00\x09\x00\x09\x00\x0c\x00"
		.ascii  "\x09\x00\x0b\x00\x0d\x00\x09\x00"
		.ascii  "\x12\x00\x0e\x00\x09\x00\x13\x00"
		.ascii  "\x0f\x00\x09\x00\x14\x00\x10\x00"
		.ascii  "\x13\x00\x0b\x00\x14\x00"
data_14e0d:
		.ascii  "\x02\x00\x05\x00\x09\x00\x0b\x00"
		.ascii  "\x0e\x00"
data_14e17:
		.ascii  "\x0d\x00"
data_14e19:
		.ascii  "\x03\x00"
data_14e1b:
		.ascii  "\x0e\x00\x0d\x00\x04\x00\x0f\x00"
		.ascii  "\x0d\x00\x1d\x00\x12\x00\x14\x00"
		.ascii  "\x07\x00\x15\x00\x14\x00\x0a\x00"
		.ascii  "\x16\x00\x14\x00\x1d\x00\x17\x00"
		.ascii  "\x1b\x00\x1d\x00\x1c\x00"
.text


/*----------------------------------------------------------------*/
func_14e41:
/*----------------------------------------------------------------*/
		push   %ecx
		push   %edi
		call   func_14e81
		mov    $0xf,%edx
		mov    $0x7,%ecx
		xor    %edi,%edi
		mov    %dx,data_3e924
		mov    %dx,data_3e926
		mov    %cx,data_3e900
		mov    %dx,data_3e902
		mov    %di,data_3e94a
		mov    %di,data_3e94c
		pop    %edi
		pop    %ecx
		ret


/*----------------------------------------------------------------*/
func_14e81:
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %esi
		mov    %edx,%esi
		push   $0x200
		push   %eax
		mov    $0x1400,%ebx
		call   w_dos_open
		add    $0x8,%esp
		movswl %ax,%ecx
		mov    $data_3ac00,%edx
		mov    %ecx,%eax
		call   w_dos_read
		mov    $0xb00,%ebx
		mov    $data_3c000,%edx
		mov    %ecx,%eax
		call   w_dos_read
		mov    $0xe00,%ebx
		mov    $data_3cb00,%edx
		mov    %ecx,%eax
		call   w_dos_read
		mov    %ecx,%eax
		call   w_dos_close
		push   $0x200
		push   %esi
		mov    $0x1000,%ebx
		call   w_dos_open
		add    $0x8,%esp
		movswl %ax,%ecx
		mov    $data_3d900,%edx
		mov    %ecx,%eax
		call   w_dos_read
		mov    %ecx,%eax
		call   w_dos_close
		pop    %esi
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_14efe:
/*----------------------------------------------------------------*/
		push   %ecx
		push   %esi
		push   %edi
		mov    %eax,%edi
		mov    %edx,%ecx
		mov    %ebx,%esi
		xor    %edx,%edx
		jmp    jump_14f1b
	jump_14f0b:
		movswl %dx,%ebx
		lea    (%ecx,%ebx,1),%eax
		mov    (%edi,%ebx,1),%bl
		mov    (%eax),%bh
		or     %bl,%bh
		inc    %edx
		mov    %bh,(%eax)
	jump_14f1b:
		cmp    %si,%dx
		jne    jump_14f0b
		pop    %edi
		pop    %esi
		pop    %ecx
		ret

vtable_14f27:
		.long   func_14f52
		.long   func_14f63
		.long   func_14f73
		.long   func_14f52
		.long   func_14f52
		.long   func_14f52


/*----------------------------------------------------------------*/
func_14f3f:
/*----------------------------------------------------------------*/
		cwtl
		mov    %eax,data_3e914
		cmp    $0x5,%eax
		ja     jump_14f86
		jmp    *vtable_14f27(,%eax,4)


/*----------------------------------------------------------------*/
func_14f52:
/*----------------------------------------------------------------*/
		movswl %dx,%eax
		mov    %eax,data_3e918
		movswl %bx,%eax
	jump_14f5d:
		mov    %eax,data_3e920
		ret


/*----------------------------------------------------------------*/
func_14f63:
/*----------------------------------------------------------------*/
		mov    $0xff,%ebx
		movswl %dx,%eax
		mov    %ebx,data_3e918
		jmp    jump_14f5d


/*----------------------------------------------------------------*/
func_14f73:
/*----------------------------------------------------------------*/
		movswl %dx,%eax
		mov    $0xff,%edx
		mov    %eax,data_3e918
		mov    %edx,data_3e920
	jump_14f86:
		ret

vtable_14f87:
		.long   func_14fd4
		.long   func_14fd4
		.long   func_14fd4
		.long   func_14ff0
		.long   func_15011
		.long   func_150c2


/*----------------------------------------------------------------*/
func_14f9f:
/*----------------------------------------------------------------*/
		push   %ecx
		push   %esi
		push   %edi
		push   %ebp
		sub    $0x1c,%esp
		mov    %ebx,%esi
		mov    data_3e914,%ecx
		cmp    $0x5,%ecx
		ja     jump_15117
		mov    data_3e918,%edi
		mov    data_3e918,%ebx
		and    $0xff,%edi
		sar    $0x8,%ebx
		jmp    *vtable_14f87(,%ecx,4)


/*----------------------------------------------------------------*/
func_14fd4:
/*----------------------------------------------------------------*/
		movswl %dx,%edx
		xor    %ebx,%ebx
		cwtl
		mov    data_3e920,%bl
		xor    %ecx,%ecx
		push   %ebx
		mov    data_3e918,%cl
		mov    %esi,%ebx
		jmp    jump_15112


/*----------------------------------------------------------------*/
func_14ff0:
/*----------------------------------------------------------------*/
		movswl %dx,%edx
		xor    %ebx,%ebx
		cwtl
		mov    data_3e920,%bl
		xor    %ecx,%ecx
		push   %ebx
		mov    data_3e918,%cl
		mov    %esi,%ebx
		call   func_12081
		jmp    jump_15117


/*----------------------------------------------------------------*/
func_15011:
/*----------------------------------------------------------------*/
		xor    %ecx,%ecx
		mov    data_3e920,%cl
		mov    %edi,(%esp)
		push   %ecx
		movzbl 0x4(%esp),%edi
		and    $0xff,%ebx
		movswl %dx,%ebp
		cwtl
		mov    %ebx,0x8(%esp)
		mov    %ebx,%ecx
		mov    %ebp,%edx
		mov    %esi,%ebx
		mov    %eax,0xc(%esp)
		call   func_12009
		push   $0xff
		lea    -0x1(%ebp),%eax
		mov    %edi,%ecx
		mov    %eax,0x10(%esp)
		mov    0xc(%esp),%eax
		mov    %esi,%ebx
		dec    %eax
		mov    0x10(%esp),%edx
		mov    %eax,0x14(%esp)
		call   func_12009
		push   $0xff
		lea    0x1(%ebp),%eax
		mov    %edi,%ecx
		mov    %eax,0x18(%esp)
		mov    0xc(%esp),%eax
		mov    %esi,%ebx
		inc    %eax
		mov    0x18(%esp),%edx
		mov    %eax,0x1c(%esp)
		call   func_12009
		push   $0xff
		mov    0x18(%esp),%edx
		mov    0x14(%esp),%eax
		mov    %edi,%ecx
		mov    %esi,%ebx
		call   func_12009
		push   $0xff
		mov    0x10(%esp),%edx
		mov    0x1c(%esp),%eax
		mov    %edi,%ecx
		mov    %esi,%ebx
		call   func_12009
		push   $0xff
		mov    0x8(%esp),%ecx
		mov    0xc(%esp),%eax
		mov    %esi,%ebx
		mov    %ebp,%edx
		jmp    jump_15112


/*----------------------------------------------------------------*/
func_150c2:
/*----------------------------------------------------------------*/
		mov    %edi,(%esp)
		mov    %ebx,%ecx
		xor    %ebx,%ebx
		movswl %dx,%ebp
		mov    data_3e920,%bl
		movswl %ax,%edi
		push   %ebx
		xor    %ebx,%ebx
		mov    %ebp,%edx
		mov    %cl,%bl
		mov    %edi,%eax
		mov    %ebx,0x8(%esp)
		mov    %ebx,%ecx
		mov    %esi,%ebx
		call   func_12009
		push   $0xff
		lea    0x1(%ebp),%edx
		lea    0x1(%edi),%eax
		xor    %ecx,%ecx
		mov    %esi,%ebx
		mov    0x4(%esp),%cl
		call   func_12009
		push   $0xff
		mov    0x8(%esp),%ecx
		mov    %esi,%ebx
		mov    %ebp,%edx
		mov    %edi,%eax
	jump_15112:
		call   func_12009
	jump_15117:
		add    $0x1c,%esp
		pop    %ebp
		pop    %edi
		pop    %esi
		pop    %ecx
		ret


/*----------------------------------------------------------------*/
func_15134:
/*----------------------------------------------------------------*/
		push   %ecx
		push   %esi
		push   %edi
		push   %ebp
		sub    $0x14,%esp
		push   %eax
		mov    %ebx,%ebp
		mov    %ax,data_3e94a
		mov    %ebx,%edi
		mov    %dx,data_3e94c
		sub    %ecx,%ecx
		dec    %ecx
		xor    %eax,%eax
		repnz scas %es:(%edi),%al
		not    %ecx
		dec    %ecx
		mov    %ecx,0x4(%esp)
		xor    %ecx,%ecx
		jmp    jump_153ec
	jump_15162:
		xor    %eax,%eax
		mov    %cx,%ax
		mov    (%eax,%ebp,1),%al
		mov    %al,0x14(%esp)
		cmp    $0x7f,%al
		jbe    jump_1532b
		mov    $0x20,%ebx
		mov    $data_3e928,%eax
		xor    %edx,%edx
		call   w_dos_memset
		cmpw   $0x130,data_3e94a
		jle    jump_151ba
		cmpw   $0x0,data_20ce4
		je     jump_151ba
		xor    %eax,%eax
		mov    data_3e94c,%dx
		mov    %ax,data_3e94a
		mov    data_20ce2,%ax
		add    %eax,%edx
		mov    %dx,data_3e94c
	jump_151ba:
		inc    %ecx
		xor    %eax,%eax
		mov    %cx,%ax
		mov    (%eax,%ebp,1),%ah
		mov    0x14(%esp),%al
		xor    %edx,%edx
		and    $0x7c,%al
		mov    %al,%dl
		sar    $0x2,%edx
		mov    %dl,%al
		mov    0x14(%esp),%dl
		and    $0x3,%dl
		mov    %edx,%ebx
		xor    %edx,%edx
		and    $0xff,%ebx
		mov    %ah,%dl
		shl    $0x3,%ebx
		sar    $0x5,%edx
		and    $0x1f,%ah
		add    %ebx,%edx
		mov    %ah,0xc(%esp)
		mov    %dl,0x10(%esp)
		xor    %edx,%edx
		and    $0xff,%eax
		mov    0x10(%esp),%dl
		mov    data_14c33(%eax),%al
		mov    data_14c53(%edx),%ah
		xor    %edx,%edx
		mov    0xc(%esp),%dl
		mov    %ah,0x10(%esp)
		mov    data_14c73(%edx),%ah
		xor    %edx,%edx
		mov    0x10(%esp),%dl
		mov    %ah,0xc(%esp)
		movzbw data_14cbb(%edx),%di
		test   %ah,%ah
		jne    jump_1524f
		xor    %ebx,%ebx
		mov    %al,%bl
		mov    data_14cd1(%edx),%dl
		movzbw data_14c93(%ebx),%si
	jump_15247:
		xor    %dh,%dh
		mov    %edx,0x8(%esp)
		jmp    jump_1526c
	jump_1524f:
		test   %al,%al
		je     jump_15267
		xor    %ebx,%ebx
		mov    %al,%bl
		mov    data_14ce7(%edx),%dl
		movzbw data_14ca7(%ebx),%si
		jmp    jump_15247
	jump_15267:
		mov    $0x2,%esi
	jump_1526c:
		test   %al,%al
		je     jump_1529c
		xor    %edx,%edx
		mov    0x8(%esp),%dx
		imul   $0x280,%edx,%edx
		add    $data_3ac00,%edx
		and    $0xff,%eax
		shl    $0x5,%eax
		mov    $0x20,%ebx
		add    %edx,%eax
		mov    $data_3e928,%edx
		call   func_14efe
	jump_1529c:
		mov    0x10(%esp),%bh
		test   %bh,%bh
		je     jump_152cc
		xor    %eax,%eax
		mov    %si,%ax
		imul   $0x2c0,%eax,%eax
		xor    %edx,%edx
		mov    %bh,%dl
		shl    $0x5,%edx
		add    $data_3c000,%eax
		mov    $0x20,%ebx
		add    %edx,%eax
		mov    $data_3e928,%edx
		call   func_14efe
	jump_152cc:
		cmpb   $0x0,0xc(%esp)
		je     jump_152fe
		xor    %edx,%edx
		mov    %di,%dx
		imul   $0x380,%edx,%edx
		xor    %eax,%eax
		mov    0xc(%esp),%al
		shl    $0x5,%eax
		add    $data_3cb00,%edx
		mov    $0x20,%ebx
		add    %edx,%eax
		mov    $data_3e928,%edx
		call   func_14efe
	jump_152fe:
		mov    $data_3e924,%ebx
		mov    data_3e94a,%edx
		mov    data_3e948,%eax
		sar    $0x10,%edx
		sar    $0x10,%eax
		call   func_14f9f
		mov    data_20ce0,%ax
		add    %ax,data_3e94a
		jmp    jump_153eb
	jump_1532b:
		cmp    $0xa,%al
		jne    jump_15353
		mov    (%esp),%eax
		mov    data_3e94c,%bx
		mov    %ax,data_3e94a
		mov    data_20ce2,%ax
		add    %eax,%ebx
		mov    %bx,data_3e94c
		jmp    jump_153eb
	jump_15353:
		mov    $0x10,%ebx
		mov    $data_3e904,%eax
		xor    %edx,%edx
		call   w_dos_memset
		cmpw   $0x138,data_3e94a
		jle    jump_15398
		cmpw   $0x0,data_20ce4
		je     jump_15398
		mov    data_20ce2,%ax
		mov    data_3e94c,%dx
		xor    %edi,%edi
		add    %eax,%edx
		mov    %di,data_3e94a
		mov    %dx,data_3e94c
	jump_15398:
		xor    %edx,%edx
		mov    0x14(%esp),%dl
		mov    $0x10,%ebx
		shl    $0x4,%edx
		mov    $data_3e904,%eax
		add    $data_3d900,%edx
		call   w_dos_memmove
		mov    $data_3e900,%ebx
		mov    data_3e94a,%edx
		mov    data_3e948,%eax
		sar    $0x10,%edx
		sar    $0x10,%eax
		call   func_14f9f
		mov    data_20cde,%eax
		mov    data_3e948,%edx
		sar    $0x11,%eax
		sar    $0x10,%edx
		add    %eax,%edx
		mov    %dx,data_3e94a
	jump_153eb:
		inc    %ecx
	jump_153ec:
		cmp    0x4(%esp),%cx
		jb     jump_15162
		add    $0x18,%esp
		pop    %ebp
		pop    %edi
		pop    %esi
		pop    %ecx
		ret


/*----------------------------------------------------------------*/
func_15421:
/*----------------------------------------------------------------*/
		push   %ebx
		push   %edx
		sub    $0x90,%esp
		lea    0xa8(%esp),%eax
		lea    0x8c(%esp),%ebx
		mov    0xa4(%esp),%edx
		mov    %eax,0x8c(%esp)
		mov    %esp,%eax
		call   w_dos_vsprintf
		mov    0x9e(%esp),%edx
		mov    0x9a(%esp),%eax
		mov    %esp,%ebx
		sar    $0x10,%edx
		sar    $0x10,%eax
		call   func_15134
		xor    %edx,%edx
		mov    %edx,0x8c(%esp)
		add    $0x90,%esp
		pop    %edx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_15d14:
/*----------------------------------------------------------------*/
		mov    $0x4f02,%ax
		mov    $0x101,%bx
		int    $0x10
		ret


/*----------------------------------------------------------------*/
func_15d1f:
/*----------------------------------------------------------------*/
		mov    $0x13,%ax
#if 0
		int    $0x10
#endif
		ret


/*----------------------------------------------------------------*/
func_15d26:
/*----------------------------------------------------------------*/
		mov    $0x3,%ax
#if 0
		int    $0x10
#endif
		ret


/*----------------------------------------------------------------*/
func_15d2d:
/*----------------------------------------------------------------*/
#if 0
		mov    $0x3da,%dx
	jump_15d31:
		in     (%dx),%al
		test   $0x8,%al
		jne    jump_15d31
	jump_15d36:
		in     (%dx),%al
		test   $0x8,%al
		je     jump_15d36
#endif
		ret


/*----------------------------------------------------------------*/
func_15dc0:
/*----------------------------------------------------------------*/
		push   %ebp
		mov    %esp,%ebp
		add    $0xfffffff0,%esp
		push   %edi
		push   %esi
		cmp    $0x13f,%eax
		jg     jump_15e8f
		mov    %ecx,%edi
		mov    %ebx,%esi
		add    $0x3,%esi
		and    $0x0,%ebx
		mov    (%esi),%bl
		dec    %esi
		shl    $0x8,%bx
		mov    (%esi),%bl
		mov    %bx,-0x4(%ebp)
		dec    %esi
		and    $0x0,%bx
		mov    (%esi),%bl
		dec    %esi
		shl    $0x8,%bx
		mov    (%esi),%bl
		mov    %bx,-0x2(%ebp)
		add    $0x4,%esi
		movl   $0x0,-0xc(%ebp)
		mov    %ax,%bx
		add    -0x2(%ebp),%bx
		cmp    $0x140,%bx
		jle    jump_15e27
		sub    $0x140,%bx
		mov    %ebx,-0xc(%ebp)
		mov    $0x140,%bx
		sub    %ax,%bx
		mov    %bx,-0x2(%ebp)
	jump_15e27:
		movl   $0x0,-0x10(%ebp)
		cmp    $0x0,%ax
		jge    jump_15e43
		add    %ax,-0x2(%ebp)
		mov    %eax,-0x10(%ebp)
		mov    $0x0,%eax
		negl   -0x10(%ebp)
	jump_15e43:
		cmp    $0x0,%edx
		jge    jump_15e55
		neg    %edx
		sub    %dx,-0x4(%ebp)
	jump_15e4e:
		add    -0x2(%ebp),%si
		dec    %edx
		jne    jump_15e4e
	jump_15e55:
		mov    %edx,%ecx
		add    %eax,%edi
		shl    $0x8,%ecx
		add    %ecx,%edi
		shr    $0x2,%ecx
		add    %ecx,%edi
		mov    $0x140,%eax
		sub    -0x2(%ebp),%ax
		mov    %eax,-0x8(%ebp)
		movzwl -0x4(%ebp),%ebx
	jump_15e73:
		add    -0x10(%ebp),%esi
		movzwl -0x2(%ebp),%ecx
	jump_15e7a:
		mov    (%esi),%al
		cmp    $0xff,%al
		je     jump_15e82
		mov    %al,(%edi)
	jump_15e82:
		inc    %esi
		inc    %edi
		loop   jump_15e7a
		add    -0x8(%ebp),%edi
		add    -0xc(%ebp),%esi
		dec    %ebx
		jne    jump_15e73
	jump_15e8f:
		pop    %esi
		pop    %edi
		leave
		ret


/*----------------------------------------------------------------*/
func_15e93:
/*----------------------------------------------------------------*/
		push   %ebp
		mov    %esp,%ebp
		add    $0xfffffff4,%esp
		push   %edi
		push   %esi
		mov    %ecx,%edi
		mov    %ebx,%esi
		add    $0x3,%esi
		and    $0x0,%ebx
		mov    (%esi),%bl
		dec    %esi
		shl    $0x8,%bx
		mov    (%esi),%bl
		mov    %bx,-0x4(%ebp)
		dec    %esi
		and    $0x0,%bx
		mov    (%esi),%bl
		dec    %esi
		shl    $0x8,%bx
		mov    (%esi),%bl
		mov    %bx,-0x2(%ebp)
		add    $0x4,%esi
		mov    %edx,%ecx
		add    %eax,%edi
		shl    $0x8,%ecx
		add    %ecx,%edi
		shr    $0x2,%ecx
		add    %ecx,%edi
		mov    $0x140,%eax
		sub    -0x2(%ebp),%ax
		mov    %eax,-0x8(%ebp)
		movzwl -0x4(%ebp),%ebx
	jump_15ee5:
		movzwl -0x2(%ebp),%ecx
	jump_15ee9:
		mov    (%esi),%al
		mov    %al,(%edi)
		inc    %esi
		inc    %edi
		loop   jump_15ee9
		add    -0x8(%ebp),%edi
		dec    %ebx
		jne    jump_15ee5
		pop    %esi
		pop    %edi
		leave
		ret


/*----------------------------------------------------------------*/
func_15efb:
/*----------------------------------------------------------------*/
		push   %ebp
		mov    %esp,%ebp
		add    $0xfffffff4,%esp
		push   %edi
		push   %esi
		mov    0xc(%ebp),%esi
		mov    %ebx,%edi
		mov    %cx,-0x2(%ebp)
		mov    %cl,(%edi)
		inc    %edi
		mov    %ch,(%edi)
		inc    %edi
		mov    0x8(%ebp),%cx
		mov    %cl,(%edi)
		inc    %edi
		mov    %ch,(%edi)
		inc    %edi
		mov    %edx,%ecx
		add    %eax,%esi
		shl    $0x8,%ecx
		add    %ecx,%esi
		shr    $0x2,%ecx
		add    %ecx,%esi
		mov    $0x140,%eax
		sub    -0x2(%ebp),%ax
		mov    %eax,-0x8(%ebp)
		movzwl 0x8(%ebp),%ebx
	jump_15f3a:
		movzwl -0x2(%ebp),%ecx
	jump_15f3e:
		mov    (%esi),%al
		mov    %al,(%edi)
		inc    %esi
		inc    %edi
		loop   jump_15f3e
		add    -0x8(%ebp),%esi
		dec    %ebx
		jne    jump_15f3a
		pop    %esi
		pop    %edi
		leave
		ret    $0x8


/*----------------------------------------------------------------*/
func_15f6e:
/*----------------------------------------------------------------*/
		push   %edi
		push   %esi
		push   %edx
		push   %ebx
		push   %ecx
#if 1
    mov    EXTERN(video_buffer),%edi
#else
		mov    $0xa0000,%edi
#endif
		mov    %eax,%esi
		mov    $0xc8,%ebx
	jump_15f7f:
		mov    $0x50,%ecx
		rep movsl %ds:(%esi),%es:(%edi)
		dec    %ebx
		jne    jump_15f7f
		pop    %ecx
		pop    %ebx
		pop    %edx
		pop    %esi
		pop    %edi
		ret


/*----------------------------------------------------------------*/
func_16101:
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %esi
		push   %edi
		push   %ebp
		sub    $0x8,%esp
		mov    %edx,%edi
		mov    $data_203bc,%edx
		call   w_dos_fopen
		xor    %esi,%esi
		mov    %eax,%ebp
		test   %eax,%eax
		je     jump_16210
		mov    $0x2,%ebx
		mov    $0xfffffd00,%edx
		call   w_dos_fseek
		mov    %si,0x4(%esp)
	jump_16135:
		mov    $0x1,%ebx
		mov    $0x3,%edx
		mov    %esp,%eax
		mov    %ebp,%ecx
		call   w_dos_fread
		xor    %edx,%edx
		mov    $0x3c8,%eax
		mov    0x4(%esp),%dl
#if 1
    movb   %dl,EXTERN(palette_index)
#else
		call   func_outp_
#endif
		xor    %edx,%edx
		mov    (%esp),%dl
		mov    $0x3c9,%eax
		sar    $0x2,%edx
#if 1
    movb   %dl,EXTERN(palette_r)
#else
		call   func_outp_
#endif
		xor    %edx,%edx
		mov    0x1(%esp),%dl
		mov    $0x3c9,%eax
		sar    $0x2,%edx
		mov    0x4(%esp),%ebx
#if 1
    movb   %dl,EXTERN(palette_g)
#else
		call   func_outp_
#endif
		xor    %edx,%edx
		inc    %ebx
		mov    0x2(%esp),%dl
		mov    $0x3c9,%eax
		sar    $0x2,%edx
		mov    %bx,0x4(%esp)
#if 1
    movb   %dl,EXTERN(palette_b)

    push   %eax
    call   w_video_set_palette
    pop    %eax
#else
		call   func_outp_
#endif
		cmp    $0x100,%bx
		jb     jump_16135
		mov    $0x80,%edx
		mov    %ebp,%eax
		xor    %ebx,%ebx
		call   w_dos_fseek
	jump_161af:
		mov    %ebp,%eax
		call   w_dos_fgetc
		mov    %eax,%edx
		xor    %ah,%dh
		xor    %ah,%ah
		and    $0xc0,%al
		mov    %dx,0x4(%esp)
		cmp    $0xc0,%ax
		jne    jump_161f0
		mov    %ebp,%eax
		call   w_dos_fgetc
		xor    %dh,%dh
		mov    %ax,0x4(%esp)
		and    $0x3f,%dl
		mov    0x4(%esp),%bl
	jump_161de:
		dec    %edx
		cmp    $0xffff,%dx
		je     jump_161fd
		xor    %eax,%eax
		mov    %si,%ax
		inc    %esi
		mov    %bl,(%edi,%eax,1)
		jmp    jump_161de
	jump_161f0:
		xor    %eax,%eax
		mov    %si,%ax
		mov    0x4(%esp),%dl
		inc    %esi
		mov    %dl,(%edi,%eax,1)
	jump_161fd:
		cmp    $0xf9ff,%si
		jb     jump_161af
		mov    %ebp,%eax
		call   w_dos_fclose
		mov    $0x1,%eax
	jump_16210:
		add    $0x8,%esp
		pop    %ebp
		pop    %edi
		pop    %esi
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_1621e:
/*----------------------------------------------------------------*/
		test   %al,%al
		jbe    jump_16227
		cmp    $0x1,%al
		je     jump_16232
		ret
	jump_16227:
#if 1
    push   %eax
    movl   EXTERN(video_buffer),%eax
    mov    %eax,data_3e954
    pop    %eax
#else
		movl   $0xa0000,data_3e954
#endif
		ret
	jump_16232:
		mov    data_3e98c,%eax
		add    $0x7d00,%eax
		mov    %eax,data_3e954
		ret


/*----------------------------------------------------------------*/
func_162f7:
/*----------------------------------------------------------------*/
		mov    $0x1f400,%eax
		call   w_dos_malloc
		mov    %eax,data_3e98c
		test   %eax,%eax
		jne    jump_16323
		call   func_15d26
		push   $data_203c0
		call   w_printf
		add    $0x4,%esp
		xor    %eax,%eax
		jmp    w_dos_exit
	jump_16323:
		ret


/*----------------------------------------------------------------*/
func_16324:
/*----------------------------------------------------------------*/
		mov    data_3e98c,%eax
		jmp    w_dos_free


/*----------------------------------------------------------------*/
func_165d7:
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		mov    %dl,%cl
		xor    %ebx,%ebx
		mov    %al,%bl
		jmp    jump_165f5
	jump_165e1:
		mov    $0x3c8,%edx
		movswl %bx,%eax
#if 1
    movb   %al,EXTERN(palette_index)
#else
		out    %al,(%dx)
#endif
		mov    $0x3c9,%edx
		xor    %al,%al
#if 1
    movb   %al,EXTERN(palette_r)
    movb   %al,EXTERN(palette_g)
    movb   %al,EXTERN(palette_b)

    push   %eax
    call   w_video_set_palette
    pop    %eax
#else
		out    %al,(%dx)
		out    %al,(%dx)
		out    %al,(%dx)
#endif
		inc    %ebx
	jump_165f5:
		xor    %eax,%eax
		mov    %cl,%al
		cmp    %ax,%bx
		jle    jump_165e1
		pop    %ecx
		pop    %ebx
		ret


/**
 * cdrom installation check
 * get cdrom audio disc info
 * get cdrom audio channel info
 * setup cdrom audio track information list
 */
/*----------------------------------------------------------------*/
cdrom_setup_audio_info: /* 17437 */
/*----------------------------------------------------------------*/
		push   $0x3c
		call   func___CHK
		push   %ebx
		push   %ecx
		push   %edx
		push   %esi
		sub    $0x28,%esp
		xor    %esi,%esi
		xor    %edx,%edx
		mov    %esi,data_42f94
		mov    $dpmi_real_mode_call_structure,%eax
		mov    $0x32,%ebx
		call   w_dos_memset
		lea    0x1c(%esp),%eax
		xor    %edx,%edx
		mov    $0xc,%ebx
		call   w_dos_memset
		movl   $0x1500,dpmi_real_mode_call_structure_eax
		mov    %esi,dpmi_real_mode_call_structure_ebx
		movw   $0x300,(%esp)
		movb   $0x2f,0x4(%esp)
		xor    %dl,%dl
		mov    %dl,0x5(%esp)
		xor    %ebx,%ebx
		mov    %bx,0x8(%esp)
		mov    %ds,%edx
		mov    $dpmi_real_mode_call_structure,%eax
		mov    %dx,0x1c(%esp)
		movl   $dpmi_real_mode_call_structure,0x14(%esp)
		mov    $0x31,%eax
		mov    %esp,%edx
		mov    %esp,%ebx
		lea    0x1c(%esp),%ecx
#if 0
    /* 2f 1500 bx0000: cdrom installation check */
		call   w_dos_int386x
#endif
#if 1
    mov    $1,%dx
#else
		mov    dpmi_real_mode_call_structure_ebx,%dx
#endif
		mov    %dx,cdrom_number
#if 1
    mov    $0,%al
#else
		mov    dpmi_real_mode_call_structure_ecx,%al
#endif
		mov    %al,cdrom_starting_letter
		and    $0xff,%eax
		mov    %eax,data_20d04
		test   %dx,%dx
		jne    jump_174ed
	jump_174e6:
		xor    %eax,%eax
		jmp    jump_175af
	jump_174ed:
		call   cdrom_get_mscdex_version
		cmpl   $0x2,cdrom_mscdex_major_version
		jge    jump_17504
		cmpl   $0x1,cdrom_mscdex_minor_version
		jl     jump_174e6
	jump_17504:
#if 0
		call   cdrom_get_audio_disc_info
		inc    %esi
		cmpw   $0x8102,data_42fee
		jne    jump_1751d
		cmp    $0x1f4,%esi
		jl     jump_17504
#endif
	jump_1751d:
		cmp    $0x1f4,%esi
		je     jump_174e6
		cmpw   $0x8000,data_42fee
		jae    jump_174e6

		movl   $0x1,data_42f94

		mov    $0x2,%eax
		mov    $data_42ff8,%edx
		mov    $data_42ff6,%ebx
#if 0
		call   allocate_dos_memory_block
#endif

		xor    %eax,%eax
#if 0
		mov    data_42ff8,%gs
		mov    %gs,data_42ff4
		xor    %ebx,%ebx
		mov    %eax,data_42ff0
		movb   $0x0,%gs:0x1(%eax)
		lgs    data_42ff0,%eax
		movb   $0x1,%gs:0x3(%eax)
		lgs    data_42ff0,%eax
		movb   $0x2,%gs:0x5(%eax)
		lgs    data_42ff0,%eax
		movb   $0x3,%gs:0x7(%eax)
		call   cdrom_get_audio_channel_info
#endif

		xor    %ecx,%ecx
		mov    %ecx,data_20d00
		mov    %ebx,data_20cf8
		mov    %ebx,data_20cf4
#if 0
		call   cdrom_setup_track_information_list
#endif

		mov    $0x1,%eax
	jump_175af:
		add    $0x28,%esp
		pop    %esi
		pop    %edx
		pop    %ecx
		pop    %ebx
	jump_175b6:
		ret


/*----------------------------------------------------------------*/
func_175b7:
/*----------------------------------------------------------------*/
#if 1
    ret
#endif
		push   $0x4
		call   func___CHK
		cmpl   $0x0,data_42f94 /* it should be 1 */
		je     jump_175b6
		call   func_17b31
		mov    data_42ff6,%eax
		sar    $0x10,%eax


/*----------------------------------------------------------------*/
free_dos_memory_block: /* 175d7 */
/*----------------------------------------------------------------*/
		push   $0x28
		call   func___CHK
		push   %ebx
		push   %edx
		sub    $0x1c,%esp
		movl   $0x101,(%esp)
		cwtl
		mov    %eax,0xc(%esp)
		mov    $0x31,%eax
		mov    %esp,%edx
		mov    %esp,%ebx
		call   w_dos_int386
		add    $0x1c,%esp
		pop    %edx
		pop    %ebx
		ret


/**
 * @param eax out cdrom starting letter
 * @param edx out number of cdrom
 */
/*----------------------------------------------------------------*/
cdrom_get_cdrom_starting_letter_and_number: /* 17d81 */
/*----------------------------------------------------------------*/
		push   $0x8
		call   func___CHK
		push   %ebx
		xor    %ebx,%ebx
		mov    cdrom_starting_letter,%bl
		mov    %ebx,(%eax)
		xor    %eax,%eax
		mov    cdrom_number,%ax
		mov    %eax,(%edx)
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
cdrom_setup_track_information_list: /* 17a46 */
/*----------------------------------------------------------------*/
		push   $0xc
		call   func___CHK
		push   %ebx
		push   %edx
		cmpl   $0x0,data_42f94 /* it should be 1 */
		je     jump_17ab5
		mov    $0x1,%edx
		jmp    jump_17aaa
	jump_17a62:
		movswl %dx,%eax
		call   cdrom_get_audio_track_info
		cmpb   $0x40,cdrom_audio_track_info_something_related_with_track_control_information
		je     jump_17aa9 /* jump if track is data track */
		mov    %edx,%ebx
		shl    $0x2,%ebx
		mov    cdrom_audio_track_info_something_related_with_starting_point_of_the_track,%eax
		mov    %eax,data_42e94(%ebx)
		xor    %eax,%eax
		mov    cdrom_audio_disc_info_highest_track_number,%al
		cmp    %eax,%edx
		jne    jump_17a95
		mov    cdrom_audio_disc_info_something_related_with_starting_point_of_the_lead_out_track,%eax
		jmp    jump_17aa3
	jump_17a95:
		mov    %edx,%eax
		inc    %eax
		cwtl
		call   cdrom_get_audio_track_info
		mov    cdrom_audio_track_info_something_related_with_starting_point_of_the_track,%eax
	jump_17aa3:
		mov    %eax,data_42f0c(%ebx)
	jump_17aa9:
		inc    %edx
	jump_17aaa:
		xor    %eax,%eax
		mov    cdrom_audio_disc_info_highest_track_number,%al
		cmp    %eax,%edx
		jle    jump_17a62
	jump_17ab5:
		pop    %edx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_17b0e:
/*----------------------------------------------------------------*/
		push   $0x4
		call   func___CHK
#if 1
    mov    $1,%eax
#else
		call   cdrom_get_device_status_device_parameters
		xor    %eax,%eax
		mov    data_42fee,%ax
		sar    $0x8,%eax
		cmp    $0x1,%eax
		sete   %al /* set if audio channel manipulation is supported */
		xor    %ah,%ah
#endif
		ret


/*----------------------------------------------------------------*/
func_17b31:
/*----------------------------------------------------------------*/
		push   $0x8
		call   func___CHK
		push   %edx
		cmpl   $0x0,data_42f94 /* it should be 1 */
		je     jump_17b60
		call   func_17b62
		xor    %edx,%edx
	jump_17b4c:
		call   func_17b0e
		cmp    $0x1,%ax
		je     jump_17b60
		inc    %edx
		cmp    $0x3e8,%edx
		jl     jump_17b4c
	jump_17b60:
		pop    %edx
		ret


/*----------------------------------------------------------------*/
func_17b62:
/*----------------------------------------------------------------*/
		push   $0x14
		call   func___CHK
		push   %ebx
		push   %edx
		sub    $0x8,%esp
		cmpl   $0x0,data_42f94 /* it should be 1 */
		je     jump_17c65
		cmpl   $0x1,data_20d00 /* data_20d00 is 0 */
		jne    jump_17c65
		mov    $0x2,%eax
		mov    %esp,%edx
		lea    0x4(%esp),%ebx
		call   allocate_dos_memory_block
		xor    %edx,%edx
		mov    (%esp),%ebx
		mov    %ebx,%gs
		movb   $0xd,%gs:(%edx)
		movb   $0x0,%gs:0x1(%edx)
		movb   $0x85,%gs:0x2(%edx)
		mov    0x2(%esp),%eax
		sar    $0x10,%eax
		call   cdrom_send_device_driver_request
		mov    %ebx,%gs
		mov    %gs:0x3(%edx),%ax
		mov    %ax,data_42fee
		mov    -0x2(%esp),%eax
		sar    $0x10,%eax
		call   free_dos_memory_block
		mov    %edx,data_20d00
		mov    %edx,data_20cf8
		jmp    jump_17c65
	jump_17c65:
		add    $0x8,%esp
		pop    %edx
		pop    %ebx
		ret


/**
 * @param eax segment to cd-rom device driver request header
 */
/*----------------------------------------------------------------*/
cdrom_send_device_driver_request: /* 17c6b */
/*----------------------------------------------------------------*/
		push   $0x38
		call   func___CHK
		push   %ebx
		push   %ecx
		push   %edx
		sub    $0x28,%esp
		mov    %eax,%ecx
		mov    $dpmi_real_mode_call_structure,%eax
		xor    %edx,%edx
		mov    $0x32,%ebx
		call   w_dos_memset
		lea    0x1c(%esp),%eax
		xor    %edx,%edx
		mov    $0xc,%ebx
		call   w_dos_memset
		movl   $0x1510,dpmi_real_mode_call_structure_eax
		mov    data_20d04,%eax /* data_20d04: cdrom drive starting letter */
		mov    %eax,dpmi_real_mode_call_structure_ecx
		xor    %ebx,%ebx
		mov    %ebx,dpmi_real_mode_call_structure_ebx
		mov    %cx,dpmi_real_mode_call_structure_es
		movl   $0x300,(%esp)
		mov    %ebx,0x4(%esp)
		movb   $0x2f,0x4(%esp)
		mov    %ebx,0x8(%esp)
		mov    %ds,%edx
		mov    $dpmi_real_mode_call_structure,%eax
		mov    %dx,0x1c(%esp)
		movl   $dpmi_real_mode_call_structure,0x14(%esp)
		mov    $0x31,%eax
		mov    %esp,%edx
		mov    %esp,%ebx
		lea    0x1c(%esp),%ecx
		call   w_dos_int386x
	jump_17cfb:
		add    $0x28,%esp
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
cdrom_get_mscdex_version: /* 17d02 */
/*----------------------------------------------------------------*/
		push   $0x38
		call   func___CHK
		push   %ebx
		push   %ecx
		push   %edx
		sub    $0x28,%esp
		mov    $dpmi_real_mode_call_structure,%eax
		xor    %edx,%edx
		mov    $0x32,%ebx
		call   w_dos_memset
		lea    0x1c(%esp),%eax
		xor    %edx,%edx
		mov    $0xc,%ebx
		call   w_dos_memset
		movl   $0x150c,dpmi_real_mode_call_structure_eax
		xor    %ebx,%ebx
		mov    %ebx,dpmi_real_mode_call_structure_ebx
		movw   $0x300,(%esp)
		movb   $0x2f,0x4(%esp)
		xor    %dl,%dl
		mov    %dl,0x5(%esp)
		xor    %ebx,%ebx
		mov    %bx,0x8(%esp)
		mov    %ds,%edx
		mov    $dpmi_real_mode_call_structure,%eax
		mov    %dx,0x1c(%esp)
		movl   $dpmi_real_mode_call_structure,0x14(%esp)
		mov    $0x31,%eax
		mov    %esp,%edx
		mov    %esp,%ebx
		lea    0x1c(%esp),%ecx
#if 0
    /* 2f 150c bx0000: get mscdex.exe version */
		call   w_dos_int386x
#endif
#if 1
    /* mscdex.exe version is forced to 2.1 */
    mov    $0x00000201,%eax
    mov    %eax,dpmi_real_mode_call_structure_ebx
#endif
		mov    dpmi_real_mode_call_structure_ebx,%eax
		sar    $0x8,%eax
		and    $0xff,%eax
		mov    %eax,cdrom_mscdex_major_version
		mov    dpmi_real_mode_call_structure_ebx,%eax
		and    $0xff,%eax
		mov    %eax,cdrom_mscdex_minor_version
		jmp    jump_17cfb


/*----------------------------------------------------------------*/
cdrom_get_audio_disc_info: /* 17da9 */
/*----------------------------------------------------------------*/
		push   $0x34
		call   func___CHK
		push   %ebx
		push   %ecx
		push   %edx
		push   %esi
		push   %edi
		sub    $0x18,%esp
		mov    $0x2,%eax /* 2 paragraphs = 32 bytes */
		lea    0x10(%esp),%edx /* %esp 0x10~0x13: first selector. high 2 bytes are useless */
		lea    0x8(%esp),%ebx /* %esp 0x8~0x9: segment */
		call   allocate_dos_memory_block
		mov    $0x1,%eax /* 16 bytes */
		lea    0xc(%esp),%edx /* %esp: 0xc~0xf: first selector. high 2 bytes are useless */
		mov    %esp,%ebx /* %esp: 0x0~0x3: segment. high 2 bytes are useless */
		call   allocate_dos_memory_block
		xor    %esi,%esi
		mov    0x10(%esp),%eax
		mov    %eax,0x4(%esp) /* %esp: 0x4~0x7: first selector == %esp 0x10~0x13 */
		xor    %edi,%edi
		mov    0xc(%esp),%eax
		mov    %eax,0x14(%esp) /* %esp: 0x14~0x17: first selector == %esp 0xc~0xf */
		mov    0x4(%esp),%gs

    /* IOCTL input
     * first 13 bytes: request header
     * 0xd: byte: media descriptor byte from BPB
     * 0xe: dword: transfer address
     * 0x12: word: number of bytes to transfer
     * 0x14: word: starting sector number
     * 0x16: dword: DWORD ptr to requested vol ID if error 0x0f
     *
     * media descriptor byte, starting sector number,
     * and volume ID fields are all 0.
     *
     * reference
     * http://makbit.com/articles/mscdex.txt
     */
		movb   $0x1a,%gs:(%esi)
		movb   $0x0,%gs:0x1(%esi)
		movb   $0x3,%gs:0x2(%esi)
		movb   $0x0,%gs:0xd(%esi)
		movw   $0x0,%gs:0x14(%esi)
		mov    %esi,%gs:0x16(%esi)
		mov    -0x2(%esp),%eax
		sar    $0x10,%eax
		shl    $0x10,%eax
		mov    %eax,%gs:0xe(%esi)
		movw   $0x7,%gs:0x12(%esi)
		mov    0x14(%esp),%gs
		movb   $0xa,%gs:(%edi) /* 0xa: audio disc info */
		mov    0x6(%esp),%eax
		sar    $0x10,%eax
		call   cdrom_send_device_driver_request

    /* copy 6 bytes from returned audio disc info except first 1 byte */
		push   $0x6
		mov    %ds,%edx
		mov    $data_42fe4,%eax
		mov    0x18(%esp),%ecx
		mov    $0x1,%ebx
		call   func__fmemcpy_

		mov    0x14(%esp),%gs
		mov    %gs:0x1(%edi),%al
		mov    %al,cdrom_audio_disc_info_lowest_track_number /* lowest track number */
		mov    %gs:0x2(%edi),%al
		mov    %al,cdrom_audio_disc_info_highest_track_number /* highest track number */

    /* cdrom_audio_disc_info_third_byte_of_starting_point_of_the_lead_out_track = (%eax & 0x00ff0000 >> 16)
     * cdrom_audio_disc_info_second_byte_of_starting_point_of_the_lead_out_track_YA = (%eax & 0x0000ff00 >> 8)
     * cdrom_audio_disc_info_first_byte_of_starting_point_of_the_lead_out_track_YA = %eax & 0x000000ff
     */
		mov    %gs:0x3(%edi),%eax
		mov    $cdrom_audio_disc_info_third_byte_of_starting_point_of_the_lead_out_track,%edx
		mov    $cdrom_audio_disc_info_second_byte_of_starting_point_of_the_lead_out_track_YA,%ebx
		mov    $cdrom_audio_disc_info_first_byte_of_starting_point_of_the_lead_out_track_YA,%ecx
		call   func_17f2c

		mov    0x14(%esp),%gs
		mov    %gs:0x3(%edi),%eax
		call   func_17ec3

		mov    %eax,cdrom_audio_disc_info_something_related_with_starting_point_of_the_lead_out_track
		mov    0x4(%esp),%gs
		mov    %gs:0x3(%esi),%ax
		mov    %ax,data_42fee
		mov    0xe(%esp),%eax
		sar    $0x10,%eax
		call   free_dos_memory_block
		mov    0xa(%esp),%eax
		sar    $0x10,%eax
		call   free_dos_memory_block
		add    $0x18,%esp
	jump_17ebd:
		pop    %edi
		pop    %esi
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_17ec3:
/*----------------------------------------------------------------*/
		push   $0x1c
		call   func___CHK
		push   %ebx
		push   %ecx
		push   %edx
		sub    $0xc,%esp

    /* 0x4(%esp) = (%eax & 0x00ff0000) >> 16
     * 0x0(%esp) = (%eax & 0x0000ff00) >> 8
     * 0x8(%esp) = %eax & 0x000000ff
     */
		mov    %eax,%edx
		lea    0x4(%esp),%edx
		mov    %esp,%ebx
		lea    0x8(%esp),%ecx
		call   func_17f2c

		xor    %edx,%edx
		mov    0x4(%esp),%dl
		mov    %edx,%eax
		shl    $0x5,%eax
		sub    %edx,%eax
		shl    $0x2,%eax
		add    %edx,%eax
		shl    $0x2,%eax
		mov    %eax,%edx
		shl    $0x3,%eax
		add    %eax,%edx
		xor    %eax,%eax
		mov    (%esp),%al
		movswl %ax,%ebx
		mov    %ebx,%eax
		shl    $0x2,%eax
		add    %ebx,%eax
		mov    %eax,%ebx
		shl    $0x4,%eax
		sub    %ebx,%eax
		add    %eax,%edx
		xor    %eax,%eax
		mov    0x8(%esp),%al
		sub    $0x96,%eax
		add    %edx,%eax
		add    $0xc,%esp
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_17f2c:
/*----------------------------------------------------------------*/
		push   $0x8
		call   func___CHK
		sub    $0x4,%esp
		mov    %al,(%ecx)
		mov    %eax,%ecx
		and    $0xff00,%ecx
		shr    $0x8,%ecx
		mov    %ecx,(%esp)
		mov    (%esp),%cl
		mov    %cl,(%ebx)
		and    $0xff0000,%eax
		shr    $0x10,%eax
		mov    %al,(%edx)
		add    $0x4,%esp
		ret


/*----------------------------------------------------------------*/
cdrom_get_audio_track_info: /* 18008 */
/*----------------------------------------------------------------*/
		push   $0x2c
		call   func___CHK
		push   %ebx
		push   %ecx
		push   %edx
		push   %esi
		push   %edi
		sub    $0x14,%esp
		mov    %eax,%ecx

		mov    $0x2,%eax
		lea    0x4(%esp),%edx
		lea    0x10(%esp),%ebx
		call   allocate_dos_memory_block

		mov    $0x1,%eax
		mov    %esp,%edx
		lea    0xc(%esp),%ebx
		call   allocate_dos_memory_block

		xor    %edx,%edx
		mov    0x4(%esp),%esi
		xor    %ebx,%ebx
		mov    (%esp),%edi
		mov    %esi,%gs
		movb   $0x1a,%gs:(%edx)
		movb   $0x0,%gs:0x1(%edx)
		movb   $0x3,%gs:0x2(%edx) /* IOCTL input */
		movb   $0x0,%gs:0xd(%edx)
		mov    %edx,%gs:0x16(%edx)
		mov    %dx,%gs:0x14(%edx)
		mov    %dx,0x8(%esp)
		mov    0x8(%esp),%al
		mov    %al,%gs:0xd(%edx)
		mov    0xa(%esp),%eax
		sar    $0x10,%eax
		shl    $0x10,%eax
		mov    %eax,%gs:0xe(%edx) /* transfer address */
		movw   $0x7,%gs:0x12(%edx) /* number of bytes to transfer */
		mov    %edi,%gs
		movb   $0xb,%gs:(%ebx) /* audio track info */
		mov    %cl,%gs:0x1(%ebx) /* track number */
		mov    0xe(%esp),%eax
		sar    $0x10,%eax
		call   cdrom_send_device_driver_request
		mov    %esi,%gs
		mov    %gs:0x3(%edx),%ax
		mov    %ax,data_42fee
		mov    %edi,%gs
		mov    %gs:0x2(%ebx),%eax /* starting point of the track */
		call   func_17ec3
		mov    %eax,cdrom_audio_track_info_something_related_with_starting_point_of_the_track
		mov    %cx,data_42fcd
		mov    %edi,%gs
		mov    %gs:0x6(%ebx),%al /* track control information */
		and    $0xd0,%al
		mov    %al,cdrom_audio_track_info_something_related_with_track_control_information
		mov    0x2(%esp),%eax
		sar    $0x10,%eax
		call   free_dos_memory_block
		mov    -0x2(%esp),%eax
		sar    $0x10,%eax
		call   free_dos_memory_block
		add    $0x14,%esp
		jmp    jump_17ebd
	jump_18158:
		sar    $0x10,%eax
		call   free_dos_memory_block
		add    $0x8,%esp
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret


/**
 * data_42fee has device parameters
 */
/*----------------------------------------------------------------*/
cdrom_get_device_status_device_parameters: /* 181db */
/*----------------------------------------------------------------*/
		push   $0x24
		call   func___CHK
		push   %ebx
		push   %ecx
		push   %edx
		push   %esi
		sub    $0x10,%esp

		mov    $0x2,%eax
		mov    %esp,%edx
		lea    0xc(%esp),%ebx
		call   allocate_dos_memory_block

		mov    $0x1,%eax
		lea    0x8(%esp),%edx
		lea    0x4(%esp),%ebx
		call   allocate_dos_memory_block

		xor    %edx,%edx
		mov    (%esp),%ecx
		xor    %ebx,%ebx
		mov    0x8(%esp),%esi
		mov    %ecx,%gs
		movb   $0x6,%gs:(%edx)
		movb   $0x0,%gs:0x1(%edx)
		movb   $0x3,%gs:0x2(%edx)
		movb   $0x0,%gs:0xd(%edx)
		mov    %edx,%gs:0x16(%edx)
		mov    %dx,%gs:0x14(%edx)
		mov    %dl,%gs:0xd(%edx)
		mov    0x2(%esp),%eax
		sar    $0x10,%eax
		shl    $0x10,%eax
		mov    %eax,%gs:0xe(%edx)
		movw   $0x5,%gs:0x12(%edx) /* number of bytes to transfer */
		mov    %esi,%gs
		movb   $0x6,%gs:(%ebx) /* device status */
		mov    0xa(%esp),%eax
		sar    $0x10,%eax
		call   cdrom_send_device_driver_request
		mov    %esi,%gs
		mov    %gs:0x1(%ebx),%eax
		mov    %eax,data_42fea /* device parameters */
		mov    %ecx,%gs
		mov    %gs:0x3(%edx),%ax
		mov    %ax,data_42fee
		mov    -0x2(%esp),%eax
		sar    $0x10,%eax
		call   free_dos_memory_block
		mov    0x6(%esp),%eax
		sar    $0x10,%eax
		call   free_dos_memory_block
		add    $0x10,%esp
		pop    %esi
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
cdrom_get_audio_channel_info: /* 18317 */
/*----------------------------------------------------------------*/
		push   $0x18
		call   func___CHK
		push   %ebx
		push   %ecx
		push   %edx
		sub    $0x8,%esp

		mov    $0x2,%eax
		lea    0x4(%esp),%edx
		mov    %esp,%ebx
		call   allocate_dos_memory_block

		xor    %edx,%edx
		mov    0x4(%esp),%ecx
		mov    %ecx,%gs
		movb   $0x1a,%gs:(%edx)
		movb   $0x0,%gs:0x1(%edx)
		movb   $0x3,%gs:0x2(%edx) /* IOCTL input */
		movb   $0x0,%gs:0xd(%edx)
		mov    %edx,%gs:0x16(%edx)
		mov    %dx,%gs:0x14(%edx)
		mov    %dl,%gs:0xd(%edx)
		mov    data_42ff4,%eax
		sar    $0x10,%eax
		shl    $0x10,%eax
		mov    %eax,%gs:0xe(%edx) /* transfer address */
		movw   $0x9,%gs:0x12(%edx) /* number of bytes to transfer */
		lgs    data_42ff0,%ebx
		movb   $0x4,%gs:(%ebx) /* audio channel info */
		mov    -0x2(%esp),%eax
		sar    $0x10,%eax
		call   cdrom_send_device_driver_request
		mov    %ecx,%gs
		mov    %gs:0x3(%edx),%ax
		mov    %ax,data_42fee
		mov    0x2(%esp),%eax
		jmp    jump_18158

vtable_184a7:
		.long   func_1852c
		.long   func_1853a
		.long   func_18541
		.long   func_18548
		.long   func_1854f
		.long   func_18556
		.long   func_1855d
		.long   func_18564
		.long   func_1856b
		.long   func_18572
		.long   func_18579
		.long   func_18580
		.long   func_18587
		.long   func_1858e
		.long   func_18595
		.long   func_1859c


/*----------------------------------------------------------------*/
func_1852c:
/*----------------------------------------------------------------*/
		push   $data_20702
	jump_18531:
		call   w_printf
		add    $0x4,%esp
		ret


/*----------------------------------------------------------------*/
func_1853a:
/*----------------------------------------------------------------*/
		push   $data_20720
		jmp    jump_18531


/*----------------------------------------------------------------*/
func_18541:
/*----------------------------------------------------------------*/
		push   $data_20733
		jmp    jump_18531


/*----------------------------------------------------------------*/
func_18548:
/*----------------------------------------------------------------*/
		push   $data_20749
		jmp    jump_18531


/*----------------------------------------------------------------*/
func_1854f:
/*----------------------------------------------------------------*/
		push   $data_2075f
		jmp    jump_18531


/*----------------------------------------------------------------*/
func_18556:
/*----------------------------------------------------------------*/
		push   $data_2076f
		jmp    jump_18531


/*----------------------------------------------------------------*/
func_1855d:
/*----------------------------------------------------------------*/
		push   $data_20798
		jmp    jump_18531


/*----------------------------------------------------------------*/
func_18564:
/*----------------------------------------------------------------*/
		push   $data_207a9
		jmp    jump_18531


/*----------------------------------------------------------------*/
func_1856b:
/*----------------------------------------------------------------*/
		push   $data_207bd
		jmp    jump_18531


/*----------------------------------------------------------------*/
func_18572:
/*----------------------------------------------------------------*/
		push   $data_207d4
		jmp    jump_18531


/*----------------------------------------------------------------*/
func_18579:
/*----------------------------------------------------------------*/
		push   $data_207ef
		jmp    jump_18531


/*----------------------------------------------------------------*/
func_18580:
/*----------------------------------------------------------------*/
		push   $data_20801
		jmp    jump_18531


/*----------------------------------------------------------------*/
func_18587:
/*----------------------------------------------------------------*/
		push   $data_20812
		jmp    jump_18531


/*----------------------------------------------------------------*/
func_1858e:
/*----------------------------------------------------------------*/
		push   $data_20828
		jmp    jump_18531


/*----------------------------------------------------------------*/
func_18595:
/*----------------------------------------------------------------*/
		push   $data_20837
		jmp    jump_18531


/*----------------------------------------------------------------*/
func_1859c:
/*----------------------------------------------------------------*/
		push   $data_20846
		jmp    jump_18531


/**
 * Allocate dos memory block
 *
 * @param in eax number of paragraphs to allocate
 * @param out edx pointer to buffer which has first selector for allocated
 *        16 bits
 * @param out ebx pointer to buffer which has real mode segment of allocated
 *        16 bits
 */
/*----------------------------------------------------------------*/
allocate_dos_memory_block: /* 185ef */
/*----------------------------------------------------------------*/
		push   $0x38
		call   func___CHK
		push   %ecx
		push   %esi
		push   %edi
		sub    $0x28,%esp
		mov    %eax,%ecx
		mov    %edx,%edi
		mov    %ebx,%esi
		lea    0x1c(%esp),%eax
		xor    %edx,%edx
		mov    $0xc,%ebx
		call   w_dos_memset
		movl   $0x100,(%esp)
		movswl %cx,%eax
		mov    %eax,0x4(%esp)
		mov    $0x31,%eax
		mov    %esp,%edx
		mov    %esp,%ebx
		lea    0x1c(%esp),%ecx
		call   w_dos_int386x
		mov    (%esp),%eax
		mov    %ax,(%esi)
		mov    0xc(%esp),%eax
		mov    %ax,(%edi)
		add    $0x28,%esp
		pop    %edi
		pop    %esi
		pop    %ecx
		ret


/*----------------------------------------------------------------*/
func_18649:
/*----------------------------------------------------------------*/
		push   $0x8
		call   func___CHK
		push   %ecx
		xor    %ecx,%ecx
		mov    cdrom_audio_disc_info_highest_track_number,%cl
		cmp    %eax,%ecx
		je     jump_18664
	jump_18660:
		xor    %eax,%eax
		pop    %ecx
		ret
	jump_18664:
		movswl %dx,%eax
		call   cdrom_get_audio_track_info
		mov    cdrom_audio_track_info_something_related_with_starting_point_of_the_track,%ecx
		inc    %edx
		movswl %dx,%eax
		call   cdrom_get_audio_track_info
		mov    cdrom_audio_track_info_something_related_with_starting_point_of_the_track,%eax
		sub    %ecx,%eax
		cmp    %ebx,%eax
		jne    jump_18660
		mov    $0x1,%eax
		pop    %ecx
		ret
	jump_1881a:
		mov    %edi,%eax
		call   w_dos_fclose
		add    $0x80,%esp
		jmp    jump_189bf


/*----------------------------------------------------------------*/
func_1882c:
/*----------------------------------------------------------------*/
		push   $0x9c
		call   func___CHK
		push   %ebx
		push   %ecx
		push   %edx
		push   %esi
		push   %edi
		sub    $0x80,%esp
		xor    %esi,%esi
		mov    $data_20894,%edx
		call   w_dos_fopen
		mov    %eax,%edi
		test   %eax,%eax
		jne    jump_1886a
		push   $data_20897
		call   w_printf
		add    $0x4,%esp
		mov    $0x1,%eax
		call   w_dos_exit
	jump_1886a:
		mov    %esp,%eax
		mov    $0x80,%edx
		mov    $0x1,%ebx
		mov    %edi,%ecx
		call   w_dos_fread
		cmpw   $0xaf11,0x4(%esp)
		je     jump_188a4
		mov    %edi,%eax
		call   w_dos_fclose
		push   $data_208ab
		call   w_printf
		add    $0x4,%esp
		mov    $0x1,%eax
		call   w_dos_exit
	jump_188a4:
		xor    %edx,%edx
		mov    %edx,data_43018
		xor    %ebx,%ebx
		mov    %bx,data_20d68
		mov    %edx,data_20d6a
		xor    %eax,%eax
		call   func_1a46c
	jump_188c2:
		mov    data_20d68,%ax
		mov    %eax,%edx
		inc    %edx
		mov    %dx,data_20d68
		cmp    0x6(%esp),%ax
		jge    jump_1881a
		mov    %edi,%eax
		call   func_189c5
		test   %ax,%ax
		jne    jump_18904
		mov    %edi,%eax
		call   w_dos_fclose
		push   $data_208bc
		call   w_printf
		add    $0x4,%esp
		xor    %eax,%eax
		call   w_dos_exit
	jump_18904:
		call   func_1a47c
		mov    %eax,%edx
		lea    (%eax,%esi,1),%ebx
		cmp    $0x5,%eax
		jg     jump_18944
		test   %esi,%esi
		je     jump_1892d
		mov    $0x5,%ecx
		sub    %eax,%ecx
		cmp    %ecx,%esi
		jg     jump_18928
		mov    %ebx,%eax
		xor    %esi,%esi
		jmp    jump_1892d
	jump_18928:
		sub    $0x5,%esi
		sub    %eax,%esi
	jump_1892d:
		mov    $0x5,%edx
		sub    %eax,%edx
		mov    %edx,%eax
		shl    $0x3,%eax
		sub    %edx,%eax
		add    %eax,%eax
#if 0
		call   func_1a4a5
#endif
		jmp    jump_18947
	jump_18944:
		lea    -0x5(%ebx),%esi
	jump_18947:
		xor    %eax,%eax
		call   func_1a46c
#if 0
		call   func_1b2e9
		test   %eax,%eax
		je     jump_188c2
#endif
		call   w_dos_getch
		cmp    $0x1b,%eax
		jne    jump_188c2
		jmp    jump_1881a
	jump_189b7:
		mov    $0x1,%eax
	jump_189bc:
		add    $0x10,%esp
	jump_189bf:
		pop    %edi
		pop    %esi
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_189c5:
/*----------------------------------------------------------------*/
		push   $0x28
		call   func___CHK
		push   %ebx
		push   %ecx
		push   %edx
		push   %esi
		push   %edi
		sub    $0x10,%esp
		mov    %eax,%esi
		xor    %edi,%edi
		mov    %esp,%eax
		mov    $0x10,%edx
		mov    $0x1,%ebx
		mov    %esi,%ecx
		call   w_dos_fread
		cmpw   $0xf1fa,0x4(%esp)
		je     jump_189fb
		xor    %eax,%eax
		jmp    jump_189bc
	jump_189fb:
		mov    %edi,%eax
		inc    %edi
		cmp    0x6(%esp),%ax
		jge    jump_189b7
		mov    %esi,%eax
		call   func_18a29
#if 1
    /* draw a FLI frame */
    push   %eax
    call   w_game_update
    pop    %eax
#endif
		jmp    jump_189fb

vtable_18a11:
		.long   func_18a71
		.long   func_18a7a
		.long   func_18a83
		.long   func_18a9f
		.long   func_18a8a
		.long   func_18a93


/*----------------------------------------------------------------*/
func_18a29:
/*----------------------------------------------------------------*/
		push   $0x1c
		call   func___CHK
		push   %ebx
		push   %ecx
		push   %edx
		push   %esi
		sub    $0x8,%esp
		mov    %eax,%esi
		mov    %esp,%eax
		mov    $0x6,%edx
		mov    $0x1,%ebx
		mov    %esi,%ecx
		call   w_dos_fread
		mov    0x4(%esp),%ax
		sub    $0xb,%ax
		cmp    $0x5,%ax
		ja     func_18a9f
		and    $0xffff,%eax
		mov    (%esp),%edx
		sub    $0x6,%edx
		jmp    *vtable_18a11(,%eax,4)


/*----------------------------------------------------------------*/
func_18a71:
/*----------------------------------------------------------------*/
		mov    %esi,%eax
		call   func_19267
		jmp    func_18a9f


/*----------------------------------------------------------------*/
func_18a7a:
/*----------------------------------------------------------------*/
		mov    %esi,%eax
		call   func_19162
		jmp    func_18a9f


/*----------------------------------------------------------------*/
func_18a83:
/*----------------------------------------------------------------*/
		call   func_18e02
		jmp    func_18a9f


/*----------------------------------------------------------------*/
func_18a8a:
/*----------------------------------------------------------------*/
		mov    %esi,%eax
		call   func_18d23
		jmp    func_18a9f


/*----------------------------------------------------------------*/
func_18a93:
/*----------------------------------------------------------------*/
		mov    %esi,%eax
		mov    $0xfa00,%edx
		call   func_18f06


/*----------------------------------------------------------------*/
func_18a9f:
/*----------------------------------------------------------------*/
		add    $0x8,%esp
		pop    %esi
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret

vtable_18aa9:
		.long   func_18b09
		.long   func_18b12
		.long   func_18b1b
		.long   func_18a9f
		.long   func_18b25
		.long   func_18b31


/*----------------------------------------------------------------*/
func_18b09:
/*----------------------------------------------------------------*/
		mov    %esi,%eax
		call   func_19267
		jmp    func_18a9f


/*----------------------------------------------------------------*/
func_18b12:
/*----------------------------------------------------------------*/
		mov    %esi,%eax
		call   func_18f58
		jmp    func_18a9f


/*----------------------------------------------------------------*/
func_18b1b:
/*----------------------------------------------------------------*/
		call   func_18dd8
		jmp    func_18a9f


/*----------------------------------------------------------------*/
func_18b25:
/*----------------------------------------------------------------*/
		mov    %esi,%eax
		call   func_18b42
		jmp    func_18a9f


/*----------------------------------------------------------------*/
func_18b31:
/*----------------------------------------------------------------*/
		mov    %esi,%eax
		mov    $0xfa00,%edx
		call   func_18e41
		jmp    func_18a9f


/*----------------------------------------------------------------*/
func_18b42:
/*----------------------------------------------------------------*/
		push   $0x28
		call   func___CHK
		push   %ebx
		push   %ecx
		push   %esi
		push   %edi
		push   %ebp
		sub    $0x10,%esp
		mov    %eax,%ecx
		mov    data_43020,%eax
		mov    $0x1,%ebx
		call   w_dos_fread
		mov    data_43020,%ebp
		xor    %edi,%edi
		mov    $0x6400,%ecx
	jump_18b72:
		mov    data_43020,%eax
		mov    (%eax),%dl
		mov    %dl,0x8(%esp)
		xor    %dl,%dl
		mov    %dl,0xc(%esp)
		inc    %eax
		mov    %eax,data_43020
		jmp    jump_18cee
	jump_18b8e:
		mov    data_43020,%eax
		mov    (%eax),%dl
		mov    %dl,(%esp)
		inc    %eax
		mov    %eax,data_43020
		test   %dl,%dl
		jl     jump_18c47
		xor    %ah,%ah
		mov    %ah,0x4(%esp)
		jmp    jump_18c27
	jump_18bb1:
		mov    %ecx,%esi
		and    $0xffff,%esi
		mov    %ecx,%edx
		sar    $0x10,%edx
		cmp    data_20d60,%edx
		je     jump_18bd8
		mov    %edx,data_20d60
		mov    $0x4f05,%eax
		mov    $0x0,%ebx
		int    $0x10
	jump_18bd8:
		mov    data_43020,%edx
		mov    EXTERN(video_buffer),%eax
		add    %eax,%esi
		mov    (%edx),%al
		mov    %al,(%esi)
		inc    %ecx
		mov    %ecx,%esi
		and    $0xffff,%esi
		mov    %ecx,%edx
		sar    $0x10,%edx
		cmp    data_20d60,%edx
		je     jump_18c11
		mov    %edx,data_20d60
		mov    $0x4f05,%eax
		mov    $0x0,%ebx
		int    $0x10
	jump_18c11:
		mov    data_43020,%edx
		mov    EXTERN(video_buffer),%eax
		add    %eax,%esi
		mov    (%edx),%al
		mov    %al,(%esi)
		inc    %ecx
		incb   0x4(%esp)
	jump_18c27:
		xor    %edx,%edx
		mov    0x4(%esp),%dl
		mov    -0x3(%esp),%eax
		sar    $0x18,%eax
		cmp    %eax,%edx
		jl     jump_18bb1
		incl   data_43020
		jmp    jump_18cea
	jump_18c47:
		mov    %dl,%bh
		neg    %bh
		mov    %bh,(%esp)
		xor    %al,%al
		mov    %al,0x4(%esp)
		jmp    jump_18cd5
	jump_18c59:
		mov    %ecx,%esi
		and    $0xffff,%esi
		mov    %ecx,%edx
		sar    $0x10,%edx
		cmp    data_20d60,%edx
		je     jump_18c80
		mov    %edx,data_20d60
		mov    $0x4f05,%eax
		mov    $0x0,%ebx
		int    $0x10
	jump_18c80:
		mov    data_43020,%edx
		mov    EXTERN(video_buffer),%eax
		add    %eax,%esi
		mov    (%edx),%al
		mov    %al,(%esi)
		inc    %ecx
		mov    %ecx,%esi
		and    $0xffff,%esi
		mov    %ecx,%edx
		sar    $0x10,%edx
		cmp    data_20d60,%edx
		je     jump_18cb9
		mov    %edx,data_20d60
		mov    $0x4f05,%eax
		mov    $0x0,%ebx
		int    $0x10
	jump_18cb9:
		mov    data_43020,%edx
		mov    EXTERN(video_buffer),%eax
		add    %eax,%esi
		mov    (%edx),%al
		mov    %al,(%esi)
		inc    %ecx
		incl   data_43020
		incb   0x4(%esp)
	jump_18cd5:
		xor    %eax,%eax
		mov    0x4(%esp),%al
		mov    -0x3(%esp),%edx
		sar    $0x18,%edx
		cmp    %edx,%eax
		jl     jump_18c59
	jump_18cea:
		incb   0xc(%esp)
	jump_18cee:
		mov    0xc(%esp),%al
		cmp    0x8(%esp),%al
		jb     jump_18b8e
		add    $0x280,%ecx
		inc    %edi
		cmp    $0xc8,%di
		jl     jump_18b72
	jump_18d0e:
		mov    %ebp,data_43020
		incl   data_43018
		add    $0x10,%esp
	jump_18d1d:
		pop    %ebp
		pop    %edi
		pop    %esi
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_18d23:
/*----------------------------------------------------------------*/
		push   $0x18
		call   func___CHK
		push   %ebx
		push   %ecx
		push   %esi
		push   %edi
		push   %ebp
		mov    %eax,%ecx
		mov    EXTERN(video_buffer),%esi
		mov    data_43020,%eax
		mov    $0x1,%ebx
		call   w_dos_fread
		mov    data_43020,%ebp
		xor    %edi,%edi
	jump_18d51:
		mov    data_43020,%eax
		mov    (%eax),%ch
		xor    %cl,%cl
		inc    %eax
		mov    %eax,data_43020
		jmp    jump_18dbb
	jump_18d62:
		mov    data_43020,%eax
		mov    (%eax),%bh
		inc    %eax
		mov    %eax,data_43020
		test   %bh,%bh
		jl     jump_18d96
		xor    %bl,%bl
		jmp    jump_18d83
	jump_18d77:
		mov    data_43020,%eax
		mov    (%eax),%al
		mov    %al,(%esi)
		inc    %esi
		inc    %bl
	jump_18d83:
		xor    %eax,%eax
		mov    %bl,%al
		movsbl %bh,%edx
		cmp    %edx,%eax
		jl     jump_18d77
		incl   data_43020
		jmp    jump_18db9
	jump_18d96:
		neg    %bh
		xor    %bl,%bl
		jmp    jump_18dae
	jump_18d9c:
		mov    data_43020,%eax
		mov    (%eax),%al
		mov    %al,(%esi)
		inc    %esi
		incl   data_43020
		inc    %bl
	jump_18dae:
		xor    %eax,%eax
		mov    %bl,%al
		movsbl %bh,%edx
		cmp    %edx,%eax
		jl     jump_18d9c
	jump_18db9:
		inc    %cl
	jump_18dbb:
		cmp    %ch,%cl
		jb     jump_18d62
		inc    %edi
		cmp    $0xc8,%di
		jl     jump_18d51
		mov    %ebp,data_43020
		incl   data_43018
		jmp    jump_18d1d


/*----------------------------------------------------------------*/
func_18dd8:
/*----------------------------------------------------------------*/
		push   $0xc
		call   func___CHK
		push   %ebx
		push   %edx
		mov    data_2092c,%eax
		add    $0x6400,%eax
		xor    %edx,%edx
		mov    $0x3e800,%ebx
		call   w_dos_memset
		call   func_1adb3
		pop    %edx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_18e02:
/*----------------------------------------------------------------*/
		push   $0x18
		call   func___CHK
		push   %ebx
		push   %ecx
		push   %edx
		push   %esi
		push   %edi
		mov    data_2092c,%eax
		xor    %edx,%edx
		mov    $0xfa00,%ebx
		call   w_dos_memset
		mov    data_2092c,%esi
		mov    EXTERN(video_buffer),%edi
		push   %es
		mov    %ds,%eax
		mov    %eax,%es
		mov    $0x3e80,%ecx
		cld
		rep movsl %ds:(%esi),%es:(%edi)
		pop    %es
		jmp    jump_189bf


/*----------------------------------------------------------------*/
func_18e41:
/*----------------------------------------------------------------*/
		push   $0x20
		call   func___CHK
		push   %ebx
		push   %ecx
		push   %esi
		push   %edi
		push   %ebp
		sub    $0x8,%esp
		mov    %eax,%ebp
		mov    $0x6400,%ecx
		xor    %edx,%edx
		mov    %edx,(%esp)
	jump_18e5f:
		xor    %edi,%edi
	jump_18e61:
		mov    %ebp,%eax
		call   w_dos_fgetc
		mov    %al,0x4(%esp)
		mov    %ecx,%esi
		and    $0xffff,%esi
		mov    %ecx,%edx
		sar    $0x10,%edx
		cmp    data_20d60,%edx
		je     jump_18e93
		mov    %edx,data_20d60
		mov    $0x4f05,%eax
		mov    $0x0,%ebx
		int    $0x10
	jump_18e93:
		mov    EXTERN(video_buffer),%eax
		add    %eax,%esi
		mov    0x4(%esp),%al
		mov    %al,(%esi)
		inc    %ecx
		mov    %ecx,%esi
		and    $0xffff,%esi
		mov    %ecx,%edx
		sar    $0x10,%edx
		cmp    data_20d60,%edx
		je     jump_18ec8
		mov    %edx,data_20d60
		mov    $0x4f05,%eax
		mov    $0x0,%ebx
		int    $0x10
	jump_18ec8:
		mov    EXTERN(video_buffer),%eax
		add    %eax,%esi
		mov    0x4(%esp),%al
		mov    %al,(%esi)
		inc    %ecx
		inc    %edi
		cmp    $0x140,%edi
		jl     jump_18e61
		add    $0x280,%ecx
		mov    (%esp),%edx
		inc    %edx
		mov    %edx,(%esp)
		cmp    $0xc8,%edx
		jl     jump_18e5f
		incl   data_43018
		add    $0x8,%esp
		jmp    jump_18d1d


/*----------------------------------------------------------------*/
func_18f06:
/*----------------------------------------------------------------*/
		push   $0x18
		call   func___CHK
		push   %ebx
		push   %ecx
		push   %esi
		push   %edi
		sub    $0x4,%esp
		mov    %eax,%esi
		xor    %ebx,%ebx
		xor    %edi,%edi
	jump_18f1d:
		xor    %edx,%edx
	jump_18f1f:
		mov    %esi,%eax
		call   w_dos_fgetc
		mov    %eax,(%esp)
		mov    %ebx,%ecx
		mov    EXTERN(video_buffer),%eax
		inc    %ebx
		add    %ecx,%eax
		mov    (%esp),%cl
		mov    %cl,(%eax)
		inc    %edx
		cmp    $0x140,%edx
		jl     jump_18f1f
		inc    %edi
		cmp    $0xc8,%edi
		jl     jump_18f1d
		incl   data_43018
		add    $0x4,%esp
		pop    %edi
		pop    %esi
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_18f58:
/*----------------------------------------------------------------*/
		push   $0x34
		call   func___CHK
		push   %ebx
		push   %ecx
		push   %esi
		push   %edi
		push   %ebp
		sub    $0x1c,%esp
		mov    %eax,%ecx
		mov    data_43020,%eax
		mov    $0x1,%ebx
		call   w_dos_fread
		mov    data_43020,%eax
		mov    %eax,(%esp)
		mov    (%eax),%ax
		mov    %ax,0x14(%esp)
		mov    0x12(%esp),%edx
		sar    $0x10,%edx
		mov    %edx,%ecx
		shl    $0x2,%ecx
		add    %edx,%ecx
		shl    $0x8,%ecx
		mov    (%esp),%eax
		add    $0x4,%eax
		mov    %eax,data_43020
		mov    (%esp),%eax
		add    $0x2,%eax
		add    $0x6400,%ecx
		mov    (%eax),%ax
		mov    %ax,0x14(%esp)
		mov    %ecx,0x8(%esp)
		xor    %edx,%edx
		mov    %edx,0x4(%esp)
		jmp    jump_1913b
	jump_18fca:
		mov    0x8(%esp),%ecx
		mov    data_43020,%eax
		xor    %edx,%edx
		mov    (%eax),%dl
		mov    %edx,0xc(%esp)
		xor    %esi,%esi
		mov    %esi,0x10(%esp)
		inc    %eax
		mov    %eax,data_43020
		jmp    jump_19121
	jump_18fec:
		mov    data_43020,%eax
		xor    %edx,%edx
		mov    (%eax),%dl
		add    %edx,%edx
		inc    %eax
		mov    %eax,data_43020
		add    %edx,%ecx
		mov    -0x3(%eax),%ebp
		sar    $0x18,%ebp
		inc    %eax
		mov    %eax,data_43020
		test   %ebp,%ebp
		jl     jump_1909c
		xor    %edi,%edi
		jmp    jump_19093
	jump_1901a:
		mov    %ecx,%esi
		and    $0xffff,%esi
		mov    %ecx,%edx
		sar    $0x10,%edx
		cmp    data_20d60,%edx
		je     jump_19041
		mov    %edx,data_20d60
		mov    $0x4f05,%eax
		mov    $0x0,%ebx
		int    $0x10
	jump_19041:
		mov    data_43020,%edx
		mov    EXTERN(video_buffer),%eax
		add    %eax,%esi
		mov    (%edx),%al
		mov    %al,(%esi)
		inc    %ecx
		mov    %ecx,%esi
		and    $0xffff,%esi
		mov    %ecx,%edx
		sar    $0x10,%edx
		cmp    data_20d60,%edx
		je     jump_1907a
		mov    %edx,data_20d60
		mov    $0x4f05,%eax
		mov    $0x0,%ebx
		int    $0x10
	jump_1907a:
		mov    data_43020,%edx
		mov    EXTERN(video_buffer),%eax
		add    %eax,%esi
		mov    (%edx),%al
		mov    %al,(%esi)
		inc    %ecx
		incl   data_43020
		inc    %edi
	jump_19093:
		cmp    %ebp,%edi
		jl     jump_1901a
		jmp    jump_1911d
	jump_1909c:
		neg    %ebp
		mov    (%eax),%dl
		mov    %dl,0x18(%esp)
		xor    %edi,%edi
		inc    %eax
		mov    %eax,data_43020
		jmp    jump_19119
	jump_190ae:
		mov    %ecx,%esi
		and    $0xffff,%esi
		mov    %ecx,%edx
		sar    $0x10,%edx
		cmp    data_20d60,%edx
		je     jump_190d5
		mov    %edx,data_20d60
		mov    $0x4f05,%eax
		mov    $0x0,%ebx
		int    $0x10
	jump_190d5:
		mov    EXTERN(video_buffer),%edx
		mov    0x18(%esp),%al
		mov    %al,(%edx,%esi,1)
		inc    %ecx
		mov    %ecx,%esi
		and    $0xffff,%esi
		mov    %ecx,%edx
		sar    $0x10,%edx
		cmp    data_20d60,%edx
		je     jump_1910a
		mov    %edx,data_20d60
		mov    $0x4f05,%eax
		mov    $0x0,%ebx
		int    $0x10
	jump_1910a:
		mov    EXTERN(video_buffer),%eax
		add    %eax,%esi
		mov    0x18(%esp),%al
		mov    %al,(%esi)
		inc    %ecx
		inc    %edi
	jump_19119:
		cmp    %ebp,%edi
		jl     jump_190ae
	jump_1911d:
		incl   0x10(%esp)
	jump_19121:
		mov    0x10(%esp),%eax
		cmp    0xc(%esp),%eax
		jl     jump_18fec
		addl   $0x500,0x8(%esp)
		incl   0x4(%esp)
	jump_1913b:
		mov    0x12(%esp),%eax
		sar    $0x10,%eax
		cmp    0x4(%esp),%eax
		jg     jump_18fca
		mov    (%esp),%eax
		mov    %eax,data_43020
		incl   data_43018
		add    $0x1c,%esp
		jmp    jump_18d1d


/*----------------------------------------------------------------*/
func_19162:
/*----------------------------------------------------------------*/
		push   $0x28
		call   func___CHK
		push   %ebx
		push   %ecx
		push   %esi
		push   %edi
		push   %ebp
		sub    $0x10,%esp
		mov    %eax,%ecx
		mov    EXTERN(video_buffer),%esi
		mov    data_43020,%eax
		mov    $0x1,%ebx
		call   w_dos_fread
		mov    data_43020,%ebp
		mov    0x0(%ebp),%ax
		mov    %ax,0x8(%esp)
		mov    0x6(%esp),%edx
		sar    $0x10,%edx
		mov    %edx,%eax
		shl    $0x2,%eax
		add    %eax,%edx
		shl    $0x6,%edx
		lea    0x4(%ebp),%eax
		mov    %eax,data_43020
		lea    0x2(%ebp),%eax
		add    %edx,%esi
		mov    (%eax),%ax
		mov    %ax,0x8(%esp)
		mov    %esi,0x4(%esp)
		xor    %edx,%edx
		mov    %edx,(%esp)
		jmp    jump_19252
	jump_191ce:
		mov    0x4(%esp),%esi
		mov    data_43020,%eax
		movzbl (%eax),%edi
		xor    %ecx,%ecx
		inc    %eax
		mov    %eax,data_43020
		jmp    jump_19243
	jump_191e4:
		mov    data_43020,%eax
		xor    %edx,%edx
		mov    (%eax),%dl
		inc    %eax
		mov    %eax,data_43020
		add    %edx,%esi
		mov    -0x3(%eax),%ebx
		sar    $0x18,%ebx
		inc    %eax
		mov    %eax,data_43020
		test   %ebx,%ebx
		jl     jump_19221
		xor    %eax,%eax
		jmp    jump_1921b
	jump_19209:
		mov    data_43020,%edx
		mov    (%edx),%dl
		mov    %dl,(%esi)
		inc    %esi
		incl   data_43020
		inc    %eax
	jump_1921b:
		cmp    %ebx,%eax
		jl     jump_19209
		jmp    jump_19242
	jump_19221:
		neg    %ebx
		mov    %eax,%edx
		mov    (%eax),%al
		mov    %al,0xc(%esp)
		xor    %eax,%eax
		inc    %edx
		mov    %edx,data_43020
		mov    0xc(%esp),%dl
		jmp    jump_1923e
	jump_1923a:
		mov    %dl,(%esi)
		inc    %esi
		inc    %eax
	jump_1923e:
		cmp    %ebx,%eax
		jl     jump_1923a
	jump_19242:
		inc    %ecx
	jump_19243:
		cmp    %edi,%ecx
		jl     jump_191e4
		addl   $0x140,0x4(%esp)
		incl   (%esp)
	jump_19252:
		mov    0x6(%esp),%eax
		sar    $0x10,%eax
		cmp    (%esp),%eax
		jg     jump_191ce
		jmp    jump_18d0e


/*----------------------------------------------------------------*/
func_19267:
/*----------------------------------------------------------------*/
		push   $0x324
		call   func___CHK
		push   %ebx
		push   %ecx
		push   %esi
		push   %edi
		push   %ebp
		sub    $0x30c,%esp
		mov    %eax,%ecx
		xor    %edi,%edi
		mov    data_43020,%eax
		mov    %eax,0x300(%esp)
		mov    $0x1,%ebx
		call   w_dos_fread
		mov    data_43020,%eax
		mov    (%eax),%dx
		mov    %edx,0x304(%esp)
		add    $0x2,%eax
		mov    %eax,data_43020
		xor    %ebp,%ebp
		jmp    jump_1932d
	jump_192b4:
		mov    data_43020,%ecx
		mov    (%ecx),%al
		mov    %al,0x308(%esp)
		inc    %ecx
		mov    %ecx,data_43020
		mov    (%ecx),%al
		inc    %ecx
		mov    %ecx,data_43020
		cmpb   $0x0,0x308(%esp)
		jne    jump_192e8
		test   %al,%al
		jne    jump_192e8
		mov    $0x100,%eax
		jmp    jump_192ea
	jump_192e8:
		xor    %ah,%ah
	jump_192ea:
		xor    %esi,%esi
		mov    %ax,%si
		mov    %esi,%ecx
		shl    $0x2,%ecx
		sub    %esi,%ecx
		mov    data_43020,%edx
		mov    %esp,%eax
		mov    %ecx,%ebx
		call   w_dos_memcpy
		mov    data_43020,%eax
		add    %ecx,%eax
		mov    %eax,data_43020
		xor    %eax,%eax
		mov    0x308(%esp),%al
		add    %eax,%edi
		xor    %edx,%edx
		mov    %di,%dx
		mov    %esp,%eax
		mov    %esi,%ebx
		call   vga_set_palette
		add    %esi,%edi
		inc    %ebp
	jump_1932d:
		xor    %eax,%eax
		mov    0x304(%esp),%ax
		cmp    %eax,%ebp
		jl     jump_192b4
		mov    0x300(%esp),%eax
		mov    %eax,data_43020
		add    $0x30c,%esp
		jmp    jump_18d1d


/*----------------------------------------------------------------*/
vga_set_palette: /* 19356 */
/*----------------------------------------------------------------*/
		push   $0xc
		call   func___CHK
		push   %ecx
		push   %esi
		mov    %eax,%ecx
		mov    %ebx,%esi
		and    $0xffff,%edx
		mov    $0x3c8,%eax
#if 1
    movb   %dl,EXTERN(palette_index)
#else
		call   func_outp_
#endif
		xor    %ebx,%ebx
		jmp    jump_1938a
	jump_1937a:
		xor    %edx,%edx
		mov    (%ecx,%ebx,1),%dl
		mov    $0x3c9,%eax
#if 1
    movb   %dl,EXTERN(palette_r)

    inc    %ebx

    mov    (%ecx,%ebx,1),%dl
    movb   %dl,EXTERN(palette_g)

    inc    %ebx

    mov    (%ecx,%ebx,1),%dl
    movb   %dl,EXTERN(palette_b)

    push   %eax
    call   w_video_set_palette
    pop    %eax

    mov    EXTERN(palette_index),%dl
    inc    %dl
    movb   %dl,EXTERN(palette_index)
#else
		call   func_outp_
#endif
		inc    %ebx
	jump_1938a:
		xor    %edx,%edx
		mov    %si,%dx
		mov    %edx,%eax
		shl    $0x2,%eax
		sub    %edx,%eax
		cmp    %eax,%ebx
		jl     jump_1937a
		pop    %esi
		pop    %ecx
		ret
	jump_193bb:
		mov    $0x10,%eax
		mov    %esp,%edx
		mov    %esp,%ebx
#if 0
		call   w_dos_int386
#endif
		add    $0x1c,%esp
		pop    %edx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_193cf:
/*----------------------------------------------------------------*/
		push   $0x28
		call   func___CHK
		push   %ebx
		push   %edx
		sub    $0x1c,%esp
		movl   $0x13,(%esp)
		jmp    jump_193bb


/*----------------------------------------------------------------*/
func_193e7:
/*----------------------------------------------------------------*/
		push   $0x28
		call   func___CHK
		push   %ebx
		push   %edx
		sub    $0x1c,%esp
		movl   $0x3,(%esp)
		jmp    jump_193bb
	jump_1946e:
		mov    data_43020,%eax
		call   w_dos_free
		mov    data_2092c,%eax
		call   w_dos_free
		call   func_193e7
		pop    %edi
		pop    %esi
		pop    %ecx
		ret


/*----------------------------------------------------------------*/
func_1948b:
/*----------------------------------------------------------------*/
		push   $0x10
		call   func___CHK
		push   %ecx
		push   %esi
		push   %edi
		mov    %eax,%esi
		mov    %edx,%edi
		mov    %ebx,%ecx
#if 0
		call   func_193cf /* set vga mode 0x13 */
		mov    $0x3c2,%eax
		mov    $0xe2,%edx
		call   func_outp_
#endif
		mov    $0xfa00,%eax
		call   w_dos_malloc
		mov    %eax,%edx
		mov    %eax,data_2092c
		xor    %eax,%edx
		mov    $0xfa00,%ebx
		call   w_dos_memset
		mov    $0xfa00,%eax
		call   w_dos_malloc
		mov    %eax,data_43020
		movl   $0x5,data_4301c
		mov    %edi,%eax
		mov    $0x1,%edx
		call   func_1a95f
		mov    %ecx,%eax
		mov    $0x1,%edx
		mov    %edx,%ebx
		call   func_1ab1b
		mov    %esi,%eax
		call   func_1882c
		jmp    jump_1946e
.data
data_1950e:
		.ascii  "\x87\x00\x00\x00\x83\x00\x00\x00"
		.ascii  "\x81\x00\x00\x00\x82\x00\x00\x00"
.text


/**
 * DMA related function
 *
 * @param eax soundblaster dma
 * @param edx pointer to buffer
 * @param ebx ?
 */
/*----------------------------------------------------------------*/
func_1951e:
/*----------------------------------------------------------------*/
		push   $0x28
		call   func___CHK
		push   %ecx
		push   %esi
		push   %edi
		push   %ebp
		sub    $0x14,%esp
		mov    %eax,%ebp
		mov    %edx,0x10(%esp)
		mov    %esp,%edi
		mov    $data_1950e,%esi
		movsl  %ds:(%esi),%es:(%edi)
		movsl  %ds:(%esi),%es:(%edi)
		movsl  %ds:(%esi),%es:(%edi)
		movsl  %ds:(%esi),%es:(%edi)
		mov    %eax,%edx
		sar    $0x10,%edx
		mov    (%esp,%ebx,4),%eax
		call   func_outp_
		mov    $0xc,%eax /* ISA DMAC Flip-Flop port: DMAC 0 (16 bit) Slave (write) */
		xor    %edx,%edx
		call   func_outp_
		mov    %ebp,%edx
		and    $0xff,%edx
		lea    (%ebx,%ebx,1),%ecx
		mov    %ecx,%eax
		call   func_outp_
		mov    %ebp,%edx
		sar    $0x8,%edx
		and    $0xff,%edx
		mov    %ecx,%eax
		call   func_outp_
		mov    0x10(%esp),%ebp
		dec    %ebp
		mov    %ebp,%edx
		and    $0xff,%edx
		inc    %ecx
		mov    %ecx,%eax
		call   func_outp_
		mov    %ebp,%edx
		sar    $0x8,%edx
		and    $0xff,%edx
		mov    %ecx,%eax
		call   func_outp_
		mov    %ebx,%edx
		or     $0x58,%dl
		mov    $0xb,%eax
		call   func_outp_
		mov    $0xa,%eax
		mov    %ebx,%edx
		call   func_outp_
		add    $0x14,%esp
		pop    %ebp
		pop    %edi
		pop    %esi
		pop    %ecx
		ret


/*----------------------------------------------------------------*/
soundblaster_reset_dsp: /* 195e7 */
/*----------------------------------------------------------------*/
		push   $0x8
		call   func___CHK
		push   %edx
		mov    soundblaster_adr,%eax
		add    $0x6,%eax
		mov    $0x1,%edx
		call   func_outp_ /* write 0x1 to port DSP_RESET(+0x6) */
		xor    %edx,%edx
	jump_19606:
		mov    soundblaster_adr,%eax
		add    $0x6,%eax
		call   func_inp_
		inc    %edx
		cmp    $0x64,%edx
		jl     jump_19606
		mov    soundblaster_adr,%eax
		add    $0x6,%eax
		xor    %edx,%edx
		call   func_outp_ /* write 0x0 to port DSP_RESET */
		xor    %edx,%edx
	jump_1962a:
		mov    soundblaster_adr,%eax
		add    $0xe,%eax
		call   func_inp_ /* read a byte from DSP_DATAVAIL (+0xe) */
		test   $0x80,%al
		je     jump_19663 /* jump if bit 7 in data is not set */
		xor    %edx,%edx
	jump_1963d:
		mov    soundblaster_adr,%eax
		add    $0xa,%eax
		call   func_inp_ /* read a byte from DSP_READ (+0xa) */
		cmp    $0xaa,%eax
		jne    jump_19658 /* jump if data is not 0xaa */
		mov    $0x1,%eax
		pop    %edx
		ret
	jump_19658:
		inc    %edx
		cmp    $0x400,%edx
		jl     jump_1963d
		jmp    jump_1966c
	jump_19663:
		inc    %edx
		cmp    $0x400,%edx
		jl     jump_1962a
	jump_1966c:
		mov    $0xffffffff,%eax
		pop    %edx
		ret


/*----------------------------------------------------------------*/
soundblaster_write_to_dsp: /* 196aa */
/*----------------------------------------------------------------*/
		push   $0xc
		call   func___CHK
		push   %ebx
		push   %ecx
#if 0
		mov    %eax,%ebx
		mov    %edx,%ecx
		xor    %edx,%edx
		jmp    jump_196bf
	jump_196be:
		inc    %edx
	jump_196bf:
		lea    0xc(%ebx),%eax
		call   func_inp_
		test   $0x80,%al
		je     jump_196d3
		cmp    $0x10000,%edx
		jb     jump_196be
	jump_196d3:
		cmp    $0x10000,%edx
		je     jump_196e7
		xor    %edx,%edx
		mov    %cl,%dl
		lea    0xc(%ebx),%eax
		call   func_outp_
	jump_196e7:
#endif
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_196ea:
/*----------------------------------------------------------------*/
		pusha
		push   %ds
		push   %es
		push   %fs
		push   %gs
		mov    %esp,%ebp
		cld
		call   func___GETDS
		call   disable_interrupts
		mov    soundblaster_adr,%eax
		add    $0xe,%eax
		call   func_inp_
		movl   $0x2,soundblaster_irq
	jump_19715:
		mov    $0x20,%eax
		mov    %eax,%edx
		call   func_outp_
		call   enable_interrupts
	jump_19726:
		pop    %gs
		pop    %fs
		pop    %es
		pop    %ds
		popa
#if 1
    ret
#else
		iret
#endif


/*----------------------------------------------------------------*/
func_1972e:
/*----------------------------------------------------------------*/
		pusha
		push   %ds
		push   %es
		push   %fs
		push   %gs
		mov    %esp,%ebp
		cld
		call   func___GETDS
		call   disable_interrupts
		mov    soundblaster_adr,%eax
		add    $0xe,%eax
		call   func_inp_
		movl   $0x3,soundblaster_irq
		jmp    jump_19715


/*----------------------------------------------------------------*/
func_1975b:
/*----------------------------------------------------------------*/
		pusha
		push   %ds
		push   %es
		push   %fs
		push   %gs
		mov    %esp,%ebp
		cld
		call   func___GETDS
		call   disable_interrupts
		mov    soundblaster_adr,%eax
		add    $0xe,%eax
		call   func_inp_
		movl   $0x5,soundblaster_irq
		jmp    jump_19715


/*----------------------------------------------------------------*/
func_19788:
/*----------------------------------------------------------------*/
		pusha
		push   %ds
		push   %es
		push   %fs
		push   %gs
		mov    %esp,%ebp
		cld
		call   func___GETDS
		call   disable_interrupts
		mov    soundblaster_adr,%eax
		add    $0xe,%eax
		call   func_inp_
		movl   $0x7,soundblaster_irq
		jmp    jump_19715


/*----------------------------------------------------------------*/
func_197b8:
/*----------------------------------------------------------------*/
		pusha
		push   %ds
		push   %es
		push   %fs
		push   %gs
		mov    %esp,%ebp
		cld
		call   func___GETDS
		call   disable_interrupts
		mov    soundblaster_adr,%eax
		add    $0xe,%eax
		call   func_inp_
		movl   $0xa,soundblaster_irq
		jmp    jump_19715
	jump_19acc:
		pop    %edi
		pop    %esi
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_19b02:
/*----------------------------------------------------------------*/
		pusha
		push   %ds
		push   %es
		push   %fs
		push   %gs
		mov    %esp,%ebp
		cld
		call   func___GETDS
		call   disable_interrupts
		mov    soundblaster_adr,%eax
		add    $0xe,%eax
		call   func_inp_
		mov    soundblaster_adr,%eax
		mov    $0x14,%edx
		call   soundblaster_write_to_dsp
		mov    soundblaster_adr,%eax
		mov    $0xff,%edx
		call   soundblaster_write_to_dsp
		mov    soundblaster_adr,%eax
		mov    $0xff,%edx
		call   soundblaster_write_to_dsp
		jmp    jump_19715


/*----------------------------------------------------------------*/
GLOBAL (pit_isr) /* 19b55 */
/*----------------------------------------------------------------*/
		pusha
		push   %ds
		push   %es
		push   %fs
		push   %gs
		mov    %esp,%ebp
		sub    $0x4,%esp
		cld
#if 1
    /* I do not know value of %eax in pit_isr in DOS.
     * Just set zero to %eax
     */
    xor    %eax,%eax
#endif
#if 0
		call   func___GETDS
#endif
		call   disable_interrupts
#if 0
		out    %al,$0xc
#endif
		mov    soundblaster_dma,%dl
		xor    %dh,%dh
		add    %dl,%dl
		inc    %dl
#if 0
		in     (%dx),%al
#endif
		mov    %al,%ah
#if 0
		in     (%dx),%al
#endif
		xchg   %al,%ah
	jump_19b80:
		mov    %ax,%cx
#if 0
		in     (%dx),%al
#endif
		mov    %al,%ah
#if 0
		in     (%dx),%al
#endif
		xchg   %al,%ah
		sub    %ax,%cx
		cmp    $0x10,%cx
		jg     jump_19b80
		cmp    $0xfff0,%cx
		jl     jump_19b80
		movzwl %ax,%eax
		neg    %eax
		add    $0x400,%eax
		cmp    $0x200,%eax
		jl     jump_19ee3
		cmpl   $0x0,data_54290
		jne    jump_1a21e
		mov    data_5429c,%edi
		mov    $data_53da8,%esi
		mov    $0x200,%ecx
		push   %es
		mov    %ds,%eax
		mov    %eax,%es
		shr    $0x2,%ecx
		cld
		rep movsl %ds:(%esi),%es:(%edi)
		pop    %es
		cmpl   $0x1,data_541b8
		jne    jump_19c1d
		mov    data_541bc,%ecx
		add    data_541c0,%ecx
		mov    $data_53da8,%eax
		xor    %esi,%esi
	jump_19bf2:
		mov    data_541b4,%edx
		shl    $0x8,%edx
		xor    %ebx,%ebx
		mov    (%ecx),%bl
		mov    data_43028(%edx,%ebx,1),%dl
		mov    %dl,(%eax)
		inc    %eax
		inc    %ecx
		inc    %esi
		cmp    $0x200,%esi
		jl     jump_19bf2
		addl   $0x200,data_541c0
	jump_19c1d:
		cmpl   $0x0,data_541b8
		jne    jump_19c52
		movb   $0x7f,-0x4(%ebp)
		mov    $data_53da8,%eax
		xor    %esi,%esi
	jump_19c31:
		mov    data_541b4,%ecx
		shl    $0x8,%ecx
		xor    %edx,%edx
		mov    -0x4(%ebp),%dl
		mov    data_43028(%ecx,%edx,1),%dl
		mov    %dl,(%eax)
		inc    %eax
		inc    %esi
		cmp    $0x200,%esi
		jl     jump_19c31
	jump_19c52:
		cmpl   $0x1,data_541d4
		jne    jump_19cb0
		mov    data_541d8,%ecx
		add    data_541dc,%ecx
		mov    $data_53da8,%eax
		xor    %esi,%esi
	jump_19c6e:
		mov    data_541d0,%ebx
		shl    $0x8,%ebx
		xor    %edx,%edx
		mov    (%ecx),%dl
		add    %ebx,%edx
		mov    data_43028(%edx),%dl
		mov    %edx,%ebx
		and    $0xff,%ebx
		shl    $0x8,%ebx
		xor    %edx,%edx
		mov    (%eax),%dl
		mov    data_43b28(%edx,%ebx,1),%dl
		mov    %dl,(%eax)
		inc    %eax
		inc    %ecx
		inc    %esi
		cmp    $0x200,%esi
		jl     jump_19c6e
		addl   $0x200,data_541dc
	jump_19cb0:
		cmpl   $0x1,data_541f0
		jne    jump_19d08
		mov    data_541f4,%ecx
		add    data_541f8,%ecx
		mov    $data_53da8,%eax
		xor    %esi,%esi
	jump_19ccc:
		mov    data_541ec,%ebx
		shl    $0x8,%ebx
		xor    %edx,%edx
		mov    (%ecx),%dl
		add    %ebx,%edx
		xor    %ebx,%ebx
		mov    data_43028(%edx),%bl
		shl    $0x8,%ebx
		xor    %edx,%edx
		mov    (%eax),%dl
		mov    data_43b28(%edx,%ebx,1),%dl
		mov    %dl,(%eax)
		inc    %eax
		inc    %ecx
		inc    %esi
		cmp    $0x200,%esi
		jl     jump_19ccc
		addl   $0x200,data_541f8
	jump_19d08:
		cmpl   $0x1,data_5420c
		jne    jump_19d64
		mov    data_54210,%ecx
		add    data_54214,%ecx
		mov    $data_53da8,%eax
		xor    %esi,%esi
	jump_19d24:
		mov    data_54208,%ebx
		shl    $0x8,%ebx
		xor    %edx,%edx
		mov    (%ecx),%dl
		add    %ebx,%edx
		mov    data_43028(%edx),%dl
		and    $0xff,%edx
		shl    $0x8,%edx
		xor    %ebx,%ebx
		mov    (%eax),%bl
		mov    data_43b28(%edx,%ebx,1),%dl
		mov    %dl,(%eax)
		inc    %eax
		inc    %ecx
		inc    %esi
		cmp    $0x200,%esi
		jl     jump_19d24
		addl   $0x200,data_54214
	jump_19d64:
		cmpl   $0x1,data_54228
		jne    jump_19dc0
		mov    data_5422c,%ecx
		add    data_54230,%ecx
		mov    $data_53da8,%eax
		xor    %esi,%esi
	jump_19d80:
		mov    data_54224,%edx
		shl    $0x8,%edx
		xor    %ebx,%ebx
		mov    (%ecx),%bl
		add    %ebx,%edx
		mov    data_43028(%edx),%dl
		and    $0xff,%edx
		shl    $0x8,%edx
		xor    %ebx,%ebx
		mov    (%eax),%bl
		mov    data_43b28(%edx,%ebx,1),%dl
		mov    %dl,(%eax)
		inc    %eax
		inc    %ecx
		inc    %esi
		cmp    $0x200,%esi
		jl     jump_19d80
		addl   $0x200,data_54230
	jump_19dc0:
		cmpl   $0x1,data_54244
		jne    jump_19e1c
		mov    data_54248,%ecx
		add    data_5424c,%ecx
		mov    $data_53da8,%eax
		xor    %esi,%esi
	jump_19ddc:
		mov    data_54240,%edx
		shl    $0x8,%edx
		xor    %ebx,%ebx
		mov    (%ecx),%bl
		add    %ebx,%edx
		mov    data_43028(%edx),%dl
		and    $0xff,%edx
		shl    $0x8,%edx
		xor    %ebx,%ebx
		mov    (%eax),%bl
		mov    data_43b28(%edx,%ebx,1),%dl
		mov    %dl,(%eax)
		inc    %eax
		inc    %ecx
		inc    %esi
		cmp    $0x200,%esi
		jl     jump_19ddc
		addl   $0x200,data_5424c
	jump_19e1c:
		cmpl   $0x1,data_54260
		jne    jump_19e78
		mov    data_54264,%ecx
		add    data_54268,%ecx
		mov    $data_53da8,%eax
		xor    %esi,%esi
	jump_19e38:
		mov    data_5425c,%ebx
		shl    $0x8,%ebx
		xor    %edx,%edx
		mov    (%ecx),%dl
		add    %ebx,%edx
		mov    data_43028(%edx),%dl
		and    $0xff,%edx
		shl    $0x8,%edx
		xor    %ebx,%ebx
		mov    (%eax),%bl
		mov    data_43b28(%edx,%ebx,1),%dl
		mov    %dl,(%eax)
		inc    %eax
		inc    %ecx
		inc    %esi
		cmp    $0x200,%esi
		jl     jump_19e38
		addl   $0x200,data_54268
	jump_19e78:
		cmpl   $0x1,data_5427c
		jne    jump_19ed4
		mov    data_54280,%ecx
		add    data_54284,%ecx
		mov    $data_53da8,%eax
		xor    %esi,%esi
	jump_19e94:
		mov    data_54278,%edx
		shl    $0x8,%edx
		xor    %ebx,%ebx
		mov    (%ecx),%bl
		add    %ebx,%edx
		mov    data_43028(%edx),%dl
		and    $0xff,%edx
		shl    $0x8,%edx
		xor    %ebx,%ebx
		mov    (%eax),%bl
		mov    data_43b28(%edx,%ebx,1),%dl
		mov    %dl,(%eax)
		inc    %eax
		inc    %ecx
		inc    %esi
		cmp    $0x200,%esi
		jl     jump_19e94
		addl   $0x200,data_54284
	jump_19ed4:
		movl   $0x200,data_54290
		jmp    jump_1a21e
	jump_19ee3:
		mov    data_54290,%edx
		cmp    $0x200,%edx
		jne    jump_1a21e
		mov    data_5429c,%edi
		add    %edx,%edi
		mov    $data_53fa8,%esi
		mov    %edx,%ecx
		push   %es
		mov    %ds,%eax
		mov    %eax,%es
		shr    $0x2,%ecx
		cld
		rep movsl %ds:(%esi),%es:(%edi)
		pop    %es
		cmpl   $0x1,data_541b8
		jne    jump_19f57
		mov    data_541bc,%ecx
		add    data_541c0,%ecx
		mov    $data_53fa8,%eax
		xor    %esi,%esi
	jump_19f2c:
		mov    data_541b4,%ebx
		shl    $0x8,%ebx
		xor    %edx,%edx
		mov    (%ecx),%dl
		mov    data_43028(%edx,%ebx,1),%dl
		mov    %dl,(%eax)
		inc    %eax
		inc    %ecx
		inc    %esi
		cmp    $0x200,%esi
		jl     jump_19f2c
		addl   $0x200,data_541c0
	jump_19f57:
		cmpl   $0x0,data_541b8
		jne    jump_19f8c
		movb   $0x7f,-0x4(%ebp)
		mov    $data_53fa8,%eax
		xor    %esi,%esi
	jump_19f6b:
		mov    data_541b4,%edx
		shl    $0x8,%edx
		xor    %ebx,%ebx
		mov    -0x4(%ebp),%bl
		mov    data_43028(%edx,%ebx,1),%dl
		mov    %dl,(%eax)
		inc    %eax
		inc    %esi
		cmp    $0x200,%esi
		jl     jump_19f6b
	jump_19f8c:
		cmpl   $0x1,data_541d4
		jne    jump_19fe8
		mov    data_541d8,%ecx
		add    data_541dc,%ecx
		mov    $data_53fa8,%eax
		xor    %esi,%esi
	jump_19fa8:
		mov    data_541d0,%edx
		shl    $0x8,%edx
		xor    %ebx,%ebx
		mov    (%ecx),%bl
		add    %ebx,%edx
		mov    data_43028(%edx),%dl
		and    $0xff,%edx
		shl    $0x8,%edx
		xor    %ebx,%ebx
		mov    (%eax),%bl
		mov    data_43b28(%edx,%ebx,1),%dl
		mov    %dl,(%eax)
		inc    %eax
		inc    %ecx
		inc    %esi
		cmp    $0x200,%esi
		jl     jump_19fa8
		addl   $0x200,data_541dc
	jump_19fe8:
		cmpl   $0x1,data_541f0
		jne    jump_1a046
		mov    data_541f4,%ecx
		add    data_541f8,%ecx
		mov    $data_53fa8,%eax
		xor    %esi,%esi
	jump_1a004:
		mov    data_541ec,%edx
		shl    $0x8,%edx
		xor    %ebx,%ebx
		mov    (%ecx),%bl
		add    %ebx,%edx
		mov    data_43028(%edx),%dl
		mov    %edx,%ebx
		and    $0xff,%ebx
		shl    $0x8,%ebx
		xor    %edx,%edx
		mov    (%eax),%dl
		mov    data_43b28(%edx,%ebx,1),%dl
		mov    %dl,(%eax)
		inc    %eax
		inc    %ecx
		inc    %esi
		cmp    $0x200,%esi
		jl     jump_1a004
		addl   $0x200,data_541f8
	jump_1a046:
		cmpl   $0x1,data_5420c
		jne    jump_1a0a4
		mov    data_54210,%ecx
		add    data_54214,%ecx
		mov    $data_53fa8,%eax
		xor    %esi,%esi
	jump_1a062:
		mov    data_54208,%edx
		shl    $0x8,%edx
		xor    %ebx,%ebx
		mov    (%ecx),%bl
		add    %ebx,%edx
		mov    data_43028(%edx),%dl
		mov    %edx,%ebx
		and    $0xff,%ebx
		shl    $0x8,%ebx
		xor    %edx,%edx
		mov    (%eax),%dl
		mov    data_43b28(%edx,%ebx,1),%dl
		mov    %dl,(%eax)
		inc    %eax
		inc    %ecx
		inc    %esi
		cmp    $0x200,%esi
		jl     jump_1a062
		addl   $0x200,data_54214
	jump_1a0a4:
		cmpl   $0x1,data_54228
		jne    jump_1a0fc
		mov    data_5422c,%ecx
		add    data_54230,%ecx
		mov    $data_53fa8,%eax
		xor    %esi,%esi
	jump_1a0c0:
		mov    data_54224,%edx
		shl    $0x8,%edx
		xor    %ebx,%ebx
		mov    (%ecx),%bl
		add    %ebx,%edx
		xor    %ebx,%ebx
		mov    data_43028(%edx),%bl
		shl    $0x8,%ebx
		xor    %edx,%edx
		mov    (%eax),%dl
		mov    data_43b28(%edx,%ebx,1),%dl
		mov    %dl,(%eax)
		inc    %eax
		inc    %ecx
		inc    %esi
		cmp    $0x200,%esi
		jl     jump_1a0c0
		addl   $0x200,data_54230
	jump_1a0fc:
		cmpl   $0x1,data_54244
		jne    jump_1a15a
		mov    data_54248,%ecx
		add    data_5424c,%ecx
		mov    $data_53fa8,%eax
		xor    %esi,%esi
	jump_1a118:
		mov    data_54240,%ebx
		shl    $0x8,%ebx
		xor    %edx,%edx
		mov    (%ecx),%dl
		add    %ebx,%edx
		mov    data_43028(%edx),%dl
		mov    %edx,%ebx
		and    $0xff,%ebx
		shl    $0x8,%ebx
		xor    %edx,%edx
		mov    (%eax),%dl
		mov    data_43b28(%edx,%ebx,1),%dl
		mov    %dl,(%eax)
		inc    %eax
		inc    %ecx
		inc    %esi
		cmp    $0x200,%esi
		jl     jump_1a118
		addl   $0x200,data_5424c
	jump_1a15a:
		cmpl   $0x1,data_54260
		jne    jump_1a1b8
		mov    data_54264,%ecx
		add    data_54268,%ecx
		mov    $data_53fa8,%eax
		xor    %esi,%esi
	jump_1a176:
		mov    data_5425c,%ebx
		shl    $0x8,%ebx
		xor    %edx,%edx
		mov    (%ecx),%dl
		add    %ebx,%edx
		mov    data_43028(%edx),%dl
		mov    %edx,%ebx
		and    $0xff,%ebx
		shl    $0x8,%ebx
		xor    %edx,%edx
		mov    (%eax),%dl
		mov    data_43b28(%edx,%ebx,1),%dl
		mov    %dl,(%eax)
		inc    %eax
		inc    %ecx
		inc    %esi
		cmp    $0x200,%esi
		jl     jump_1a176
		addl   $0x200,data_54268
	jump_1a1b8:
		cmpl   $0x1,data_5427c
		jne    jump_1a216
		mov    data_54280,%ecx
		add    data_54284,%ecx
		mov    $data_53fa8,%eax
		xor    %esi,%esi
	jump_1a1d4:
		mov    data_54278,%ebx
		shl    $0x8,%ebx
		xor    %edx,%edx
		mov    (%ecx),%dl
		add    %ebx,%edx
		mov    data_43028(%edx),%dl
		mov    %edx,%ebx
		and    $0xff,%ebx
		shl    $0x8,%ebx
		xor    %edx,%edx
		mov    (%eax),%dl
		mov    data_43b28(%edx,%ebx,1),%dl
		mov    %dl,(%eax)
		inc    %eax
		inc    %ecx
		inc    %esi
		cmp    $0x200,%esi
		jl     jump_1a1d4
		addl   $0x200,data_54284
	jump_1a216:
		xor    %edx,%edx
		mov    %edx,data_54290
	jump_1a21e:
		mov    data_541ac,%eax
		sub    $0x400,%eax
		cmp    data_541c0,%eax
		jge    jump_1a253
		mov    data_541b0,%ecx
		dec    %ecx
		mov    %ecx,data_541b0
		cmp    $0x1,%ecx
		jl     jump_1a24b
		xor    %eax,%eax
		mov    %eax,data_541c0
		jmp    jump_1a253
	jump_1a24b:
		xor    %edi,%edi
		mov    %edi,data_541b8
	jump_1a253:
		mov    data_541c8,%eax
		sub    $0x400,%eax
		cmp    data_541dc,%eax
		jge    jump_1a289
		mov    data_541cc,%ebx
		dec    %ebx
		mov    %ebx,data_541cc
		cmp    $0x1,%ebx
		jl     jump_1a281
		xor    %edi,%edi
		mov    %edi,data_541dc
		jmp    jump_1a289
	jump_1a281:
		xor    %esi,%esi
		mov    %esi,data_541d4
	jump_1a289:
		mov    data_541e4,%eax
		sub    $0x400,%eax
		cmp    data_541f8,%eax
		jge    jump_1a2bf
		mov    data_541e8,%ebx
		dec    %ebx
		mov    %ebx,data_541e8
		cmp    $0x1,%ebx
		jl     jump_1a2b7
		xor    %edi,%edi
		mov    %edi,data_541f8
		jmp    jump_1a2bf
	jump_1a2b7:
		xor    %esi,%esi
		mov    %esi,data_541f0
	jump_1a2bf:
		mov    data_54200,%eax
		sub    $0x400,%eax
		cmp    data_54214,%eax
		jge    jump_1a2f5
		mov    data_54204,%ebx
		dec    %ebx
		mov    %ebx,data_54204
		cmp    $0x1,%ebx
		jl     jump_1a2ed
		xor    %edi,%edi
		mov    %edi,data_54214
		jmp    jump_1a2f5
	jump_1a2ed:
		xor    %esi,%esi
		mov    %esi,data_5420c
	jump_1a2f5:
		mov    data_5421c,%eax
		sub    $0x400,%eax
		cmp    data_54230,%eax
		jge    jump_1a32b
		mov    data_54220,%ebx
		dec    %ebx
		mov    %ebx,data_54220
		cmp    $0x1,%ebx
		jl     jump_1a323
		xor    %edi,%edi
		mov    %edi,data_54230
		jmp    jump_1a32b
	jump_1a323:
		xor    %esi,%esi
		mov    %esi,data_54228
	jump_1a32b:
		mov    data_54238,%eax
		sub    $0x400,%eax
		cmp    data_5424c,%eax
		jge    jump_1a361
		mov    data_5423c,%ebx
		dec    %ebx
		mov    %ebx,data_5423c
		cmp    $0x1,%ebx
		jl     jump_1a359
		xor    %edi,%edi
		mov    %edi,data_5424c
		jmp    jump_1a361
	jump_1a359:
		xor    %esi,%esi
		mov    %esi,data_54244
	jump_1a361:
		mov    data_54254,%eax
		sub    $0x400,%eax
		cmp    data_54268,%eax
		jge    jump_1a397
		mov    data_54258,%ebx
		dec    %ebx
		mov    %ebx,data_54258
		cmp    $0x1,%ebx
		jl     jump_1a38f
		xor    %edi,%edi
		mov    %edi,data_54268
		jmp    jump_1a397
	jump_1a38f:
		xor    %esi,%esi
		mov    %esi,data_54260
	jump_1a397:
		mov    data_54270,%eax
		sub    $0x400,%eax
		cmp    data_54284,%eax
		jge    jump_1a3cd
		mov    data_54274,%ebx
		dec    %ebx
		mov    %ebx,data_54274
		cmp    $0x1,%ebx
		jl     jump_1a3c5
		xor    %edi,%edi
		mov    %edi,data_54284
		jmp    jump_1a3cd
	jump_1a3c5:
		xor    %esi,%esi
		mov    %esi,data_5427c
	jump_1a3cd:
		cmpl   $0xffff,data_542b0
		jbe    jump_1a3e3
		xor    %ebx,%ebx
		mov    %ebx,data_542a8
		jmp    jump_1a3e9
	jump_1a3e3:
		incl   data_542a8
	jump_1a3e9:
		mov    data_542b0,%ecx
		test   %ecx,%ecx
		ja     jump_1a3fd
		xor    %edi,%edi
		mov    %edi,data_542b0
		jmp    jump_1a406
	jump_1a3fd:
		lea    -0x1(%ecx),%esi
		mov    %esi,data_542b0
	jump_1a406:
		mov    data_5428c,%eax
		add    $0x4268,%eax
		mov    %eax,data_5428c
		cmp    $0xffff,%eax
		jbe    jump_1a42b
		xor    %ebx,%ebx
		mov    %ebx,data_5428c
#if 0
		pushf
		lcall  *data_542b8
#endif
	jump_1a42b:
		mov    $0x20,%eax
		mov    %eax,%edx
#if 0
		call   func_outp_ /* end of interrupt */
#endif
		call   enable_interrupts
		mov    %ebp,%esp
		jmp    jump_19726


/*----------------------------------------------------------------*/
func_1a46c:
/*----------------------------------------------------------------*/
		push   $0x4
		call   func___CHK
		mov    %eax,data_542a8
		ret


/*----------------------------------------------------------------*/
func_1a47c:
/*----------------------------------------------------------------*/
		push   $0x4
		call   func___CHK
		mov    data_542a8,%eax
		ret


/*----------------------------------------------------------------*/
func_1a4a5:
/*----------------------------------------------------------------*/
		push   $0xc
		call   func___CHK
		push   %ebx
		push   %edx
		mov    %eax,%edx
		shl    $0xf,%edx
		mov    $0x3e8,%ebx
		mov    %edx,%eax
		sar    $0x1f,%edx
		idiv   %ebx
		mov    %eax,%edx
		jmp    jump_1a4e3
	jump_1a4c6:
		mov    $0x61,%eax
		call   func_inp_
		test   $0x10,%al
		jne    jump_1a4c6
	jump_1a4d4:
		mov    $0x61,%eax
		call   func_inp_
		test   $0x10,%al
		je     jump_1a4d4
		dec    %edx
	jump_1a4e3:
		test   %edx,%edx
		jg     jump_1a4c6
		pop    %edx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
allocate_dos_memory_block_YA: /* 1a4ea */
/*----------------------------------------------------------------*/
		push   $0x44
		call   func___CHK
		push   %ecx
		push   %esi
		sub    $0x38,%esp
		mov    %edx,%ecx
		mov    %ebx,%esi
		movw   $0x100,0x1c(%esp)
		mov    %ax,0x20(%esp)
		mov    $0x31,%eax
		lea    0x1c(%esp),%edx
		mov    %esp,%ebx
		call   w_dos_int386
		mov    (%esp),%eax
		mov    %ax,(%esi)
		xor    %eax,%eax
		mov    0xc(%esp),%ax
		mov    %eax,(%ecx)
		add    $0x38,%esp
		pop    %esi
		pop    %ecx
		ret


/*----------------------------------------------------------------*/
free_dos_memory_block_YA: /* 1a52e */
/*----------------------------------------------------------------*/
		push   $0x44
		call   func___CHK
		push   %ebx
		push   %edx
		sub    $0x38,%esp
		movw   $0x101,0x1c(%esp)
		mov    %ax,0x28(%esp)
		mov    $0x31,%eax
		lea    0x1c(%esp),%edx
		mov    %esp,%ebx
		call   w_dos_int386
		add    $0x38,%esp
		pop    %edx
		pop    %ebx
		ret


/**
 * @param eax sample rate.
 * @param edx 1 if sound-blaster ADR is not 0. 0 otherwise.
 * @param ebx sound-blaster ADR
 * @param ecx sound-blaster IRQ
 * @param sound-blaster DMA
/*----------------------------------------------------------------*/
func_1a55f:
/*----------------------------------------------------------------*/
		push   $0x48
		call   func___CHK
		push   %esi
		push   %edi
		push   %ebp
		sub    $0x38,%esp
		mov    %eax,%edi
		mov    $0x4268,%ebp
		mov    %edx,soundblaster_adr_is_not_zero
		mov    %ebx,soundblaster_adr
		mov    %ecx,soundblaster_irq
		mov    0x48(%esp),%eax
		mov    %eax,soundblaster_dma
		movw   $0x400,0x1c(%esp)
		mov    $0x31,%eax
		lea    0x1c(%esp),%edx
		mov    %esp,%ebx
#if 1
    mov    $0x70,%al
    movb   %al,0xc(%esp)
    mov    $0x08,%al
    movb   %al,0xd(%esp)
#else
		call   w_dos_int386 /* get DPMI version */
#endif
		xor    %eax,%eax
		mov    0xd(%esp),%al /* current value of virtual master interrupt controller base interrupt */
		xor    %edx,%edx
		mov    0xc(%esp),%dl /* current value of virtual slave interrupt controller base interrupt */
		mov    soundblaster_irq,%ebx
		cmp    $0x8,%ebx
		jge    jump_1a5c3
		add    %ebx,%eax
		jmp    jump_1a5c7
	jump_1a5c3:
		lea    -0x8(%ebx,%edx,1),%eax
	jump_1a5c7:
		mov    %eax,soundblaster_interrupt_number
		xor    %ecx,%ecx
		mov    $0xa,%ebx
	jump_1a5d3:
		mov    %ecx,%edx
		mov    %ecx,%eax
		shl    $0x3,%eax
		sub    %ecx,%eax
		xor    %esi,%esi
		mov    %esi,data_541bc(,%eax,4)
		xor    %ecx,%edx
		mov    %edx,data_541ac(,%eax,4)
		mov    %ebx,data_541b4(,%eax,4)
		mov    %esi,data_541b8(,%eax,4)
		mov    %esi,data_541c0(,%eax,4)
		inc    %ecx
		cmp    $0x8,%ecx
		jl     jump_1a5d3
		xor    %ecx,%ecx
	jump_1a60b:
		xor    %ebx,%ebx
		mov    %ebx,data_53b2c(,%ecx,8)
		mov    %ebx,data_53b28(,%ecx,8)
		inc    %ecx
		cmp    $0x50,%ecx
		jl     jump_1a60b
		xor    %ecx,%ecx
	jump_1a623:
		xor    %ebx,%ebx
	jump_1a625:
		mov    %ecx,%eax
		add    %ebx,%eax
		sub    $0x80,%eax
		cmp    $0xff,%ax
		jle    jump_1a63c
		mov    $0xff,%eax
		jmp    jump_1a643
	jump_1a63c:
		test   %ax,%ax
		jge    jump_1a643
		xor    %eax,%eax
	jump_1a643:
		mov    %ecx,%edx
		shl    $0x8,%edx
		mov    %al,data_43b28(%edx,%ebx,1)
		inc    %ebx
		cmp    $0x100,%ebx
		jl     jump_1a625
		inc    %ecx
		cmp    $0x100,%ecx
		jl     jump_1a623
		xor    %ecx,%ecx
	jump_1a663:
		xor    %ebx,%ebx
		jmp    jump_1a66f
	jump_1a667:
		cmp    $0x80,%ebx
		jge    jump_1a69f
	jump_1a66f:
		mov    $0x7f,%edx
		sub    %ebx,%edx
		imul   %ecx,%edx
		mov    $0xa,%esi
		mov    %edx,%eax
		sar    $0x1f,%edx
		idiv   %esi
		mov    $0x7f,%edx
		sub    %eax,%edx
		mov    %ecx,%eax
		shl    $0x8,%eax
		mov    %dl,data_43028(%ebx,%eax,1)
		mov    $0xa,%esi
		jmp    jump_1a6bb
	jump_1a69f:
		lea    -0x7f(%ebx),%edx
		imul   %ecx,%edx
		mov    %edx,%eax
		sar    $0x1f,%edx
		idiv   %esi
		add    $0x7f,%eax
		mov    %ecx,%edx
		shl    $0x8,%edx
		mov    %al,data_43028(%edx,%ebx,1)
	jump_1a6bb:
		inc    %ebx
		cmp    $0x100,%ebx
		jl     jump_1a667
		inc    %ecx
		cmp    $0xb,%ecx
		jl     jump_1a663

#if 1
    mov    $1040,%eax /* 0x41 * 16 == 1040 */
    call   w_dos_malloc
    mov    %eax,data_5429c
#else
		mov    $0x41,%eax
		mov    $data_54294,%edx
		mov    $data_542c4,%ebx
		call   allocate_dos_memory_block_YA
		mov    data_542c2,%eax
		sar    $0x10,%eax
		shl    $0x4,%eax
		mov    %eax,data_5429c /* allocated segment */
		xor    %eax,%eax
		mov    %eax,data_54290
#endif
		xor    %ecx,%ecx
	jump_1a6f7:
		mov    data_5429c,%eax
		movb   $0x7f,(%ecx,%eax,1)
		movb   $0x7f,data_53da8(%ecx)
		inc    %ecx
		cmp    $0x400,%ecx
		jl     jump_1a6f7
#if 0
		mov    $0x21,%eax /* master pic data port */
		call   func_inp_
		mov    %eax,pic_saved_masks /* pic data is interrupt mask because no command is issued */
#endif
		cmpl   $0x1,soundblaster_adr_is_not_zero
		jne    jump_1a7c8
#if 0
		call   soundblaster_reset_dsp
		mov    soundblaster_interrupt_number,%eax
		call   func__dos_getvect_
		mov    %dx,data_542c2
		mov    %eax,data_542be
		mov    soundblaster_interrupt_number,%eax
		mov    %cs,%ecx
		mov    $func_19b02,%ebx
		call   func__dos_setvect_
#endif
		mov    soundblaster_irq,%cl
		mov    $0xfe,%edx
		shl    %cl,%edx
		and    pic_saved_masks,%edx
		mov    $0x21,%eax
#if 0
		call   func_outp_
		mov    $0x1,%eax
		call   soundblaster_turn_on_speaker
		mov    %edi,%eax /* sample rate */
		call   soundblaster_set_sample_rate
#endif
		mov    soundblaster_dma,%ebx
		mov    data_5429c,%eax
		mov    $0x400,%edx
#if 0
		call   func_1951e

    /* start DAC. 8-bit sound. DMA mode. playback */
		mov    soundblaster_adr,%eax
		mov    $0x14,%edx
		call   soundblaster_write_to_dsp

		mov    soundblaster_adr,%eax
		mov    $0xff,%edx
		call   soundblaster_write_to_dsp
		mov    soundblaster_adr,%eax
		mov    $0xff,%edx
		call   soundblaster_write_to_dsp
#endif
	jump_1a7c8:
		mov    $0x8,%eax
#if 0
		call   func__dos_getvect_
#endif
		mov    %dx,data_542bc
		mov    %eax,data_542b8
		mov    $0x8,%eax
		mov    %cs,%ecx
		mov    $pit_isr,%ebx
#if 1
    call   w_game_install_pit_isr
#else
		call   func__dos_setvect_
#endif
		call   disable_interrupts
		mov    $0x43,%eax
		mov    $0x36,%edx
#if 0
		call   func_outp_
#endif
		mov    %ebp,%edx
		and    $0xff,%edx
		mov    $0x40,%eax
#if 0
		call   func_outp_
#endif
		mov    %ebp,%edx
		sar    $0x8,%edx
		mov    $0x40,%eax
#if 0
		call   func_outp_
#endif
		call   enable_interrupts
		add    $0x38,%esp
		pop    %ebp
		pop    %edi
		pop    %esi
		ret    $0x4


/**
 * @param eax sample rate (ex. 22000)
 */
/*----------------------------------------------------------------*/
soundblaster_set_sample_rate: /* 1a832 */
/*----------------------------------------------------------------*/
		push   $0xc
		call   func___CHK
		push   %ebx
		push   %edx
		mov    %eax,%ebx
		mov    soundblaster_adr,%eax
		mov    $0x40,%edx /* set time constant. this is used to set something like sample freq. */
		call   soundblaster_write_to_dsp
		mov    $0xf4240,%eax
		mov    %eax,%edx
		sar    $0x1f,%edx
		idiv   %ebx
		mov    $0x100,%edx
		sub    %eax,%edx
		mov    %edx,%eax
		xor    %edx,%edx
		mov    %al,%dl
		mov    soundblaster_adr,%eax
		call   soundblaster_write_to_dsp
		pop    %edx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_1a875:
/*----------------------------------------------------------------*/
		push   $0x10
		call   func___CHK
		push   %ebx
		push   %ecx
		push   %edx
		call   disable_interrupts
		mov    pic_saved_masks,%edx
		mov    $0x21,%eax
#if 0
		call   func_outp_
#endif
		cmpl   $0x1,soundblaster_adr_is_not_zero
		jne    jump_1a8c8
#if 0
		call   soundblaster_reset_dsp
#endif
		xor    %eax,%eax
		call   soundblaster_turn_on_speaker
		call   func_1ad54
		mov    data_542c2,%cx
		mov    data_542be,%ebx
		mov    soundblaster_interrupt_number,%eax
#if 0
		call   func__dos_setvect_
#endif
	jump_1a8c8:
		mov    data_542bc,%cx
		mov    data_542b8,%ebx
		mov    $0x8,%eax
#if 1
    call   w_game_uninstall_pit_isr
#else
		call   func__dos_setvect_
#endif
		mov    $0x43,%eax
		mov    $0x36,%edx
#if 0
		call   func_outp_
#endif
		mov    $0x40,%eax
		xor    %edx,%edx
#if 0
		call   func_outp_
#endif
		mov    $0x40,%eax
		xor    %edx,%edx
#if 0
		call   func_outp_
#endif
		call   enable_interrupts
#if 1
    mov    data_5429c,%eax
    call   w_dos_free
#else
		mov    data_54294,%eax
		call   free_dos_memory_block_YA
#endif
		call   func_1acd0
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_1a91e:
/*----------------------------------------------------------------*/
		push   $0x18
		call   func___CHK
		push   %ebx
		push   %ecx
		push   %edx
		push   %esi
		push   %edi
		mov    %eax,%ecx
		call   w_dos_ftell
		mov    %eax,%esi
		mov    %ecx,%eax
		xor    %edx,%edx
		mov    $0x2,%ebx
		call   w_dos_fseek
		mov    %ecx,%eax
		call   w_dos_ftell
		mov    %eax,%edi
		mov    %ecx,%eax
		mov    %esi,%edx
		xor    %ebx,%ebx
		call   w_dos_fseek
		mov    %edi,%eax
		jmp    jump_19acc


/*----------------------------------------------------------------*/
func_1a95f:
/*----------------------------------------------------------------*/
		push   $0x10
		call   func___CHK
		push   %ebx
		push   %ecx
		push   %esi
		mov    %edx,%ebx
		cmp    $0x50,%edx
		jl     jump_1a97c
	jump_1a973:
		mov    $0xffffffff,%eax
		pop    %esi
		pop    %ecx
		pop    %ebx
		ret
	jump_1a97c:
		mov    $data_208d0,%edx
		call   w_dos_fopen
		mov    %eax,%esi
		mov    %ebx,%ecx
		shl    $0x3,%ecx
		mov    data_53b2c(%ecx),%edx
		test   %edx,%edx
		je     jump_1a99e
		mov    %edx,%eax
		call   w_dos_free
	jump_1a99e:
		mov    %esi,%eax
		call   func_1a91e
		mov    %ebx,%ecx
		shl    $0x3,%ecx
		mov    %eax,data_53b28(%ecx)
		call   w_dos_malloc
		mov    %eax,data_53b2c(%ecx)
		test   %eax,%eax
		je     jump_1a973
		mov    %esi,%eax
		xor    %edx,%edx
		xor    %ebx,%ebx
		call   w_dos_fseek
		mov    data_53b28(%ecx),%ebx
		mov    data_53b2c(%ecx),%eax
		mov    $0x1,%edx
		mov    %esi,%ecx
		call   w_dos_fread
		mov    %esi,%eax
		call   w_dos_fclose
		mov    $0x1,%eax
		pop    %esi
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_1ab1b:
/*----------------------------------------------------------------*/
		push   $0x10
		call   func___CHK
		push   %ecx
		push   %esi
		push   %ebp
		mov    %eax,%ecx
		mov    soundblaster_adr_is_not_zero,%esi
		cmp    $0x1,%esi
		jne    jump_1ab80
		cmp    $0x50,%edx
		jge    jump_1ab80
		mov    %esi,%eax
		call   func_1ac08
		movl   $0x1f40,data_541a8
		mov    %edx,%eax
		mov    data_53b28(,%edx,8),%edx
		mov    %edx,data_541ac
		mov    %ebx,data_541b0
		mov    data_53b2c(,%eax,8),%eax
		mov    %eax,data_541bc
		xor    %ebp,%ebp
		mov    %ebp,data_541c0
		mov    %ecx,data_541b4
		mov    %esi,data_541b8
#if 1
    /* play sound */
    push   %eax
    pushl  $0
    pushl  data_541ac
    pushl  data_541bc
    call   w_audio_sound_play
    add    $12,%esp
    pop    %eax
#endif
	jump_1ab80:
		pop    %ebp
		pop    %esi
		pop    %ecx
		ret


/*----------------------------------------------------------------*/
func_1ac08:
/*----------------------------------------------------------------*/
		push   $0x8
		call   func___CHK
		push   %edx
		cmp    $0x7,%eax
		jle    jump_1ac1f
		mov    $0xffffffff,%eax
		pop    %edx
		ret
	jump_1ac1f:
		mov    %eax,%edx
		shl    $0x3,%eax
		sub    %edx,%eax
		xor    %edx,%edx
		mov    %edx,data_541b8(,%eax,4)
		mov    $0x1,%eax
		pop    %edx
		ret


/*----------------------------------------------------------------*/
func_1acd0:
/*----------------------------------------------------------------*/
		push   $0x14
		call   func___CHK
		push   %ebx
		push   %ecx
		push   %edx
		push   %esi
		xor    %edx,%edx
	jump_1ace0:
		mov    %edx,%eax
		call   func_1ac08
		inc    %edx
		cmp    $0x8,%edx
		jl     jump_1ace0
		xor    %edx,%edx
	jump_1acef:
		mov    %edx,%ebx
		shl    $0x3,%ebx
		mov    data_53b2c(%ebx),%ecx
		test   %ecx,%ecx
		je     jump_1ad0d
		mov    %ecx,%eax
		call   w_dos_free
		xor    %esi,%esi
		mov    %esi,data_53b2c(%ebx)
	jump_1ad0d:
		inc    %edx
		cmp    $0x50,%edx
		jl     jump_1acef
		mov    $0x1,%eax
		pop    %esi
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
soundblaster_turn_on_speaker: /* 1ad1d */
/*----------------------------------------------------------------*/
		push   $0x8
		call   func___CHK
		push   %edx
		mov    soundblaster_adr_is_not_zero,%edx
		cmp    $0x1,%edx
		jne    jump_1ad52
		cmp    %edx,%eax
		jne    jump_1ad43
		mov    soundblaster_adr,%eax
		mov    $0xd1,%edx
		jmp    jump_1ad4d
	jump_1ad43:
		mov    soundblaster_adr,%eax
		mov    $0xd3,%edx
	jump_1ad4d:
		call   soundblaster_write_to_dsp
	jump_1ad52:
		pop    %edx
		ret


/*----------------------------------------------------------------*/
func_1ad54:
/*----------------------------------------------------------------*/
		push   $0x8
		call   func___CHK
		push   %edx
		cmpl   $0x1,soundblaster_adr_is_not_zero
		jne    jump_1ad77
		mov    soundblaster_adr,%eax
		mov    $0xd0,%edx
		call   soundblaster_write_to_dsp
	jump_1ad77:
		pop    %edx
		ret


/*----------------------------------------------------------------*/
func_1adb3:
/*----------------------------------------------------------------*/
		push   %edx
		push   %ebx
		push   %ecx
		push   %esi
		push   %edi
		mov    data_2092c,%esi
		mov    %ds,%dx
		mov    %dx,%es
		xor    %dx,%dx
	jump_1adc7:
		mov    $0x4f05,%ax
		mov    $0x0,%bx
		int    $0x10
#if 1
    mov    EXTERN(video_buffer),%edi
#else
		mov    $0xa0000,%edi
#endif
		mov    $0x4000,%ecx
		rep movsl %ds:(%esi),%es:(%edi)
		inc    %dx
		cmp    $0x4,%dx
		jne    jump_1adc7
		mov    $0x4f05,%ax
		mov    $0x0,%bx
		int    $0x10
#if 1
    mov    EXTERN(video_buffer),%edi
#else
		mov    $0xa0000,%edi
#endif
		mov    $0x2c00,%ecx
		rep movsl %ds:(%esi),%es:(%edi)
		pop    %edi
		pop    %esi
		pop    %ecx
		pop    %ebx
		pop    %edx
		ret


/*----------------------------------------------------------------*/
func__nmalloc_:	/* 0x1ae01 */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %edx
		push   %esi
		push   %edi
		push   %es
		push   %fs
		push   %gs
		push   %ebp
		sub    $0x4,%esp
		mov    %eax,%esi
		test   %eax,%eax
		je     jump_1ae1a
		cmp    $0xffffffd4,%eax
		jbe    jump_1ae21
	jump_1ae1a:
		xor    %eax,%eax
		jmp    jump_1aed5
	jump_1ae21:
		mov    $data_20dac,%ebp
		lea    0x3(%esi),%edi
		xor    %ah,%ah
		xor    %ebx,%ebx
		mov    %ah,(%esp)
		and    $0xfffc,%di
	jump_1ae34:
		mov    %edi,%eax
		cmp    $0xc,%edi
		jae    jump_1ae40
		mov    $0xc,%eax
	jump_1ae40:
		cmp    data_20db4,%eax
		jbe    jump_1ae60
		mov    data_20db0,%ecx
		test   %ecx,%ecx
		jne    jump_1ae98
	jump_1ae52:
		mov    %ecx,data_20db4
		mov    data_20dac,%ecx
		jmp    jump_1ae98
	jump_1ae60:
		xor    %ecx,%ecx
		jmp    jump_1ae52
	jump_1ae64:
		mov    %ds,%edx
		mov    %ebp,%eax
		mov    %ecx,data_20db0
		and    $0xffff,%edx
		mov    %esi,%eax
		mov    %ecx,%ebx
		call   func___MemAllocator
		mov    %eax,%ebx
		test   %eax,%eax
		jne    jump_1aecb
		mov    data_20db4,%eax
		mov    0x14(%ecx),%edx
		cmp    %eax,%edx
		jbe    jump_1ae95
		mov    %edx,data_20db4
	jump_1ae95:
		mov    0x8(%ecx),%ecx
	jump_1ae98:
		test   %ecx,%ecx
		jne    jump_1ae64
		cmpb   $0x0,(%esp)
		jne    jump_1aead
		mov    %esi,%eax
		call   func___ExpandDGROUP_
		test   %eax,%eax
		jne    jump_1aec2
	jump_1aead:
		mov    %esi,%eax
		call   func_1caff
		test   %eax,%eax
		je     jump_1aecb
		xor    %cl,%cl
		mov    %cl,(%esp)
		jmp    jump_1ae34
	jump_1aec2:
		movb   $0x1,(%esp)
		jmp    jump_1ae34
	jump_1aecb:
		xor    %ch,%ch
		mov    %ebx,%eax
		mov    %ch,data_542c9
	jump_1aed5:
		add    $0x4,%esp
		pop    %ebp
		pop    %gs
		pop    %fs
		pop    %es
		pop    %edi
		pop    %esi
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func__nfree_:	/* 0x1aee4 */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %edx
		push   %ebp
		mov    %eax,%ebx
		mov    data_20dac,%ecx
		jmp    jump_1aefd
	jump_1aef2:
		cmp    %ebx,%ecx
		ja     jump_1aefa
		cmp    %edx,%ebx
		jb     jump_1af04
	jump_1aefa:
		mov    0x8(%ecx),%ecx
	jump_1aefd:
		mov    0x8(%ecx),%edx
		test   %edx,%edx
		jne    jump_1aef2
	jump_1af04:
		mov    $data_20dac,%eax
		mov    %ds,%edx
		and    $0xffff,%edx
		mov    %ebx,%eax
		mov    %ecx,%ebx
		call   func___MemFree
		cmp    data_20db0,%ecx
		je     jump_1af35
		mov    data_20db4,%ebp
		mov    0x14(%ecx),%edx
		cmp    %ebp,%edx
		jbe    jump_1af35
		mov    %edx,data_20db4
	jump_1af35:
		xor    %ah,%ah
		mov    %ah,data_542c9
		pop    %ebp
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_open_:	/* 0x1af42 */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %edx
		lea    0x14(%esp),%eax
		add    $0x4,%eax
		mov    -0x4(%eax),%eax
		push   %eax
		push   $0x0
		mov    0x18(%esp),%edx
		push   %edx
		mov    0x18(%esp),%ebx
		push   %ebx
		call   func_sopen_
		add    $0x10,%esp
		pop    %edx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_sopen_:	/* 0x1af66 */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %edx
		push   %esi
		push   %edi
		sub    $0xc,%esp
		mov    0x24(%esp),%esi
	jump_1af72:
		cmpb   $0x20,(%esi)
		jne    jump_1af7a
		inc    %esi
		jmp    jump_1af72
	jump_1af7a:
		mov    0x28(%esp),%eax
		and    $0x83,%eax
		mov    %eax,(%esp)
		mov    0x2c(%esp),%dl
		mov    (%esp),%al
		or     %dl,%al
		mov    %esi,%edx
		mov    $0xffffffff,%edi
		mov    $0x3d,%ah
		int    $0x21
		rcl    %eax
		ror    %eax
		mov    %eax,0x4(%esp)
		test   %eax,%eax
		jl     jump_1afad
		xor    %edi,%edi
		mov    0x4(%esp),%di
	jump_1afad:
		mov    0x28(%esp),%dh
		test   $0x3,%dh
		je     jump_1b027
		cmp    $0xffffffff,%edi
		je     jump_1b027
		mov    %edi,%eax
		call   func_isatty_
		test   %eax,%eax
		jne    jump_1b027
		testb  $0x4,0x29(%esp)
		je     jump_1afef
		mov    %edi,%ebx
		mov    $0x3e,%ah
		int    $0x21
		rcl    %eax
		ror    %eax
		mov    $0x7,%eax
		call   func___set_errno_
		mov    $0xffffffff,%eax
		jmp    jump_1b122
	jump_1afef:
		test   $0x40,%dh
		je     jump_1b027
		lea    0x8(%esp),%edx
		mov    %edi,%ebx
		xor    %ecx,%ecx
		mov    $0x40,%ah
		int    $0x21
		rcl    %eax
		ror    %eax
		mov    %eax,0x4(%esp)
		test   %eax,%eax
		jge    jump_1b027
		mov    %edi,%ebx
		mov    $0x3e,%ah
		int    $0x21
		rcl    %eax
		ror    %eax
	jump_1b016:
		xor    %eax,%eax
		mov    0x4(%esp),%ax
		call   func___set_errno_dos_
		jmp    jump_1b122
	jump_1b027:
		cmp    $0xffffffff,%edi
		jne    jump_1b0b5
		testb  $0x20,0x28(%esp)
		je     jump_1b016
		cmpw   $0x2,0x4(%esp)
		jne    jump_1b016
		lea    0x30(%esp),%eax
		add    $0x4,%eax
		mov    -0x4(%eax),%eax
		test   %eax,%eax
		jne    jump_1b052
		mov    $0x180,%eax
	jump_1b052:
		xor    data_20df4,%eax
		xor    %ecx,%ecx
		test   $0x80,%al
		jne    jump_1b063
		mov    $0x1,%ecx
	jump_1b063:
		mov    %esi,%edx
		and    $0xff,%ecx
		mov    $0x3c,%ah
		int    $0x21
		rcl    %eax
		ror    %eax
		mov    %eax,0x4(%esp)
		test   %eax,%eax
		jl     jump_1b016
		mov    0x4(%esp),%ebx
		mov    $0x3e,%ah
		int    $0x21
		rcl    %eax
		ror    %eax
		mov    %eax,0x4(%esp)
		test   %eax,%eax
		jl     jump_1b016
		mov    (%esp),%al
		mov    0x2c(%esp),%ch
		mov    %esi,%edx
		or     %ch,%al
		mov    $0x3d,%ah
		int    $0x21
		rcl    %eax
		ror    %eax
		mov    %eax,0x4(%esp)
		test   %eax,%eax
		jl     jump_1b016
		xor    %edi,%edi
		mov    0x4(%esp),%di
	jump_1b0b5:
		mov    %edi,%eax
		call   func___IOMode_
		and    $0x3c,%al
		mov    %eax,%edx
		mov    %edi,%eax
		call   func_isatty_
		test   %eax,%eax
		je     jump_1b0ce
		or     $0x20,%dh
	jump_1b0ce:
		andb   $0x7f,(%esp)
		cmpl   $0x2,(%esp)
		jne    jump_1b0db
		or     $0x3,%dl
	jump_1b0db:
		cmpl   $0x0,(%esp)
		jne    jump_1b0e4
		or     $0x1,%dl
	jump_1b0e4:
		cmpl   $0x1,(%esp)
		jne    jump_1b0ed
		or     $0x2,%dl
	jump_1b0ed:
		testb  $0x10,0x28(%esp)
		je     jump_1b0f7
		or     $0x80,%dl
	jump_1b0f7:
		mov    %edx,%eax
		mov    0x29(%esp),%bl
		or     $0x40,%al
		test   $0x3,%bl
		je     jump_1b10b
		test   $0x2,%bl
		je     jump_1b119
		jmp    jump_1b117
	jump_1b10b:
		cmpl   $0x200,data_21059
		jne    jump_1b119
	jump_1b117:
		mov    %eax,%edx
	jump_1b119:
		mov    %edi,%eax
		call   func___SetIOMode_
		mov    %edi,%eax
	jump_1b122:
		add    $0xc,%esp
		pop    %edi
		pop    %esi
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_lseek_:	/* 0x1b190 */
/*----------------------------------------------------------------*/
		push   %ecx
		push   %edi
		sub    $0x4,%esp
		mov    %eax,%ecx
		mov    %ebx,%eax
		mov    %esp,%edi
		mov    %ecx,%ebx
		mov    $0x42,%ah
		mov    %edx,%ecx
		shr    $0x10,%ecx
		int    $0x21
		mov    %ax,%ss:(%edi)
		mov    %dx,%ss:0x2(%edi)
		rcl    %eax
		ror    %eax
		test   %eax,%eax
		jge    jump_1b1c8
		and    $0xffff,%eax
		call   func___set_errno_dos_
		mov    $0xffffffff,%eax
		jmp    jump_1b1cb
	jump_1b1c8:
		mov    (%esp),%eax
	jump_1b1cb:
		add    $0x4,%esp
		pop    %edi
		pop    %ecx
		ret


/*----------------------------------------------------------------*/
func_read_:	/* 0x1b1d1 */
/*----------------------------------------------------------------*/
		push   %ecx
		push   %esi
		push   %edi
		push   %ebp
		sub    $0x14,%esp
		push   %eax
		mov    %edx,%ebp
		mov    %ebx,%ecx
		call   func___IOMode_
		mov    %eax,%edx
		mov    %eax,0xc(%esp)
		test   %eax,%eax
		jne    jump_1b200
		mov    $0x4,%eax
	jump_1b1f1:
		call   func___set_errno_
		mov    $0xffffffff,%eax
		jmp    jump_1b2dc
	jump_1b200:
		test   $0x1,%al
		jne    jump_1b20b
		mov    $0x6,%eax
		jmp    jump_1b1f1
	jump_1b20b:
		test   $0x40,%al
		je     jump_1b239
		mov    (%esp),%ebx
		mov    %ebp,%edx
		mov    $0x3f,%ah
		int    $0x21
		rcl    %eax
		ror    %eax
		mov    %eax,%esi
		mov    %eax,0x8(%esp)
		test   %eax,%eax
		jge    jump_1b2d8
		xor    %eax,%eax
		mov    %si,%ax
	jump_1b22f:
		call   func___set_errno_dos_
		jmp    jump_1b2dc
	jump_1b239:
		xor    %eax,%edx
		mov    %ebx,0x4(%esp)
		mov    %edx,0x8(%esp)
	jump_1b243:
		mov    (%esp),%ebx
		mov    0x4(%esp),%ecx
		mov    %ebp,%edx
		mov    $0x3f,%ah
		int    $0x21
		rcl    %eax
		ror    %eax
		mov    %eax,%ebx
		mov    %eax,%esi
		mov    %eax,0x10(%esp)
		test   %eax,%eax
		jge    jump_1b267
		xor    %eax,%eax
		mov    %bx,%ax
		jmp    jump_1b22f
	jump_1b267:
		je     jump_1b2d8
		mov    0x8(%esp),%esi
		mov    %ebp,%eax
		xor    %edi,%edi
		lea    (%ebx,%ebp,1),%ecx
		xor    %edx,%edx
		mov    %ecx,0x14(%esp)
		jmp    jump_1b2b1
	jump_1b280:
		mov    (%eax),%bl
		cmp    $0x1a,%bl
		jne    jump_1b2a1
		mov    0x10(%esp),%ebp
		mov    %edi,%edx
		mov    (%esp),%eax
		sub    %ebp,%edx
		mov    $0x1,%ebx
		inc    %edx
		call   w_dos_lseek
		mov    %esi,%eax
		jmp    jump_1b2dc
	jump_1b2a1:
		cmp    $0xd,%bl
		je     jump_1b2af
		mov    %edx,%ebx
		inc    %esi
		mov    (%eax),%cl
		inc    %edx
		mov    %cl,(%ebx,%ebp,1)
	jump_1b2af:
		inc    %eax
		inc    %edi
	jump_1b2b1:
		cmp    0x14(%esp),%eax
		jb     jump_1b280
		mov    0x4(%esp),%ecx
		mov    0xd(%esp),%ah
		mov    %esi,0x8(%esp)
		sub    %edx,%ecx
		add    %edx,%ebp
		mov    %ecx,0x4(%esp)
		test   $0x20,%ah
		jne    jump_1b2d8
		test   %ecx,%ecx
		jne    jump_1b243
	jump_1b2d8:
		mov    0x8(%esp),%eax
	jump_1b2dc:
		add    $0x18,%esp
		pop    %ebp
		pop    %edi
		pop    %esi
		pop    %ecx
		ret


/*----------------------------------------------------------------*/
func_j___close_:	/* 0x1b2e4 */
/*----------------------------------------------------------------*/
		jmp    func___close_


/*----------------------------------------------------------------*/
func_1b2e9:
/*----------------------------------------------------------------*/
		cmpl   $0x0,data_21088
		je     jump_1b2f8
		mov    $0x1,%eax
		ret
	jump_1b2f8:
		mov    $0xb,%ah
		int    $0x21
		cbtw
		cwtl
		ret


/*----------------------------------------------------------------*/
func_mem_putc_:	/* 0x1b305 */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		mov    %dl,%bl
		mov    (%eax),%edx
		lea    0x1(%edx),%ecx
		mov    %ecx,(%eax)
		mov    %bl,(%edx)
		incl   0x10(%eax)
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_vsprintf_:	/* 0x1b318 */
/*----------------------------------------------------------------*/
		push   %ecx
		push   %esi
		mov    %eax,%esi
		mov    $func_mem_putc_,%ecx
		call   func___prtf_
		movb   $0x0,(%esi,%eax,1)
		pop    %esi
		pop    %ecx
		ret


/*----------------------------------------------------------------*/
func___null_int23_exit_:	/* 0x1b32d */
/*----------------------------------------------------------------*/
		ret


/*----------------------------------------------------------------*/
func_exit_:	/* 0x1b32e */
/*----------------------------------------------------------------*/
		push   %edx
		mov    %eax,%edx
		call   *data_20db8
		call   *data_20dbc
		mov    %edx,%eax
		call   func__exit_
		pop    %edx
		ret


/*----------------------------------------------------------------*/
func__exit_:	/* 0x1b346 */
/*----------------------------------------------------------------*/
		push   %edx
		mov    %eax,%edx
		call   *data_20dbc
		call   *data_20dc0
		mov    %edx,%eax
		jmp    func___exit_


/*----------------------------------------------------------------*/
func_puts_:	/* 0x1b35c */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %edx
		mov    $data_20e6a,%edx
		call   func_fputs_
		mov    %eax,%ebx
		cmp    $0xffffffff,%eax
		je     jump_1b386
		mov    $0xa,%eax
		mov    $data_20e6a,%edx
		call   func_fputc_
		cmp    $0xa,%eax
		jne    jump_1b386
		lea    0x1(%ebx),%eax
	jump_1b386:
		pop    %edx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_creat_:	/* 0x1b389 */
/*----------------------------------------------------------------*/
		push   %edx
		push   $0x62
		push   %eax
		call   w_dos_open
		add    $0xc,%esp
		ret


/*----------------------------------------------------------------*/
func_printf_:	/* 0x1b396 */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %edx
		sub    $0x4,%esp
		lea    0x14(%esp),%ebx
		mov    $data_20e6a,%eax
		mov    0x10(%esp),%edx
		mov    %ebx,(%esp)
		mov    %esp,%ebx
		call   func___fprtf_
		add    $0x4,%esp
		pop    %edx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_getch_:	/* 0x1b3b8 */
/*----------------------------------------------------------------*/
		push   %edx
		xor    %edx,%edx
		mov    data_21088,%eax
		mov    %edx,data_21088
		test   %eax,%eax
		jne    jump_1b3d3
		mov    $0x8,%ah
		int    $0x21
		and    $0xff,%eax
	jump_1b3d3:
		pop    %edx
		ret


/*----------------------------------------------------------------*/
func_filelength_:	/* 0x1b3d5 */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %edx
		push   %esi
		push   %edi
		mov    %eax,%ecx
		mov    $0x1,%ebx
		xor    %edx,%edx
		call   w_dos_lseek
		mov    %eax,%esi
		cmp    $0xffffffff,%eax
		je     jump_1b40c
		mov    $0x2,%ebx
		mov    %ecx,%eax
		xor    %edx,%edx
		call   w_dos_lseek
		mov    %eax,%edi
		mov    %esi,%edx
		xor    %ebx,%ebx
		mov    %ecx,%eax
		call   w_dos_lseek
		mov    %edi,%eax
	jump_1b40c:
		pop    %edi
		pop    %esi
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_write_:	/* 0x1b412 */
/*----------------------------------------------------------------*/
		push   %ecx
		push   %esi
		push   %edi
		push   %ebp
		mov    %esp,%ebp
		sub    $0x18,%esp
		push   %eax
		push   %edx
		push   %ebx
		call   func___IOMode_
		mov    %eax,%edx
		mov    %eax,-0x18(%ebp)
		test   %eax,%eax
		jne    jump_1b440
		mov    $0x4,%eax
	jump_1b431:
		call   func___set_errno_
		mov    $0xffffffff,%eax
		jmp    jump_1b5dc
	jump_1b440:
		test   $0x2,%al
		jne    jump_1b44b
		mov    $0x6,%eax
		jmp    jump_1b431
	jump_1b44b:
		test   $0x80,%al
		je     jump_1b482
		mov    -0x1c(%ebp),%ebx
		xor    %eax,%edx
		mov    $0x2,%al
		mov    $0x42,%ah
		mov    %edx,%ecx
		shr    $0x10,%ecx
		int    $0x21
		rcl    %dx
		ror    %dx
		shl    $0x10,%edx
		mov    %ax,%dx
		mov    %edx,-0x10(%ebp)
		test   %edx,%edx
		jge    jump_1b482
	jump_1b472:
		xor    %eax,%eax
		mov    -0x10(%ebp),%ax
		call   func___set_errno_dos_
		jmp    jump_1b5dc
	jump_1b482:
		testb  $0x40,-0x18(%ebp)
		je     jump_1b4bd
		mov    -0x1c(%ebp),%ebx
		mov    -0x20(%ebp),%edx
		mov    -0x24(%ebp),%ecx
		mov    $0x40,%ah
		int    $0x21
		rcl    %eax
		ror    %eax
		mov    %eax,%edx
		mov    %eax,-0x10(%ebp)
		test   %eax,%eax
		jl     jump_1b472
		cmp    -0x24(%ebp),%eax
		je     jump_1b5d9
		mov    $0xc,%eax
		call   func___set_errno_
		mov    %edx,-0x24(%ebp)
		jmp    jump_1b5d9
	jump_1b4bd:
		call   func_1d889
		mov    %eax,%edx
		cmp    $0xb0,%eax
		jae    jump_1b4d0
		call   func___STKOVERFLOW_
	jump_1b4d0:
		mov    $0x200,%edi
		cmp    $0x230,%edx
		jae    jump_1b4e2
		mov    $0x80,%edi
	jump_1b4e2:
		lea    0x3(%edi),%eax
		xor    %edx,%edx
		and    $0xfc,%al
		xor    %esi,%esi
		sub    %eax,%esp
		mov    %edx,-0x4(%ebp)
		mov    %edx,-0x14(%ebp)
		mov    -0x20(%ebp),%eax
		mov    %esp,-0x8(%ebp)
		mov    %eax,-0xc(%ebp)
	jump_1b4fc:
		mov    -0x4(%ebp),%eax
		cmp    -0x24(%ebp),%eax
		jae    jump_1b5a3
		mov    -0xc(%ebp),%eax
		cmpb   $0xa,(%eax)
		jne    jump_1b558
		mov    -0x8(%ebp),%eax
		movb   $0xd,(%esi,%eax,1)
		inc    %esi
		cmp    %edi,%esi
		jne    jump_1b558
		mov    -0x1c(%ebp),%ebx
		mov    %eax,%edx
		mov    %edi,%ecx
		mov    $0x40,%ah
		int    $0x21
		rcl    %eax
		ror    %eax
		mov    %eax,%esi
		mov    %eax,-0x10(%ebp)
		test   %eax,%eax
		jl     jump_1b472
		cmp    %edi,%eax
		je     jump_1b550
	jump_1b53c:
		mov    $0xc,%eax
		call   func___set_errno_
		mov    -0x14(%ebp),%eax
		add    %esi,%eax
		jmp    jump_1b5dc
	jump_1b550:
		mov    -0x4(%ebp),%eax
		xor    %edi,%esi
		mov    %eax,-0x14(%ebp)
	jump_1b558:
		mov    -0x8(%ebp),%eax
		mov    -0xc(%ebp),%edx
		mov    -0xc(%ebp),%ebx
		mov    -0x4(%ebp),%ecx
		inc    %ebx
		inc    %ecx
		mov    (%edx),%dl
		mov    %ebx,-0xc(%ebp)
		mov    %dl,(%esi,%eax,1)
		inc    %esi
		mov    %ecx,-0x4(%ebp)
		cmp    %edi,%esi
		jne    jump_1b4fc
		mov    -0x1c(%ebp),%ebx
		mov    %eax,%edx
		mov    %edi,%ecx
		mov    $0x40,%ah
		int    $0x21
		rcl    %eax
		ror    %eax
		mov    %eax,%esi
		mov    %eax,-0x10(%ebp)
		test   %eax,%eax
		jl     jump_1b472
		cmp    %edi,%eax
		jne    jump_1b53c
		mov    -0x4(%ebp),%eax
		xor    %edi,%esi
		mov    %eax,-0x14(%ebp)
		jmp    jump_1b4fc
	jump_1b5a3:
		test   %esi,%esi
		je     jump_1b5d9
		mov    -0x1c(%ebp),%ebx
		mov    -0x8(%ebp),%edx
		mov    %esi,%ecx
		mov    $0x40,%ah
		int    $0x21
		rcl    %eax
		ror    %eax
		mov    %eax,%edx
		mov    %eax,-0x10(%ebp)
		test   %eax,%eax
		jl     jump_1b472
		cmp    %esi,%eax
		je     jump_1b5d9
		mov    $0xc,%eax
		call   func___set_errno_
		mov    -0x14(%ebp),%eax
		add    %edx,%eax
		jmp    jump_1b5dc
	jump_1b5d9:
		mov    -0x24(%ebp),%eax
	jump_1b5dc:
		mov    %ebp,%esp
		pop    %ebp
		pop    %edi
		pop    %esi
		pop    %ecx
		ret


/*----------------------------------------------------------------*/
func_1b5e4: /* 1b5e4 */
/*----------------------------------------------------------------*/
		push   %ecx
		push   %eax
		push   %edx
		mov    %ebx,%edx
		mov    $0x1a,%ah
		int    $0x21
		pop    %ecx
		pop    %edx
		mov    $0x4e,%ah
		int    $0x21
		call   func___doserror_
		mov    %ebx,%edx
		call   func_1b620
		pop    %ecx
		ret


/*----------------------------------------------------------------*/
func_1b620:
/*----------------------------------------------------------------*/
		cmpb   $0x9,data_21096
		jne    jump_1b642
		push   %eax
		push   %ebx
		push   %ecx
		push   %esi
		push   %edi
		mov    $0x2f,%ah
		int    $0x21
		mov    %ebx,%esi
		mov    %edx,%edi
		mov    $0x2b,%ecx
		rep movsb %ds:(%esi),%es:(%edi)
		pop    %edi
		pop    %esi
		pop    %ecx
		pop    %ebx
		pop    %eax
	jump_1b642:
		ret
.data
data_1b666:
		.string "0123456789abcdefghijklmnopqrstuvwxyz"
.text


/*----------------------------------------------------------------*/
func_utoa_:	/* 0x1b68b */
/*----------------------------------------------------------------*/
		push   %ecx
		push   %esi
		push   %edi
		push   %ebp
		sub    $0x28,%esp
		mov    %edx,%ebp
		mov    %ebx,%edi
		mov    %edx,%esi
		xor    %dl,%dl
		lea    0x1(%esp),%ecx
		mov    %dl,(%esp)
	jump_1b6a1:
		lea    0x24(%esp),%ebx
		mov    %edi,0x24(%esp)
		xor    %edx,%edx
		divl   (%ebx)
		mov    %eax,(%ebx)
		mov    data_1b666(%edx),%al
		mov    %al,(%ecx)
		mov    0x24(%esp),%eax
		inc    %ecx
		test   %eax,%eax
		jne    jump_1b6a1
	jump_1b6c1:
		dec    %ecx
		mov    (%ecx),%al
		mov    %al,(%esi)
		inc    %esi
		test   %al,%al
		jne    jump_1b6c1
		mov    %ebp,%eax
		add    $0x28,%esp
		pop    %ebp
		pop    %edi
		pop    %esi
		pop    %ecx
		ret


/*----------------------------------------------------------------*/
func_itoa_:	/* 0x1b6d5 */
/*----------------------------------------------------------------*/
		push   %ecx
		mov    %edx,%ecx
		cmp    $0xa,%ebx
		jne    jump_1b6e7
		test   %eax,%eax
		jge    jump_1b6e7
		neg    %eax
		movb   $0x2d,(%edx)
		inc    %edx
	jump_1b6e7:
		call   func_utoa_
		mov    %ecx,%eax
		pop    %ecx
		ret


/*----------------------------------------------------------------*/
func___open_flags_:	/* 0x1b6f0 */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %edx
		sub    $0x4,%esp
		mov    %eax,%edx
		xor    %eax,%eax
		mov    (%edx),%al
		xor    %ebx,%ebx
		call   func_tolower_
		mov    %al,(%esp)
		cmp    $0x72,%al
		je     jump_1b723
		cmp    $0x77,%al
		je     jump_1b723
		cmp    $0x61,%al
		je     jump_1b723
		mov    $0x9,%eax
		call   func___set_errno_
		xor    %eax,%eax
		jmp    jump_1b79d
	jump_1b723:
		mov    %ebx,%eax
		mov    0x1(%edx),%cl
		or     $0x3,%al
		cmp    $0x2b,%cl
		jne    jump_1b750
		mov    %eax,%ebx
		mov    0x2(%edx),%cl
		or     $0x40,%al
		cmp    $0x62,%cl
		je     jump_1b74c
		cmp    $0x74,%cl
		je     jump_1b783
		cmpl   $0x200,data_21059
	jump_1b74a:
		jne    jump_1b783
	jump_1b74c:
		mov    %eax,%ebx
		jmp    jump_1b783
	jump_1b750:
		mov    %ebx,%ecx
		or     $0x40,%cl
		cmpb   $0x62,0x1(%edx)
		jne    jump_1b769
		mov    0x2(%edx),%al
		mov    %ecx,%ebx
		cmp    $0x2b,%al
		jne    jump_1b783
		or     $0x3,%cl
		jmp    jump_1b781
	jump_1b769:
		cmpb   $0x74,0x1(%edx)
		jne    jump_1b775
		cmpb   $0x2b,0x2(%edx)
		jmp    jump_1b74a
	jump_1b775:
		cmpl   $0x200,data_21059
		jne    jump_1b783
	jump_1b781:
		mov    %ecx,%ebx
	jump_1b783:
		mov    (%esp),%al
		cmp    $0x77,%al
		jne    jump_1b78f
		or     $0x2,%bl
		jmp    jump_1b79b
	jump_1b78f:
		cmp    $0x61,%al
		jne    jump_1b798
		or     $0x82,%bl
		jmp    jump_1b79b
	jump_1b798:
		or     $0x1,%bl
	jump_1b79b:
		mov    %ebx,%eax
	jump_1b79d:
		add    $0x4,%esp
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func___doopen_:	/* 0x1b7a4 */
/*----------------------------------------------------------------*/
		push   %esi
		push   %edi
		mov    %eax,%esi
		andb   $0xfc,0xc(%ecx)
		mov    %edx,%eax
		call   func___open_flags_
		mov    0xc(%ecx),%edi
		or     %eax,%edi
		xor    %eax,%eax
		mov    %edi,0xc(%ecx)
		mov    (%edx),%al
		call   func_tolower_
		mov    %al,%dl
		cmp    $0x72,%al
		jne    jump_1b7eb
		mov    0xc(%ecx),%dh
		xor    %eax,%eax
		test   $0x2,%dh
		je     jump_1b7d9
		mov    $0x2,%eax
	jump_1b7d9:
		testb  $0x40,0xc(%ecx)
		je     jump_1b7e4
		or     $0x2,%ah
		jmp    jump_1b7e7
	jump_1b7e4:
		or     $0x1,%ah
	jump_1b7e7:
		push   $0x0
		jmp    jump_1b818
	jump_1b7eb:
		testb  $0x1,0xc(%ecx)
		setne  %al
		and    $0xff,%eax
		add    $0x21,%eax
		cmp    $0x61,%dl
		jne    jump_1b803
		or     $0x10,%al
		jmp    jump_1b805
	jump_1b803:
		or     $0x40,%al
	jump_1b805:
		testb  $0x40,0xc(%ecx)
		je     jump_1b810
		or     $0x2,%ah
		jmp    jump_1b813
	jump_1b810:
		or     $0x1,%ah
	jump_1b813:
		push   $0x180
	jump_1b818:
		push   %ebx
		push   %eax
		push   %esi
		call   func_sopen_
		add    $0x10,%esp
		mov    %eax,0x10(%ecx)
		cmpl   $0xffffffff,0x10(%ecx)
		jne    jump_1b838
		mov    %ecx,%eax
		call   func___freefp_
		xor    %eax,%eax
		pop    %edi
		pop    %esi
		ret
	jump_1b838:
		movl   $0x0,0x4(%ecx)
		movl   $0x0,0x8(%ecx)
		movl   $0x0,0x14(%ecx)
		cmp    $0x61,%dl
		jne    jump_1b860
		mov    $0x2,%ebx
		mov    %ecx,%eax
		xor    %edx,%edx
		call   w_dos_fseek
	jump_1b860:
		mov    %ecx,%eax
		call   func___chktty_
		mov    %ecx,%eax
		pop    %edi
		pop    %esi
		ret


/*----------------------------------------------------------------*/
func__fsopen_:	/* 0x1b86c */
/*----------------------------------------------------------------*/
		push   %ecx
		push   %esi
		mov    %eax,%esi
		xor    %eax,%eax
		call   func___allocfp_
		mov    %eax,%ecx
		test   %eax,%eax
		je     jump_1b884
		mov    %esi,%eax
		call   func___doopen_
	jump_1b884:
		pop    %esi
		pop    %ecx
		ret


/*----------------------------------------------------------------*/
func_fopen_:	/* 0x1b887 */
/*----------------------------------------------------------------*/
		push   %ebx
		xor    %ebx,%ebx
		call   func__fsopen_
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_fclose_:	/* 0x1b91d */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %edx
		mov    %eax,%edx
		mov    data_542d4,%eax
	jump_1b926:
		test   %eax,%eax
		jne    jump_1b932
		mov    $0xffffffff,%eax
		pop    %edx
		pop    %ebx
		ret
	jump_1b932:
		mov    0x4(%eax),%ebx
		cmp    %ebx,%edx
		je     jump_1b93d
		mov    (%eax),%eax
		jmp    jump_1b926
	jump_1b93d:
		mov    $0x1,%edx
		mov    %ebx,%eax
		call   func___shutdown_stream_
		pop    %edx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func___shutdown_stream_:	/* 0x1b94c */
/*----------------------------------------------------------------*/
		push   %ebx
		mov    %eax,%ebx
		call   func___doclose_
		mov    %eax,%edx
		mov    %ebx,%eax
		call   func___freefp_
		mov    %edx,%eax
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func___hex_:	/* 0x1b961 */
/*----------------------------------------------------------------*/
		add    $0x30,%eax
		cmp    $0x39,%eax
		jle    jump_1b96c
		add    $0x27,%eax
	jump_1b96c:
		ret


/*----------------------------------------------------------------*/
func___MkTmpFile_:	/* 0x1b96d */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %esi
		push   %edi
		mov    %eax,%ecx
		mov    %edx,%edi
		call   func_1d9e4
		mov    $0x4,%edx
		mov    %eax,%ebx
		mov    %ecx,%esi
		movb   $0x74,(%ecx)
		add    %ecx,%edx
	jump_1b988:
		mov    %ebx,%eax
		and    $0xf,%eax
		call   func___hex_
		mov    %al,(%edx)
		dec    %edx
		shr    $0x4,%ebx
		cmp    %esi,%edx
		jne    jump_1b988
		mov    %edi,%eax
		sar    $0x4,%eax
		and    $0xf,%eax
		movb   $0x5f,0x5(%ecx)
		call   func___hex_
		mov    %al,0x6(%ecx)
		mov    %edi,%eax
		and    $0xf,%eax
		call   func___hex_
		movb   $0x2e,0x8(%ecx)
		movb   $0x74,0x9(%ecx)
		movb   $0x6d,0xa(%ecx)
		movb   $0x70,0xb(%ecx)
		movb   $0x0,0xc(%ecx)
		mov    %al,0x7(%ecx)
		pop    %edi
		pop    %esi
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func___doclose_:	/* 0x1b9d6 */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %esi
		push   %edi
		sub    $0x10,%esp
		mov    %eax,%ecx
		mov    %edx,%edi
		cmpl   $0x0,0xc(%eax)
		jne    jump_1b9ee
		mov    $0xffffffff,%esi
		jmp    jump_1ba55
	jump_1b9ee:
		mov    0xd(%eax),%ah
		xor    %esi,%esi
		test   $0x10,%ah
		je     jump_1ba01
		mov    %ecx,%eax
		call   func___flush_
		mov    %eax,%esi
	jump_1ba01:
		mov    %ecx,%eax
		call   w_dos_ftell
		mov    %eax,%edx
		cmp    $0xffffffff,%eax
		je     jump_1ba19
		mov    0x10(%ecx),%eax
		xor    %ebx,%ebx
		call   w_dos_lseek
	jump_1ba19:
		test   %edi,%edi
		je     jump_1ba27
		mov    0x10(%ecx),%eax
		call   func___close_
		or     %eax,%esi
	jump_1ba27:
		testb  $0x8,0xc(%ecx)
		je     jump_1ba3c
		mov    0x8(%ecx),%eax
		call   w_dos_free
		movl   $0x0,0x8(%ecx)
	jump_1ba3c:
		testb  $0x8,0xd(%ecx)
		je     jump_1ba55
		xor    %edx,%edx
		mov    %esp,%eax
		mov    0x19(%ecx),%dl
		call   func___MkTmpFile_
		mov    %esp,%eax
		call   func_j_unlink_
	jump_1ba55:
		mov    %esi,%eax
		add    $0x10,%esp
		pop    %edi
		pop    %esi
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_unlink_:	/* 0x1ba5f */
/*----------------------------------------------------------------*/
		push   %edx
		mov    %eax,%edx
		mov    $0x41,%ah
		int    $0x21
		rcl    %eax
		ror    %eax
		test   %eax,%eax
		jge    jump_1ba7a
		and    $0xffff,%eax
		call   func___set_errno_dos_
		pop    %edx
		ret
	jump_1ba7a:
		xor    %eax,%eax
		pop    %edx
		ret


/*----------------------------------------------------------------*/
_start:	/* 0x1ba80 */
/*----------------------------------------------------------------*/
		jmp    jump_1bafa
.data
		.ascii   "WATCOM C/C++32 Run-Time system. (c) Copyright by WATCOM International Corp. 1988-1994. All rights reserved."
		.ascii  "\x8d\x40\x00"
		.long   func____begtext
data_1baf4:
		.ascii  "\x00\x00"
data_1baf6:
		.ascii  "\x63\x6f\x6e\x00"
.text
	jump_1bafa:
		sti
		and    $0xfffffffc,%esp
		mov    %esp,%ebx
		mov    %ebx,data_2107c
		mov    %ebx,data_21068
		mov    $0x24,%ax
		mov    %ax,data_21074
		mov    $0x50484152,%ebx
		sub    %eax,%eax
		mov    $0x30,%ah
		int    $0x21
		mov    %al,data_2109f
		mov    %ah,data_210a0
		mov    %eax,%ecx
		sub    %esi,%esi
		mov    $0x81,%edi
		shr    $0x10,%eax
		cmp    $0x4458,%ax
		jne    jump_1bb7c
		sub    $0x30,%bl
		mov    %bl,%al
		mov    $0x0,%ah
		push   %eax
		data16 		mov    data_21074,%es
		mov    %es:0x5c,%ebx
		add    $0xfff,%ebx
		and    $0xfffff000,%ebx
		mov    %ebx,data_21068
		shr    $0xc,%ebx
		mov    %ds,%ax
		mov    %eax,%es
		mov    $0x4a,%ah
		int    $0x21
		pop    %eax
		mov    %ds,%bx
		mov    $0x2c,%cx
		jmp    jump_1bbb4
	jump_1bb7c:
		cmp    $0x4243,%ax
		jne    jump_1bbb6
		mov    %edx,data_20dc4
		mov    %edx,%esi
		mov    0x1c(%esi),%edx
		mov    %esp,%ebx
		sub    %edx,%ebx
		mov    $0x4a,%ah
		int    $0x21
		mov    %ds,%bx
		data16 		mov    %ds,data_21074
		mov    0x10(%esi),%eax
		add    %eax,%edi
		sub    %esi,%esi
		mov    0x2c(%eax),%si
		shl    $0x4,%esi
		mov    %ds,%cx
		mov    $0x9,%al
		mov    $0x0,%ah
	jump_1bbb4:
		jmp    jump_1bc0f
	jump_1bbb6:
		mov    $0x78,%dx
		mov    $0xff00,%ax
		int    $0x21
		cmp    $0x0,%al
		je     jump_1bbf8
		mov    %gs,%ax
		cmp    $0x0,%ax
		je     jump_1bbd3
		mov    %ax,data_20dc8
	jump_1bbd3:
		mov    $0x6,%ax
		mov    %ds,%bx
		int    $0x31
		mov    $0x1,%al
		mov    $0x0,%ah
		or     %cx,%dx
		je     jump_1bbe7
		mov    $0x1,%ah
	jump_1bbe7:
		data16 		mov    %es,data_21074
		mov    %es:0x2c,%cx
		jmp    jump_1bc0f
	jump_1bbf8:
		mov    %ds,%dx
		mov    $0x24,%cx
		mov    %ecx,%ds
		mov    $0x2c,%cx
		mov    %edx,%ds
		mov    $0x17,%bx
		mov    $0x0,%al
		mov    $0x0,%ah
	jump_1bc0f:
		mov    %al,data_21096
		mov    %ah,data_21097
		mov    %ebx,%es
		data16 		mov    %ds,%es:data_1baf4
		mov    %esi,data_21099
		mov    %cx,data_2109d
		push   %esi
		data16 		mov    data_21074,%es
		ds
		mov    $data_542ec,%edx
		add    $0xf,%edx
		and    $0xf0,%dl
		sub    %ecx,%ecx
		mov    %es:-0x1(%edi),%cl
		cld
		mov    $0x20,%al
		repz scas %es:(%edi),%al
		lea    -0x1(%edi),%esi
		mov    %edx,%edi
		mov    %es,%bx
		mov    %ds,%dx
		mov    %ebx,%ds
		mov    %edx,%es
		je     jump_1bc64
		inc    %ecx
		rep movsb %ds:(%esi),%es:(%edi)
	jump_1bc64:
		sub    %al,%al
		stos   %al,%es:(%edi)
		stos   %al,%es:(%edi)
		pop    %esi
		dec    %edi
		push   %edi
		push   %edx
		es
		data16 		mov    data_2109d,%ds
		sub    %ebp,%ebp
	jump_1bc76:
		mov    (%esi),%eax
		or     $0x20202020,%eax
		cmp    $0x37386f6e,%eax
		jne    jump_1bc8b
		cmpb   $0x3d,0x4(%esi)
		jne    jump_1bc8b
		inc    %ebp
	jump_1bc8b:
		cmpb   $0x0,(%esi)
		lods   %ds:(%esi),%al
		jne    jump_1bc8b
		cmpb   $0x0,(%esi)
		jne    jump_1bc76
		lods   %ds:(%esi),%al
		inc    %esi
		inc    %esi
	jump_1bc99:
		cmpb   $0x0,(%esi)
		movsb  %ds:(%esi),%es:(%edi)
		jne    jump_1bc99
		pop    %ds
		pop    %esi
		mov    %esp,%ebx
		mov    %bp,data_21094
		mov    %edi,data_21078
		mov    %ebx,data_21064
		ds
		mov    $data_542ec,%ecx
		ds
		mov    $data_210d4,%edi
		sub    %edi,%ecx
		cmpb   $0x1,data_21096
		jne    jump_1bcda
		cmp    $0x1000,%ecx
		jbe    jump_1bcda
		mov    $0x1000,%ecx
	jump_1bcda:
		mov    %cl,%dl
		shr    $0x2,%ecx
		sub    %eax,%eax
		rep stos %eax,%es:(%edi)
		mov    %dl,%cl
		and    $0x3,%cl
		rep stos %al,%es:(%edi)
		ds
		mov    $data_542ec,%eax
		add    $0xf,%eax
		and    $0xf0,%al
		mov    %eax,data_2106c
		mov    %esi,data_21070
		mov    $0xff,%eax
		call   func___InitRtns
		sub    %ebp,%ebp
		call   func___CMain


/*----------------------------------------------------------------*/
func___exit_:	/* 0x1bd11 */
/*----------------------------------------------------------------*/
		jmp    jump_1bd36


/*----------------------------------------------------------------*/
func___do_exit_with_msg__:	/* 0x1bd13 */
/*----------------------------------------------------------------*/
		push   %edx
		push   %eax
		mov    $data_1baf6,%edx
		mov    $0x3d01,%ax
		int    $0x21
		mov    %ax,%bx
		pop    %edx
		mov    %edx,%esi
		cld
	jump_1bd27:
		lods   %ds:(%esi),%al
		cmp    $0x0,%al
		jne    jump_1bd27
		mov    %esi,%ecx
		sub    %edx,%ecx
		dec    %ecx
		mov    $0x40,%ah
		int    $0x21
		pop    %eax
	jump_1bd36:
		push   %eax
		mov    $0x0,%eax
		mov    $0xff,%edx
		call   func___FiniRtns
		pop    %eax
		mov    $0x4c,%ah
		int    $0x21
		nop


/*----------------------------------------------------------------*/
func___GETDS:	/* 0x1bd4c */
/*----------------------------------------------------------------*/
		data16 		mov    data_1baf4,%ds
		ret


/*----------------------------------------------------------------*/
func_1bd56:
/*----------------------------------------------------------------*/
		data16 		mov    %ss,data_20dcc
		ret


/*----------------------------------------------------------------*/
func___CHK:	/* 0x1bd5e */
/*----------------------------------------------------------------*/
		xchg   %eax,0x4(%esp)
		call   func___STK
		mov    0x4(%esp),%eax
		ret    $0x4


/*----------------------------------------------------------------*/
func___STK:	/* 0x1bd71 */
/*----------------------------------------------------------------*/
		cmp    %esp,%eax
		jae    jump_1bd82
		sub    %esp,%eax
		neg    %eax
		cmp    data_21078,%eax
		jbe    jump_1bd82
		ret
	jump_1bd82:
		mov    %ss,%ax
		cmp    data_20dcc,%ax
		je     func___STKOVERFLOW_
		ret


/*----------------------------------------------------------------*/
func___STKOVERFLOW_:	/* 0x1bd8f */
/*----------------------------------------------------------------*/
		mov    $data_20dce,%eax
		mov    $0x1,%edx
		call   func___fatal_runtime_error_


/*----------------------------------------------------------------*/
func_segread_:	/* 0x1bd9e */
/*----------------------------------------------------------------*/
		push   %edx
		mov    %eax,%edx
		mov    %cs,%eax
		mov    %ax,0x2(%edx)
		mov    %ds,%eax
		mov    %ax,0x6(%edx)
		mov    %es,%eax
		mov    %ax,(%edx)
		mov    %ss,%eax
		mov    %ax,0x4(%edx)
		mov    %fs,%eax
		mov    %ax,0x8(%edx)
		mov    %gs,%eax
		mov    %ax,0xa(%edx)
		pop    %edx
		ret


/*----------------------------------------------------------------*/
func_int386_:	/* 0x1bdc6 */
/*----------------------------------------------------------------*/
		push   %ecx
		sub    $0xc,%esp
		mov    %eax,%ecx
		mov    %esp,%eax
		call   func_segread_
		mov    %ecx,%eax
		mov    %esp,%ecx
		call   w_dos_int386x
		add    $0xc,%esp
		pop    %ecx
		ret


/*----------------------------------------------------------------*/
func_int386x_:	/* 0x1bde1 */
/*----------------------------------------------------------------*/
		push   %esi
		push   %edi
		push   %ebp
		mov    %ebx,%ebp
		mov    %ecx,%ebx
		mov    %eax,%esi
		mov    %edx,%edi
		mov    %ebp,%edx
		call   func___int386x_
		mov    0x0(%ebp),%eax
		pop    %ebp
		pop    %edi
		pop    %esi
		ret


/*----------------------------------------------------------------*/
func_memset_:	/* 0x1be00 */
/*----------------------------------------------------------------*/
		push   %eax
		push   %ecx
		mov    %dl,%dh
		shl    $0x8,%edx
		mov    %dh,%dl
		shl    $0x8,%edx
		mov    %dh,%dl
		mov    %ebx,%ecx
		call   func___STOSB
		pop    %ecx
		pop    %eax
		ret


/*----------------------------------------------------------------*/
func_memmove_:	/* 0x1be18 */
/*----------------------------------------------------------------*/
		push   %ecx
		push   %esi
		push   %edi
		mov    %edx,%esi
		mov    %ebx,%ecx
		cmp    %eax,%edx
		je     jump_1be60
		jae    jump_1be4c
		add    %ebx,%edx
		cmp    %eax,%edx
		jbe    jump_1be4c
		lea    (%eax,%ebx,1),%edi
		lea    -0x1(%edx),%esi
		dec    %edi
		mov    %ds,%edx
		push   %es
		mov    %edx,%es
		std
		dec    %esi
		dec    %edi
		shr    %ecx
		rep movsw %ds:(%esi),%es:(%edi)
		adc    %ecx,%ecx
		inc    %esi
		inc    %edi
		data16 		rep movsb %ds:(%esi),%es:(%edi)
		pop    %es
		cld
		pop    %edi
		pop    %esi
		pop    %ecx
		ret
	jump_1be4c:
		mov    %ds,%edx
		mov    %eax,%edi
		push   %es
		mov    %edx,%es
		push   %ecx
		shr    $0x2,%ecx
		rep movsl %ds:(%esi),%es:(%edi)
		pop    %ecx
		and    $0x3,%ecx
		rep movsb %ds:(%esi),%es:(%edi)
		pop    %es
	jump_1be60:
		pop    %edi
		pop    %esi
		pop    %ecx
		ret


/*----------------------------------------------------------------*/
func___update_buffer_:	/* 0x1be64 */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %esi
		push   %edi
		andb   $0xef,0xc(%edx)
		cmp    0x4(%edx),%eax
		jg     jump_1be90
		mov    0x8(%edx),%ebx
		mov    (%edx),%ecx
		sub    %ecx,%ebx
		cmp    %ebx,%eax
		jl     jump_1be90
		mov    0x4(%edx),%edi
		lea    (%ecx,%eax,1),%esi
		sub    %eax,%edi
		mov    %esi,(%edx)
		xor    %eax,%eax
		mov    %edi,0x4(%edx)
		pop    %edi
		pop    %esi
		pop    %ecx
		pop    %ebx
		ret
	jump_1be90:
		mov    0x8(%edx),%eax
		movl   $0x0,0x4(%edx)
		mov    %eax,(%edx)
		mov    $0x1,%eax
		pop    %edi
		pop    %esi
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_fseek_:	/* 0x1bea6 */
/*----------------------------------------------------------------*/
		push   %ecx
		push   %esi
		push   %edi
		mov    %eax,%ecx
		mov    %edx,%esi
		testb  $0x6,0xc(%eax)
		je     jump_1bf0e
		testb  $0x10,0xd(%ecx)
		je     jump_1bedf
		mov    %ecx,%eax
		call   func___flush_
		test   %eax,%eax
		je     jump_1bef3
		test   %ebx,%ebx
		jne    jump_1bed6
		test   %esi,%esi
		jge    jump_1bed6
	jump_1becc:
		mov    $0x9,%eax
		call   func___set_errno_
	jump_1bed6:
		mov    $0xffffffff,%eax
		pop    %edi
		pop    %esi
		pop    %ecx
		ret
	jump_1bedf:
		cmp    $0x1,%ebx
		jne    jump_1bee7
		sub    0x4(%ecx),%esi
	jump_1bee7:
		mov    0x8(%ecx),%eax
		movl   $0x0,0x4(%ecx)
		mov    %eax,(%ecx)
	jump_1bef3:
		andb   $0xeb,0xc(%ecx)
		mov    %esi,%edx
		mov    0x10(%ecx),%eax
		call   w_dos_lseek
		cmp    $0xffffffff,%eax
		jne    jump_1bf9c
		pop    %edi
		pop    %esi
		pop    %ecx
		ret
	jump_1bf0e:
		cmp    $0x1,%ebx
		jb     jump_1bf1c
		jbe    jump_1bf22
		cmp    $0x2,%ebx
		je     jump_1bf78
		jmp    jump_1becc
	jump_1bf1c:
		test   %ebx,%ebx
		je     jump_1bf47
		jmp    jump_1becc
	jump_1bf22:
		mov    %edx,%eax
		mov    %ecx,%edx
		mov    0x4(%ecx),%edi
		call   func___update_buffer_
		test   %eax,%eax
		je     jump_1bf9c
		mov    %esi,%edx
		mov    0x10(%ecx),%eax
		sub    %edi,%edx
		call   w_dos_lseek
		cmp    $0xffffffff,%eax
		jne    jump_1bf9c
		pop    %edi
		pop    %esi
		pop    %ecx
		ret
	jump_1bf47:
		mov    0x10(%ecx),%eax
		call   func_tell_
		mov    0x4(%ecx),%edx
		mov    %esi,%edi
		sub    %edx,%eax
		sub    %eax,%edi
		mov    %ecx,%edx
		mov    %edi,%eax
		call   func___update_buffer_
		test   %eax,%eax
		je     jump_1bf9c
		mov    %esi,%edx
		mov    0x10(%ecx),%eax
		call   w_dos_lseek
		cmp    $0xffffffff,%eax
		jne    jump_1bf9c
		pop    %edi
		pop    %esi
		pop    %ecx
		ret
	jump_1bf78:
		mov    0x8(%ecx),%eax
		mov    0xc(%ecx),%dl
		mov    %eax,(%ecx)
		and    $0xef,%dl
		mov    0x10(%ecx),%eax
		mov    %dl,0xc(%ecx)
		mov    %esi,%edx
		movl   $0x0,0x4(%ecx)
		call   w_dos_lseek
		cmp    $0xffffffff,%eax
		je     jump_1bf9e
	jump_1bf9c:
		xor    %eax,%eax
	jump_1bf9e:
		pop    %edi
		pop    %esi
		pop    %ecx
		ret


/*----------------------------------------------------------------*/
func_fread_:	/* 0x1bfa2 */
/*----------------------------------------------------------------*/
		push   %esi
		push   %edi
		push   %ebp
		sub    $0x8,%esp
		push   %eax
		push   %edx
		mov    %ecx,%ebp
		testb  $0x1,0xc(%ecx)
		jne    jump_1bfcc
		mov    $0x4,%eax
		call   func___set_errno_
		mov    0xc(%ecx),%dh
		or     $0x20,%dh
		xor    %eax,%eax
		mov    %dh,0xc(%ecx)
		jmp    jump_1c165
	jump_1bfcc:
		imul   %edx,%ebx
		test   %ebx,%ebx
		jne    jump_1bfda
		mov    %ebx,%eax
		jmp    jump_1c165
	jump_1bfda:
		cmpl   $0x0,0x8(%ecx)
		jne    jump_1bfe7
		mov    %ebp,%eax
		call   func___ioalloc_
	jump_1bfe7:
		xor    %esi,%esi
		mov    0xc(%ebp),%dl
		mov    %esi,0xc(%esp)
		test   $0x40,%dl
		je     jump_1c0e6
		mov    %ebx,0x8(%esp)
	jump_1bffd:
		mov    0x4(%ebp),%edx
		test   %edx,%edx
		je     jump_1c058
		mov    0x8(%esp),%ebx
		cmp    %ebx,%edx
		jbe    jump_1c00e
		mov    %ebx,%edx
	jump_1c00e:
		mov    0x4(%esp),%edi
		mov    %edx,%ecx
		mov    0x0(%ebp),%esi
		mov    0xc(%esp),%ebx
		push   %es
		mov    %ds,%eax
		mov    %eax,%es
		push   %edi
		mov    %ecx,%eax
		shr    $0x2,%ecx
		repnz movsl %ds:(%esi),%es:(%edi)
		mov    %al,%cl
		and    $0x3,%cl
		repnz movsb %ds:(%esi),%es:(%edi)
		pop    %edi
		pop    %es
		mov    0x8(%esp),%eax
		mov    0x0(%ebp),%ecx
		lea    (%edi,%edx,1),%esi
		add    %edx,%ebx
		mov    %esi,0x4(%esp)
		mov    %ebx,0xc(%esp)
		mov    0x4(%ebp),%edi
		add    %edx,%ecx
		sub    %edx,%eax
		sub    %edx,%edi
		mov    %ecx,0x0(%ebp)
		mov    %eax,0x8(%esp)
		mov    %edi,0x4(%ebp)
	jump_1c058:
		mov    0x8(%esp),%ecx
		test   %ecx,%ecx
		je     jump_1c15a
		cmp    0x14(%ebp),%ecx
		jae    jump_1c06f
		testb  $0x4,0xd(%ebp)
		je     jump_1c0d2
	jump_1c06f:
		mov    0xd(%ebp),%cl
		mov    0x8(%esp),%ebx
		test   $0x4,%cl
		jne    jump_1c088
		cmp    $0x200,%ebx
		jbe    jump_1c088
		and    $0xfe,%bh
		xor    %bl,%bl
	jump_1c088:
		mov    0x4(%esp),%edx
		mov    0x10(%ebp),%eax
		call   func___qread_
		cmp    $0xffffffff,%eax
		jne    jump_1c0a2
		orb    $0x20,0xc(%ebp)
		jmp    jump_1c15a
	jump_1c0a2:
		test   %eax,%eax
		jne    jump_1c0af
	jump_1c0a6:
		orb    $0x10,0xc(%ebp)
		jmp    jump_1c15a
	jump_1c0af:
		mov    0x4(%esp),%edx
		mov    0x8(%esp),%ebx
		mov    0xc(%esp),%ecx
		add    %eax,%edx
		sub    %eax,%ebx
		add    %eax,%ecx
		mov    %edx,0x4(%esp)
		mov    %ebx,0x8(%esp)
		mov    %ecx,0xc(%esp)
		jmp    jump_1bffd
	jump_1c0d2:
		mov    %ebp,%eax
		call   func___fill_buffer_
		test   %eax,%eax
		je     jump_1c15a
		jmp    jump_1bffd
	jump_1c0e6:
		mov    0x4(%esp),%edx
		add    %edx,%ebx
	jump_1c0ec:
		cmpl   $0x0,0x4(%ebp)
		jne    jump_1c0fd
		mov    %ebp,%eax
		call   func___fill_buffer_
		test   %eax,%eax
		je     jump_1c15a
	jump_1c0fd:
		mov    0x4(%ebp),%ecx
		mov    0x0(%ebp),%eax
		dec    %ecx
		lea    0x1(%eax),%esi
		mov    %ecx,0x4(%ebp)
		mov    %esi,0x0(%ebp)
		mov    (%eax),%al
		and    $0xff,%eax
		cmp    $0xd,%eax
		jne    jump_1c141
		cmpl   $0x0,0x4(%ebp)
		jne    jump_1c12a
		mov    %ebp,%eax
		call   func___fill_buffer_
		test   %eax,%eax
		je     jump_1c15a
	jump_1c12a:
		mov    0x4(%ebp),%edi
		mov    0x0(%ebp),%eax
		dec    %edi
		lea    0x1(%eax),%esi
		mov    %edi,0x4(%ebp)
		mov    %esi,0x0(%ebp)
		mov    (%eax),%al
		and    $0xff,%eax
	jump_1c141:
		cmp    $0x1a,%eax
		je     jump_1c0a6
		mov    %al,(%edx)
		mov    0xc(%esp),%eax
		inc    %eax
		inc    %edx
		mov    %eax,0xc(%esp)
		cmp    %ebx,%edx
		jne    jump_1c0ec
	jump_1c15a:
		mov    0xc(%esp),%eax
		mov    (%esp),%esi
		xor    %edx,%edx
		div    %esi
	jump_1c165:
		add    $0x10,%esp
		pop    %ebp
		pop    %edi
		pop    %esi
		ret


/*----------------------------------------------------------------*/
func_outp_:	/* 0x1c16c */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		mov    %eax,%ebx
		mov    %edx,%ecx
		mov    %eax,%edx
		mov    %cl,%al
		out    %al,(%dx)
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_fgetc_:	/* 0x1c17a */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %edx
		push   %esi
		mov    %eax,%edx
		testb  $0x1,0xc(%eax)
		jne    jump_1c1a0
		mov    $0x4,%eax
		call   func___set_errno_
		mov    0xc(%edx),%bl
		or     $0x20,%bl
		mov    $0xffffffff,%eax
		mov    %bl,0xc(%edx)
		jmp    jump_1c1c0
	jump_1c1a0:
		mov    0x4(%edx),%ebx
		dec    %ebx
		mov    %ebx,0x4(%edx)
		test   %ebx,%ebx
		jge    jump_1c1b4
		mov    %edx,%eax
		call   func___filbuf_
		jmp    jump_1c1c0
	jump_1c1b4:
		mov    (%edx),%ebx
		mov    (%ebx),%al
		inc    %ebx
		and    $0xff,%eax
		mov    %ebx,(%edx)
	jump_1c1c0:
		testb  $0x40,0xc(%edx)
		jne    jump_1c1fe
		cmp    $0xd,%eax
		jne    jump_1c1eb
		mov    0x4(%edx),%esi
		dec    %esi
		mov    %esi,0x4(%edx)
		test   %esi,%esi
		jge    jump_1c1df
		mov    %edx,%eax
		call   func___filbuf_
		jmp    jump_1c1eb
	jump_1c1df:
		mov    (%edx),%ebx
		mov    (%ebx),%al
		inc    %ebx
		and    $0xff,%eax
		mov    %ebx,(%edx)
	jump_1c1eb:
		cmp    $0x1a,%eax
		jne    jump_1c1fe
		mov    0xc(%edx),%cl
		or     $0x10,%cl
		mov    $0xffffffff,%eax
		mov    %cl,0xc(%edx)
	jump_1c1fe:
		pop    %esi
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func___filbuf_:	/* 0x1c203 */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %edx
		mov    %eax,%edx
		call   func___fill_buffer_
		test   %eax,%eax
		jne    jump_1c21a
		mov    $0xffffffff,%eax
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret
	jump_1c21a:
		mov    0x4(%edx),%ebx
		mov    (%edx),%ecx
		dec    %ebx
		inc    %ecx
		mov    %ebx,0x4(%edx)
		mov    %ecx,(%edx)
		mov    -0x1(%ecx),%al
		and    $0xff,%eax
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func___fill_buffer_:	/* 0x1c232 */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %edx
		push   %esi
		mov    %eax,%ecx
		cmpl   $0x0,0x8(%eax)
		jne    jump_1c243
		call   func___ioalloc_
	jump_1c243:
		mov    0xd(%ecx),%ah
		test   $0x20,%ah
		je     jump_1c25a
		test   $0x6,%ah
		je     jump_1c25a
		mov    $0x2000,%eax
		call   func___flushall_
	jump_1c25a:
		mov    0xc(%ecx),%edx
		mov    0xc(%ecx),%bl
		mov    0x8(%ecx),%eax
		and    $0xfb,%bl
		mov    %eax,(%ecx)
		and    $0x2400,%edx
		mov    %bl,0xc(%ecx)
		cmp    $0x2400,%edx
		jne    jump_1c29a
		mov    0x10(%ecx),%ebx
		test   %ebx,%ebx
		jne    jump_1c29a
		mov    %ebx,0x4(%ecx)
		call   func_getche_
		cmp    $0xffffffff,%eax
		je     jump_1c2b7
		mov    (%ecx),%ebx
		mov    %al,(%ebx)
		movl   $0x1,0x4(%ecx)
		jmp    jump_1c2b7
	jump_1c29a:
		testb  $0x4,0xd(%ecx)
		je     jump_1c2a7
		mov    $0x1,%ebx
		jmp    jump_1c2aa
	jump_1c2a7:
		mov    0x14(%ecx),%ebx
	jump_1c2aa:
		mov    (%ecx),%edx
		mov    0x10(%ecx),%eax
		call   func___qread_
		mov    %eax,0x4(%ecx)
	jump_1c2b7:
		mov    0x4(%ecx),%esi
		test   %esi,%esi
		jg     jump_1c2d5
		jne    jump_1c2c6
		orb    $0x10,0xc(%ecx)
		jmp    jump_1c2d5
	jump_1c2c6:
		mov    0xc(%ecx),%al
		movl   $0x0,0x4(%ecx)
		or     $0x20,%al
		mov    %al,0xc(%ecx)
	jump_1c2d5:
		mov    0x4(%ecx),%eax
		pop    %esi
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func__fmemcpy_:	/* 0x1c2dd */
/*----------------------------------------------------------------*/
		push   %esi
		push   %edi
		mov    %eax,%edi
		mov    %ebx,%esi
		mov    0xc(%esp),%eax
		push   %ds
		push   %es
		push   %edi
		xchg   %eax,%ecx
		mov    %eax,%ds
		mov    %edx,%es
		mov    %ecx,%eax
		shr    $0x2,%ecx
		repnz movsl %ds:(%esi),%es:(%edi)
		mov    %al,%cl
		and    $0x3,%cl
		repnz movsb %ds:(%esi),%es:(%edi)
		pop    %eax
		pop    %es
		pop    %ds
		pop    %edi
		pop    %esi
		ret    $0x4


/*----------------------------------------------------------------*/
func_memcpy_:	/* 0x1c305 */
/*----------------------------------------------------------------*/
		push   %ecx
		push   %esi
		push   %edi
		mov    %eax,%edi
		mov    %edx,%esi
		mov    %ebx,%ecx
		push   %es
		mov    %ds,%eax
		mov    %eax,%es
		push   %edi
		mov    %ecx,%eax
		shr    $0x2,%ecx
		repnz movsl %ds:(%esi),%es:(%edi)
		mov    %al,%cl
		and    $0x3,%cl
		repnz movsb %ds:(%esi),%es:(%edi)
		pop    %edi
		pop    %es
		mov    %edi,%eax
		pop    %edi
		pop    %esi
		pop    %ecx
		ret


/*----------------------------------------------------------------*/
func_inp_:	/* 0x1c32a */
/*----------------------------------------------------------------*/
		push   %edx
		mov    %eax,%edx
		sub    %eax,%eax
		in     (%dx),%al
		pop    %edx
		ret


/*----------------------------------------------------------------*/
disable_interrupts: /* 1c332 */
/*----------------------------------------------------------------*/
#if 0
		cli
#endif
		ret


/*----------------------------------------------------------------*/
enable_interrupts: /* 1c334 */
/*----------------------------------------------------------------*/
#if 0
		sti
#endif
		ret


/*----------------------------------------------------------------*/
func__dos_getvect_:	/* 0x1c336 */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		mov    %eax,%ebx
		mov    data_21096,%ah
		cmp    $0x2,%ah
		jb     jump_1c353
		cmp    $0x8,%ah
		ja     jump_1c353
		mov    $0x2502,%eax
		mov    %bl,%cl
		jmp    jump_1c35f
	jump_1c353:
		mov    %ebx,%eax
		and    $0xff,%eax
		xor    %cl,%cl
		or     $0x35,%ah
	jump_1c35f:
		push   %es
		int    $0x21
		mov    %es,%edx
		pop    %es
		mov    %ebx,%eax
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func__dos_setvect_:	/* 0x1c36a */
/*----------------------------------------------------------------*/
		push   %edx
		mov    %ebx,%edx
		mov    data_21096,%bl
		cmp    $0x2,%bl
		jb     jump_1c38b
		cmp    $0x8,%bl
		ja     jump_1c38b
		push   %ds
		mov    %ecx,%ds
		mov    %al,%cl
		mov    $0x4,%al
		mov    $0x25,%ah
		int    $0x21
		pop    %ds
		pop    %edx
		ret
	jump_1c38b:
		push   %ds
		mov    %ecx,%ds
		mov    $0x25,%ah
		int    $0x21
		pop    %ds
		pop    %edx
		ret


/*----------------------------------------------------------------*/
func_ftell_:	/* 0x1c395 */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %edx
		mov    %eax,%edx
		mov    0x10(%eax),%eax
		call   func_tell_
		mov    %eax,%ebx
		cmp    $0xffffffff,%eax
		je     jump_1c3c1
		mov    0x4(%edx),%ecx
		test   %ecx,%ecx
		je     jump_1c3c1
		testb  $0x10,0xd(%edx)
		je     jump_1c3bd
		lea    (%ecx,%ebx,1),%eax
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret
	jump_1c3bd:
		mov    %ebx,%eax
		sub    %ecx,%eax
	jump_1c3c1:
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func___MemAllocator:	/* 0x1c3c6 */
/*----------------------------------------------------------------*/
		push   %esi
		push   %edi
		push   %ecx
		push   %ds
		mov    %edx,%ds
		or     %eax,%eax
		je     jump_1c415
		add    $0x7,%eax
		jb     jump_1c415
		and    $0xfc,%al
		mov    $0xc,%edx
		sub    %edx,%eax
		cmc
		sbb    %ecx,%ecx
		and    %ecx,%eax
		add    %edx,%eax
		cmp    0x14(%ebx),%eax
		ja     jump_1c415
		mov    0xc(%ebx),%esi
		mov    0x10(%ebx),%edi
		cmp    %edi,%eax
		ja     jump_1c3f9
		mov    0x28(%ebx),%esi
		sub    %edi,%edi
	jump_1c3f9:
		mov    (%esi),%edx
		cmp    %edx,%eax
		jbe    jump_1c419
		sub    %edx,%edi
		cmc
		sbb    %ecx,%ecx
		and    %ecx,%edi
		add    %edx,%edi
		lea    0x20(%ebx),%edx
		mov    0x8(%esi),%esi
		cmp    %edx,%esi
		jne    jump_1c3f9
		mov    %edi,0x14(%ebx)
	jump_1c415:
		sub    %eax,%eax
		jmp    jump_1c464
	jump_1c419:
		sub    %eax,%edx
		mov    %edi,0x10(%ebx)
		incl   0x18(%ebx)
		mov    0x8(%esi),%ecx
		cmp    $0xc,%edx
		jb     jump_1c447
		mov    %esi,%edi
		add    %eax,%edi
		mov    %edi,0xc(%ebx)
		mov    %edx,(%edi)
		mov    %eax,(%esi)
		mov    0x4(%esi),%ebx
		mov    %ebx,0x4(%edi)
		mov    %ecx,0x8(%edi)
		mov    %edi,0x8(%ebx)
		mov    %ecx,%ebx
		mov    %edi,0x4(%ebx)
		jmp    jump_1c45c
	jump_1c447:
		decl   0x1c(%ebx)
		mov    %esi,%eax
		mov    %ecx,%edi
		mov    0x4(%esi),%esi
		mov    %edi,0x8(%esi)
		mov    %esi,0x4(%edi)
		mov    %esi,0xc(%ebx)
		mov    %eax,%esi
	jump_1c45c:
		orl    $0x1,(%esi)
		mov    %esi,%eax
		add    $0x4,%eax
	jump_1c464:
		pop    %ds
		pop    %ecx
		pop    %edi
		pop    %esi
		ret
	jump_1c469:
		jmp    jump_1c574


/*----------------------------------------------------------------*/
func___MemFree:	/* 0x1c46e */
/*----------------------------------------------------------------*/
		push   %esi
		push   %edi
		push   %ecx
		push   %ds
		mov    %edx,%ds
		or     %eax,%eax
		je     jump_1c469
		mov    %eax,%esi
		sub    $0x4,%esi
		mov    (%esi),%eax
		test   $0x1,%al
		je     jump_1c469
		and    $0xfe,%al
		mov    %esi,%edi
		add    %eax,%edi
		testl  $0x1,(%edi)
		jne    jump_1c4b0
		cmp    0xc(%ebx),%edi
		jne    jump_1c499
		mov    %esi,0xc(%ebx)
	jump_1c499:
		add    (%edi),%eax
		mov    %eax,(%esi)
		push   %ebx
		mov    0x4(%edi),%ebx
		mov    0x8(%edi),%edi
		mov    %edi,0x8(%ebx)
		mov    %ebx,0x4(%edi)
		pop    %ebx
		decl   0x1c(%ebx)
		jmp    jump_1c52c
	jump_1c4b0:
		mov    %eax,(%esi)
		mov    0xc(%ebx),%edi
		cmp    %edi,%esi
		jae    jump_1c4c7
		cmp    0x4(%edi),%esi
		ja     jump_1c52c
		mov    0x28(%ebx),%edi
		cmp    %edi,%esi
		jb     jump_1c52c
		jmp    jump_1c4d6
	jump_1c4c7:
		mov    0x8(%edi),%edi
		cmp    %edi,%esi
		jb     jump_1c52c
		lea    0x20(%ebx),%edi
		cmp    0x24(%ebx),%esi
		ja     jump_1c52c
	jump_1c4d6:
		sub    %edx,%edx
		mov    0x18(%ebx),%eax
		mov    0x1c(%ebx),%ecx
		inc    %ecx
		div    %ecx
		dec    %ecx
		cmp    %ecx,%eax
		jae    jump_1c50b
		mov    0x18(%ebx),%edx
		sub    %ecx,%edx
		add    %eax,%eax
		cmp    %ecx,%edx
		ja     jump_1c4f3
		sub    %eax,%eax
	jump_1c4f3:
		mov    %esi,%edi
		add    (%esi),%edi
	jump_1c4f7:
		mov    (%edi),%edx
		test   $0x1,%dl
		je     jump_1c52c
		cmp    $0xffffffff,%edx
		je     jump_1c50b
		and    $0xfe,%dl
		add    %edx,%edi
		dec    %eax
		jne    jump_1c4f7
	jump_1c50b:
		mov    0xc(%ebx),%edi
		cmp    %edi,%esi
		jae    jump_1c515
		mov    0x28(%ebx),%edi
	jump_1c515:
		cmp    %edi,%esi
		jb     jump_1c52c
		mov    0x8(%edi),%edi
		cmp    %edi,%esi
		jb     jump_1c52c
		mov    0x8(%edi),%edi
		cmp    %edi,%esi
		jb     jump_1c52c
		mov    0x8(%edi),%edi
		jmp    jump_1c515
	jump_1c52c:
		mov    0x4(%edi),%edx
		mov    (%esi),%ecx
		xchg   %edi,%edx
		mov    %edi,%eax
		add    (%edi),%eax
		cmp    %esi,%eax
		jne    jump_1c54b
		add    (%edi),%ecx
		mov    %ecx,(%edi)
		cmp    0xc(%ebx),%esi
		jne    jump_1c547
		mov    %edi,0xc(%ebx)
	jump_1c547:
		mov    %edi,%esi
		jmp    jump_1c55c
	jump_1c54b:
		incl   0x1c(%ebx)
		mov    %edx,0x8(%esi)
		mov    %edi,0x4(%esi)
		mov    %esi,0x8(%edi)
		mov    %edx,%edi
		mov    %esi,0x4(%edi)
	jump_1c55c:
		decl   0x18(%ebx)
		cmp    0xc(%ebx),%esi
		jae    jump_1c56c
		cmp    0x10(%ebx),%ecx
		jbe    jump_1c56c
		mov    %ecx,0x10(%ebx)
	jump_1c56c:
		cmp    0x14(%ebx),%ecx
		jbe    jump_1c574
		mov    %ecx,0x14(%ebx)
	jump_1c574:
		pop    %ds
		pop    %ecx
		pop    %edi
		pop    %esi
		ret


/*----------------------------------------------------------------*/
func___unlink_:	/* 0x1c579 */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %edx
		mov    data_20db0,%edx
		cmp    %edx,%eax
		jne    jump_1c58e
		mov    0x8(%edx),%edx
		mov    %edx,data_20db0
	jump_1c58e:
		mov    data_20dac,%ebx
		cmp    %ebx,%eax
		jne    jump_1c5a1
		mov    0x8(%ebx),%edx
		mov    %edx,data_20dac
	jump_1c5a1:
		mov    0x4(%eax),%edx
		mov    0x8(%eax),%eax
		test   %edx,%edx
		je     jump_1c5ae
		mov    %eax,0x8(%edx)
	jump_1c5ae:
		test   %eax,%eax
		je     jump_1c5b5
		mov    %edx,0x4(%eax)
	jump_1c5b5:
		pop    %edx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func___FreeDPMIBlocks_:	/* 0x1c5b8 */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %edx
		push   %esi
		push   %edi
		mov    data_20dac,%edx
	jump_1c5c3:
		test   %edx,%edx
		je     jump_1c88f
		mov    0x24(%edx),%eax
		mov    (%eax),%eax
		mov    (%edx),%ebx
		add    $0x2c,%eax
		cmp    %ebx,%eax
		jne    jump_1c611
		lea    -0x8(%edx),%ebx
		mov    %edx,%eax
		mov    0x8(%edx),%ecx
		call   func___unlink_
		mov    %ecx,%edx
		mov    0x4(%ebx),%ecx
		test   %ecx,%ecx
		jne    jump_1c601
		mov    (%ebx),%eax
		shr    $0x10,%eax
		mov    (%ebx),%di
		mov    %eax,%esi
		mov    $0x5,%ah
		mov    $0x2,%al
		int    $0x31
		jmp    jump_1c5c3
	jump_1c601:
		mov    %ecx,%eax
		push   %es
		mov    %eax,%es
		mov    $0x49,%ah
		int    $0x21
		rcl    %eax
		ror    %eax
		pop    %es
		jmp    jump_1c5c3
	jump_1c611:
		mov    0x8(%edx),%edx
		jmp    jump_1c5c3


/*----------------------------------------------------------------*/
func___LinkUpNewMHeap_:	/* 0x1c700 */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %edx
		mov    %eax,%edx
		mov    data_20dac,%eax
		xor    %ebx,%ebx
		jmp    jump_1c716
	jump_1c70d:
		cmp    %eax,%edx
		jb     jump_1c71a
		mov    %eax,%ebx
		mov    0x8(%eax),%eax
	jump_1c716:
		test   %eax,%eax
		jne    jump_1c70d
	jump_1c71a:
		mov    %ebx,0x4(%edx)
		mov    %eax,0x8(%edx)
		test   %ebx,%ebx
		je     jump_1c729
		mov    %edx,0x8(%ebx)
		jmp    jump_1c72f
	jump_1c729:
		mov    %edx,data_20dac
	jump_1c72f:
		test   %eax,%eax
		je     jump_1c736
		mov    %edx,0x4(%eax)
	jump_1c736:
		lea    0x20(%edx),%ebx
		mov    (%edx),%eax
		add    $0x2c,%edx
		movl   $0x0,-0xc(%edx)
		movl   $0x0,-0x1c(%edx)
		movl   $0x0,-0x14(%edx)
		movl   $0x0,-0x10(%edx)
		mov    %ebx,-0x8(%edx)
		mov    %ebx,-0x4(%edx)
		sub    $0x2c,%eax
		mov    %ebx,-0x20(%edx)
		mov    %eax,(%edx)
		movl   $0xffffffff,(%edx,%eax,1)
		mov    %edx,%eax
		pop    %edx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func___LastFree_:	/* 0x1c774 */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %edx
		mov    data_20dac,%edx
		test   %edx,%edx
		je     jump_1c7bd
		mov    0x24(%edx),%edx
		mov    (%edx),%ebx
		add    %edx,%ebx
		mov    data_21096,%ah
		add    $0x4,%ebx
		cmp    $0x2,%ah
		jb     jump_1c7b0
		cmp    $0x8,%ah
		ja     jump_1c7b0
		cmpb   $0x0,data_21098
		jne    jump_1c7b0
		xor    %eax,%eax
		mov    %ds,%eax
		lsl    %eax,%eax
		inc    %eax
		mov    %eax,data_21068
	jump_1c7b0:
		cmp    data_21068,%ebx
		jne    jump_1c7bd
		mov    (%edx),%eax
		pop    %edx
		pop    %ebx
		ret
	jump_1c7bd:
		xor    %eax,%eax
		pop    %edx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_RationalAlloc_:	/* 0x1c7c2 */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %edx
		push   %esi
		push   %edi
		push   %eax
		call   func___FreeDPMIBlocks_
		mov    (%esp),%eax
		shr    $0x10,%eax
		mov    (%esp),%ecx
		mov    %eax,%ebx
		mov    $0x5,%ah
		mov    $0x1,%al
		int    $0x31
		sbb    %eax,%eax
		inc    %eax
		je     jump_1c7f3
		mov    %bx,%ax
		shl    $0x10,%eax
		mov    %cx,%ax
		mov    %di,(%eax)
		mov    %si,0x2(%eax)
	jump_1c7f3:
		test   %eax,%eax
		je     jump_1c810
		mov    (%esp),%ebx
		lea    0x8(%eax),%edx
		sub    $0x8,%ebx
		mov    %ebx,(%edx)
		movl   $0x0,0x4(%eax)
		mov    %edx,%eax
		jmp    jump_1c88c
	jump_1c810:
		testw  $0xfff0,data_542da
		je     jump_1c825
		movl   $0xfffff,data_542d8
	jump_1c825:
		cmpl   $0x10000,(%esp)
		ja     jump_1c88a
		mov    data_542d8,%ebx
		shr    $0x4,%ebx
		or     $0x1,%bl
		mov    $0x48,%ah
		int    $0x21
		rcl    %eax
		ror    %eax
		mov    %eax,%edx
		test   %eax,%eax
		jl     jump_1c88a
		mov    (%esp),%ebx
		shr    $0x4,%ebx
		mov    $0x48,%ah
		int    $0x21
		rcl    %eax
		ror    %eax
		mov    %eax,%esi
		mov    %eax,%ebx
		mov    %edx,%eax
		push   %es
		mov    %eax,%es
		mov    $0x49,%ah
		int    $0x21
		rcl    %eax
		ror    %eax
		pop    %es
		test   %esi,%esi
		jl     jump_1c88a
		mov    $0x0,%ah
		mov    $0x6,%al
		int    $0x31
		mov    %ecx,%eax
		shl    $0x10,%eax
		mov    %dx,%ax
		add    $0x8,%eax
		mov    (%esp),%edx
		mov    %esi,-0x4(%eax)
		sub    $0x8,%edx
		mov    %edx,(%eax)
		jmp    jump_1c88c
	jump_1c88a:
		xor    %eax,%eax
	jump_1c88c:
		add    $0x4,%esp
	jump_1c88f:
		pop    %edi
		pop    %esi
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func___CreateNewNHeap_:	/* 0x1c895 */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %edx
		push   %esi
		push   %edi
		push   %eax
		cmpl   $0x0,data_210a8
		jne    jump_1c8a8
	jump_1c8a4:
		xor    %eax,%eax
		jmp    jump_1c88c
	jump_1c8a8:
		cmpl   $0xfffffffe,data_21068
		je     jump_1c8a4
		mov    %esp,%eax
		call   func___AdjustAmount_
		test   %eax,%eax
		je     jump_1c88c
		cmpb   $0x1,data_21096
		jne    jump_1c8dc
		mov    (%esp),%eax
		call   func_RationalAlloc_
		mov    %eax,%ebx
		mov    %eax,%edx
		test   %eax,%eax
		je     jump_1c8f7
		mov    (%eax),%eax
		mov    %eax,(%esp)
		jmp    jump_1c8f7
	jump_1c8dc:
		mov    (%esp),%ebx
		mov    $0x80004800,%eax
		int    $0x21
		sbb    %ebx,%ebx
		not    %ebx
		and    %ebx,%eax
		mov    (%esp),%ecx
		sub    $0x4,%ecx
		mov    %eax,%edx
		mov    %ecx,(%esp)
	jump_1c8f7:
		test   %edx,%edx
		je     jump_1c8a4
		mov    (%esp),%eax
		mov    (%esp),%esi
		sub    $0x4,%eax
		cmp    %esi,%eax
		ja     jump_1c8a4
		mov    %eax,(%esp)
		cmp    $0x38,%eax
		jb     jump_1c8a4
		mov    %eax,(%edx)
		mov    %edx,%eax
		call   func___LinkUpNewMHeap_
		mov    %eax,%ebx
		mov    (%eax),%eax
		mov    %eax,(%esp)
		or     $0x1,%al
		mov    %eax,(%ebx)
		mov    0x18(%edx),%edi
		movl   $0xffffffff,0x14(%edx)
		inc    %edi
		lea    0x4(%ebx),%eax
		mov    %edi,0x18(%edx)
		call   w_dos_free
		mov    $0x1,%eax
		jmp    jump_1c88c


/*----------------------------------------------------------------*/
func___ExpandDGROUP_:	/* 0x1c944 */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %edx
		push   %esi
		push   %ebp
		push   %eax
		cmpb   $0x1,data_21096
		jne    jump_1c95c
		cmpb   $0x0,data_21097
		je     jump_1c965
	jump_1c95c:
		cmpb   $0x9,data_21096
		jne    jump_1c972
	jump_1c965:
		mov    (%esp),%eax
		call   func___CreateNewNHeap_
		jmp    jump_1ca7f
	jump_1c972:
		cmpl   $0x0,data_210a8
		jne    jump_1c982
	jump_1c97b:
		xor    %eax,%eax
		jmp    jump_1ca7f
	jump_1c982:
		cmpl   $0xfffffffe,data_21068
		je     jump_1c97b
		mov    %esp,%eax
		call   func___AdjustAmount_
		test   %eax,%eax
		je     jump_1ca7f
		mov    data_21096,%bl
		cmp    $0x2,%bl
		jb     jump_1c9c0
		cmp    $0x8,%bl
		ja     jump_1c9c0
		cmpb   $0x0,data_21098
		jne    jump_1c9c0
		xor    %eax,%eax
		mov    %ds,%eax
		lsl    %eax,%eax
		inc    %eax
		mov    %eax,data_21068
	jump_1c9c0:
		mov    (%esp),%edx
		mov    data_21068,%ecx
		add    %ecx,%edx
		cmp    %ecx,%edx
		jae    jump_1c9d4
		mov    $0xfffffffe,%edx
	jump_1c9d4:
		mov    %edx,%eax
		call   func___brk_
		cmp    $0xffffffff,%eax
		je     jump_1c97b
		mov    %eax,%ebx
		cmp    $0xfffffff8,%eax
		ja     jump_1c97b
		cmp    %eax,%edx
		jbe    jump_1c97b
		sub    %eax,%edx
		lea    -0x4(%edx),%eax
		mov    %edx,(%esp)
		cmp    %edx,%eax
		ja     jump_1c97b
		mov    data_20dac,%edx
		mov    %eax,(%esp)
		jmp    jump_1ca14
	jump_1ca02:
		mov    0x8(%edx),%ebp
		test   %ebp,%ebp
		je     jump_1ca18
		cmp    %ebx,%edx
		ja     jump_1ca11
		cmp    %ebp,%ebx
		jb     jump_1ca18
	jump_1ca11:
		mov    0x8(%edx),%edx
	jump_1ca14:
		test   %edx,%edx
		jne    jump_1ca02
	jump_1ca18:
		test   %edx,%edx
		je     jump_1ca42
		mov    (%edx),%eax
		lea    -0x4(%ebx),%ecx
		add    %edx,%eax
		cmp    %eax,%ecx
		jne    jump_1ca42
		mov    (%esp),%esi
		add    $0x4,%esi
		mov    %esi,(%esp)
		add    %esi,(%edx)
		mov    (%esp),%ebp
		lea    (%eax,%ebp,1),%ecx
		mov    %eax,%ebx
		movl   $0xffffffff,(%ecx)
		jmp    jump_1ca61
	jump_1ca42:
		cmpl   $0x38,(%esp)
		jb     jump_1c97b
		mov    (%esp),%eax
		mov    %eax,(%ebx)
		mov    %ebx,%eax
		mov    %ebx,%edx
		call   func___LinkUpNewMHeap_
		mov    %eax,%ebx
		mov    (%eax),%eax
		mov    %eax,(%esp)
	jump_1ca61:
		mov    (%esp),%eax
		or     $0x1,%al
		mov    %eax,(%ebx)
		incl   0x18(%edx)
		lea    0x4(%ebx),%eax
		movl   $0xffffffff,0x14(%edx)
		call   w_dos_free
		mov    $0x1,%eax
	jump_1ca7f:
		add    $0x4,%esp
		pop    %ebp
		pop    %esi
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func___AdjustAmount_:	/* 0x1ca88 */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %edx
		push   %esi
		mov    %eax,%ebx
		mov    (%eax),%edx
		add    $0x3,%edx
		and    $0xfc,%dl
		test   %edx,%edx
		jne    jump_1ca9f
	jump_1ca99:
		xor    %eax,%eax
		pop    %esi
		pop    %edx
		pop    %ebx
		ret
	jump_1ca9f:
		cmpb   $0x1,data_21096
		jne    jump_1cab1
		cmpb   $0x0,data_21097
		je     jump_1caba
	jump_1cab1:
		cmpb   $0x9,data_21096
		jne    jump_1cabf
	jump_1caba:
		add    $0x8,%edx
		jmp    jump_1cac6
	jump_1cabf:
		call   func___LastFree_
		sub    %eax,%edx
	jump_1cac6:
		mov    %edx,(%ebx)
		add    $0x3c,%edx
		cmp    (%ebx),%edx
		jb     jump_1ca99
		mov    data_210ac,%esi
		cmp    %esi,%edx
		jae    jump_1cade
		mov    %esi,%edx
		and    $0xfe,%dl
	jump_1cade:
		mov    %edx,(%ebx)
		add    $0xfff,%edx
		cmp    (%ebx),%edx
		jb     jump_1ca99
		and    $0xf0,%dh
		xor    %dl,%dl
		mov    %edx,(%ebx)
		test   %edx,%edx
		setne  %al
		and    $0xff,%eax
		pop    %esi
		pop    %edx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_1caff:
/*----------------------------------------------------------------*/
		xor    %eax,%eax
		ret


/*----------------------------------------------------------------*/
func_isatty_:	/* 0x1cb02 */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %edx
		mov    %eax,%ebx
		mov    $0x0,%al
		mov    $0x44,%ah
		int    $0x21
		rcl    %edx
		ror    %edx
		test   $0x80,%dl
		setne  %al
		and    $0xff,%eax
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func___set_errno_:	/* 0x1cb25 */
/*----------------------------------------------------------------*/
		push   %edx
		mov    %eax,%edx
		call   func_1e2cc
		mov    %edx,(%eax)
		pop    %edx
		ret


/*----------------------------------------------------------------*/
func___set_doserrno_:	/* 0x1cb48 */
/*----------------------------------------------------------------*/
		push   %edx
		mov    %eax,%edx
		call   func_1e2d2
		mov    %edx,(%eax)
		pop    %edx
		ret


/*----------------------------------------------------------------*/
func___set_errno_dos_:	/* 0x1cb67 */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %edx
		mov    %eax,%edx
		mov    %al,%bl
		xor    %eax,%eax
		mov    %dl,%al
		call   func___set_doserrno_
		cmp    $0x100,%edx
		jae    jump_1cbb6
		cmpb   $0x3,data_2109f
		jb     jump_1cba0
		cmp    $0x50,%dl
		jne    jump_1cb90
		mov    $0xe,%bl
		jmp    jump_1cba0
	jump_1cb90:
		cmp    $0x22,%dl
		jb     jump_1cb99
		mov    $0x13,%bl
		jmp    jump_1cba0
	jump_1cb99:
		cmp    $0x20,%dl
		jb     jump_1cba0
		mov    $0x5,%bl
	jump_1cba0:
		cmp    $0x13,%bl
		jbe    jump_1cba7
		mov    $0x13,%bl
	jump_1cba7:
		xor    %edx,%edx
		mov    %bl,%dl
		mov    data_20ddd(%edx),%eax
		sar    $0x18,%eax
		jmp    jump_1cbc0
	jump_1cbb6:
		mov    %edx,%eax
		shr    $0x8,%eax
		and    $0xff,%eax
	jump_1cbc0:
		call   func___set_errno_
		mov    $0xffffffff,%eax
		pop    %edx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func___IOMode_:	/* 0x1cbcd */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %edx
		mov    %eax,%edx
		cmp    data_20df8,%eax
		jb     jump_1cbe0
		xor    %eax,%eax
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret
	jump_1cbe0:
		cmp    $0x5,%eax
		jg     jump_1cc16
		mov    %eax,%ebx
		mov    data_20e4c,%eax
		shl    $0x2,%ebx
		add    %ebx,%eax
		mov    0x1(%eax),%cl
		test   $0x40,%cl
		jne    jump_1cc16
		mov    %cl,%ch
		or     $0x40,%ch
		mov    %ch,0x1(%eax)
		mov    %edx,%eax
		call   func_isatty_
		test   %eax,%eax
		je     jump_1cc16
		mov    data_20e4c,%eax
		orb    $0x20,0x1(%ebx,%eax,1)
	jump_1cc16:
		mov    data_20e4c,%eax
		mov    (%eax,%edx,4),%eax
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func___SetIOMode_:	/* 0x1cc22 */
/*----------------------------------------------------------------*/
		push   %ebx
		or     $0x40,%dh
		mov    %edx,%ebx
		mov    %eax,%edx
		mov    data_20e4c,%eax
		shl    $0x2,%edx
		mov    %ebx,(%edx,%eax,1)
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func___close_:	/* 0x1cc37 */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %edx
		mov    %eax,%edx
		mov    %eax,%ebx
		mov    $0x3e,%ah
		int    $0x21
		rcl    %eax
		ror    %eax
		test   %eax,%eax
		jl     jump_1cc57
		mov    %edx,%eax
		xor    %edx,%edx
		call   func___SetIOMode_
		xor    %eax,%eax
		pop    %edx
		pop    %ebx
		ret
	jump_1cc57:
		mov    $0x4,%eax
		call   func___set_errno_
		mov    $0xffffffff,%eax
		pop    %edx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_nullsub_2:	/* 0x1cc69 */
/*----------------------------------------------------------------*/
		ret


/*----------------------------------------------------------------*/
func___delay_init_:	/* 0x1cc6a */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %edx
		push   %esi
		mov    $0x2c,%ah
		int    $0x21
		xor    %eax,%eax
		mov    %dh,%al
		mov    %eax,%ebx
	jump_1cc78:
		mov    $0x2c,%ah
		int    $0x21
		xor    %eax,%eax
		mov    %dh,%al
		cmp    %eax,%ebx
		je     jump_1cc78
		xor    %esi,%esi
		mov    %al,%bl
	jump_1cc88:
		mov    $0x2c,%ah
		int    $0x21
		inc    %esi
		cmp    %dh,%bl
		je     jump_1cc88
		mov    %esi,data_542d0
		pop    %esi
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func___prtf_:	/* 0x1ccd4 */
/*----------------------------------------------------------------*/
		push   %esi
		push   %edi
		push   %es
		push   %ebp
		sub    $0x4c,%esp
		mov    %ebx,%esi
		mov    %ecx,0x44(%esp)
		xor    %bl,%bl
		mov    %eax,0x28(%esp)
		mov    %bl,0x48(%esp)
		mov    %bl,0x3c(%esp)
		xor    %ebx,%ebx
		mov    %edx,%edi
		mov    %ebx,0x38(%esp)
		mov    $0x4,%ebp
		jmp    jump_1cd57
	jump_1ccfe:
		lea    0x28(%esp),%ebx
		mov    %esi,%edx
		call   func_getprintspecs_
		mov    %eax,%edi
		mov    (%eax),%al
		inc    %edi
		mov    %al,0x3d(%esp)
		test   %al,%al
		je     jump_1cf49
		cmp    $0x6e,%al
		jne    jump_1cdf9
		mov    0x3c(%esp),%bl
		test   $0x20,%bl
		je     jump_1cd84
		test   $0x80,%bl
		je     jump_1cd43
		mov    (%esi),%ecx
		add    $0x8,%ecx
		mov    %ecx,(%esi)
		les    -0x8(%ecx),%edx
	jump_1cd3a:
		mov    0x38(%esp),%eax
		mov    %eax,%es:(%edx)
		jmp    jump_1cd57
	jump_1cd43:
		test   $0x40,%bl
		je     jump_1cd79
		mov    (%esi),%ebx
		add    %ebp,%ebx
		mov    %ebx,(%esi)
		mov    -0x4(%ebx),%edx
	jump_1cd51:
		mov    0x38(%esp),%eax
		mov    %eax,(%edx)
	jump_1cd57:
		mov    (%edi),%cl
		test   %cl,%cl
		je     jump_1cf49
		lea    0x1(%edi),%eax
		cmp    $0x25,%cl
		je     jump_1ccfe
		mov    %eax,%edi
		xor    %edx,%edx
		lea    0x28(%esp),%eax
		mov    %cl,%dl
		call   *0x44(%esp)
		jmp    jump_1cd57
	jump_1cd79:
		mov    (%esi),%edx
		add    %ebp,%edx
		mov    %edx,(%esi)
		mov    -0x4(%edx),%edx
		jmp    jump_1cd51
	jump_1cd84:
		test   $0x10,%bl
		je     jump_1cdc4
		test   $0x80,%bl
		je     jump_1cda2
		mov    (%esi),%eax
		add    $0x8,%eax
		mov    %eax,(%esi)
		les    -0x8(%eax),%edx
		mov    0x38(%esp),%eax
		mov    %ax,%es:(%edx)
		jmp    jump_1cd57
	jump_1cda2:
		test   $0x40,%bl
		je     jump_1cdb9
		mov    (%esi),%ecx
		add    %ebp,%ecx
		mov    %ecx,(%esi)
		mov    -0x4(%ecx),%edx
	jump_1cdb0:
		mov    0x38(%esp),%eax
		mov    %ax,(%edx)
		jmp    jump_1cd57
	jump_1cdb9:
		mov    (%esi),%ebx
		add    %ebp,%ebx
		mov    %ebx,(%esi)
		mov    -0x4(%ebx),%edx
		jmp    jump_1cdb0
	jump_1cdc4:
		test   $0x80,%bl
		je     jump_1cdd8
		mov    (%esi),%edx
		add    $0x8,%edx
		mov    %edx,(%esi)
		les    -0x8(%edx),%edx
		jmp    jump_1cd3a
	jump_1cdd8:
		test   $0x40,%bl
		je     jump_1cdeb
		mov    (%esi),%eax
		add    %ebp,%eax
		mov    %eax,(%esi)
		mov    -0x4(%eax),%edx
		jmp    jump_1cd51
	jump_1cdeb:
		mov    (%esi),%ecx
		add    %ebp,%ecx
		mov    %ecx,(%esi)
		mov    -0x4(%ecx),%edx
		jmp    jump_1cd51
	jump_1cdf9:
		mov    %esp,%eax
		lea    0x28(%esp),%ebx
		lea    0x48(%esp),%ecx
		mov    %esi,%edx
		call   func_formstring_
		mov    %edx,%es
		mov    0x3c(%esp),%dl
		mov    %eax,%ebx
		test   $0x8,%dl
		jne    jump_1ce3b
		cmpb   $0x20,0x3e(%esp)
		jne    jump_1ce3b
	jump_1ce1e:
		mov    0x2c(%esp),%eax
		dec    %eax
		mov    %eax,0x2c(%esp)
		test   %eax,%eax
		jl     jump_1ce3b
		xor    %edx,%edx
		lea    0x28(%esp),%eax
		mov    0x3e(%esp),%dl
		call   *0x44(%esp)
		jmp    jump_1ce1e
	jump_1ce3b:
		lea    0x3f(%esp),%ecx
	jump_1ce3f:
		mov    (%ecx),%al
		test   %al,%al
		je     jump_1ce54
		xor    %edx,%edx
		mov    %al,%dl
		lea    0x28(%esp),%eax
		inc    %ecx
		call   *0x44(%esp)
		jmp    jump_1ce3f
	jump_1ce54:
		mov    0x34(%esp),%eax
		lea    -0x1(%eax),%ecx
		mov    %ecx,0x34(%esp)
		test   %eax,%eax
		je     jump_1ce72
		lea    0x28(%esp),%eax
		mov    $0x30,%edx
		call   *0x44(%esp)
		jmp    jump_1ce54
	jump_1ce72:
		testb  $0x8,0x3c(%esp)
		jne    jump_1ce9d
		cmpb   $0x20,0x3e(%esp)
		je     jump_1ce9d
	jump_1ce80:
		mov    0x2c(%esp),%eax
		dec    %eax
		mov    %eax,0x2c(%esp)
		test   %eax,%eax
		jl     jump_1ce9d
		xor    %edx,%edx
		lea    0x28(%esp),%eax
		mov    0x3e(%esp),%dl
		call   *0x44(%esp)
		jmp    jump_1ce80
	jump_1ce9d:
		mov    0x3d(%esp),%dh
		cmp    $0x73,%dh
		je     jump_1ceab
		cmp    $0x53,%dh
		jne    jump_1cef2
	jump_1ceab:
		testb  $0x20,0x3c(%esp)
		je     jump_1ced3
	jump_1ceb2:
		mov    0x30(%esp),%eax
		lea    -0x1(%eax),%ecx
		mov    %ecx,0x30(%esp)
		test   %eax,%eax
		je     jump_1cf11
		xor    %edx,%edx
		lea    0x28(%esp),%eax
		mov    %es:(%ebx),%dl
		call   *0x44(%esp)
		add    $0x2,%ebx
		jmp    jump_1ceb2
	jump_1ced3:
		mov    0x30(%esp),%eax
		lea    -0x1(%eax),%edx
		mov    %edx,0x30(%esp)
		test   %eax,%eax
		je     jump_1cf11
		xor    %edx,%edx
		lea    0x28(%esp),%eax
		mov    %es:(%ebx),%dl
		call   *0x44(%esp)
		inc    %ebx
		jmp    jump_1ced3
	jump_1cef2:
		mov    0x30(%esp),%eax
		lea    -0x1(%eax),%ecx
		mov    %ecx,0x30(%esp)
		test   %eax,%eax
		je     jump_1cf11
		xor    %edx,%edx
		lea    0x28(%esp),%eax
		mov    %es:(%ebx),%dl
		call   *0x44(%esp)
		inc    %ebx
		jmp    jump_1cef2
	jump_1cf11:
		testb  $0x8,0x3c(%esp)
		je     jump_1cd57
		cmpl   $0x0,0x2c(%esp)
		jle    jump_1cd57
	jump_1cf27:
		mov    0x2c(%esp),%eax
		lea    -0x1(%eax),%edx
		mov    %edx,0x2c(%esp)
		test   %eax,%eax
		je     jump_1cd57
		lea    0x28(%esp),%eax
		mov    $0x20,%edx
		call   *0x44(%esp)
		jmp    jump_1cf27
	jump_1cf49:
		mov    0x38(%esp),%eax
		add    $0x4c,%esp
		pop    %ebp
		pop    %es
		pop    %edi
		pop    %esi
		ret


/*----------------------------------------------------------------*/
func_getprintspecs_:	/* 0x1cf55 */
/*----------------------------------------------------------------*/
		push   %ecx
		push   %esi
		push   %edi
		mov    %edx,%esi
		movb   $0x0,0x17(%ebx)
		mov    %ebx,%edx
		movb   $0x20,0x16(%ebx)
		call   func_evalflags_
		movl   $0x0,0x4(%ebx)
		mov    (%eax),%cl
		mov    %eax,%edx
		cmp    $0x30,%cl
		jb     jump_1cf9d
		cmp    $0x39,%cl
		ja     jump_1cf9d
	jump_1cf7e:
		imul   $0xa,0x4(%ebx),%ecx
		xor    %edx,%edx
		mov    (%eax),%dl
		sub    $0x30,%edx
		add    %edx,%ecx
		inc    %eax
		mov    %ecx,0x4(%ebx)
		mov    (%eax),%cl
		cmp    $0x30,%cl
		jb     jump_1cfc4
		cmp    $0x39,%cl
		jbe    jump_1cf7e
		jmp    jump_1cfc4
	jump_1cf9d:
		cmpb   $0x2a,(%eax)
		jne    jump_1cfc4
		mov    (%esi),%edx
		add    $0x4,%edx
		mov    %edx,(%esi)
		mov    -0x4(%edx),%edx
		mov    %edx,0x4(%ebx)
		test   %edx,%edx
		jge    jump_1cfc3
		mov    %edx,%edi
		mov    0x14(%ebx),%dh
		neg    %edi
		or     $0x8,%dh
		mov    %edi,0x4(%ebx)
		mov    %dh,0x14(%ebx)
	jump_1cfc3:
		inc    %eax
	jump_1cfc4:
		movl   $0xffffffff,0x8(%ebx)
		cmpb   $0x2e,(%eax)
		jne    jump_1d017
		inc    %eax
		movl   $0x0,0x8(%ebx)
		cmpb   $0x2a,(%eax)
		jne    jump_1cff8
		mov    (%esi),%edx
		add    $0x4,%edx
		mov    %edx,(%esi)
		mov    -0x4(%edx),%edx
		mov    %edx,0x8(%ebx)
		test   %edx,%edx
		jge    jump_1cff5
		movl   $0xffffffff,0x8(%ebx)
	jump_1cff5:
		inc    %eax
		jmp    jump_1d017
	jump_1cff8:
		mov    (%eax),%cl
		cmp    $0x30,%cl
		jb     jump_1d017
		cmp    $0x39,%cl
		ja     jump_1d017
		imul   $0xa,0x8(%ebx),%ecx
		xor    %edx,%edx
		mov    (%eax),%dl
		sub    $0x30,%edx
		add    %edx,%ecx
		inc    %eax
		mov    %ecx,0x8(%ebx)
		jmp    jump_1cff8
	jump_1d017:
		mov    (%eax),%cl
		lea    0x1(%eax),%edx
		cmp    $0x4e,%cl
		jb     jump_1d03c
		jbe    jump_1d079
		cmp    $0x6c,%cl
		jb     jump_1d033
		jbe    jump_1d04c
		cmp    $0x77,%cl
		je     jump_1d04c
		pop    %edi
		pop    %esi
		pop    %ecx
		ret
	jump_1d033:
		cmp    $0x68,%cl
		je     jump_1d05a
		pop    %edi
		pop    %esi
		pop    %ecx
		ret
	jump_1d03c:
		cmp    $0x46,%cl
		jb     jump_1d084
		jbe    jump_1d073
		cmp    $0x4c,%cl
		je     jump_1d069
		pop    %edi
		pop    %esi
		pop    %ecx
		ret
	jump_1d04c:
		mov    0x14(%ebx),%dl
		or     $0x20,%dl
		inc    %eax
		mov    %dl,0x14(%ebx)
		pop    %edi
		pop    %esi
		pop    %ecx
		ret
	jump_1d05a:
		mov    0x14(%ebx),%cl
		or     $0x10,%cl
		mov    %edx,%eax
		mov    %cl,0x14(%ebx)
		pop    %edi
		pop    %esi
		pop    %ecx
		ret
	jump_1d069:
		orb    $0x40,0x14(%ebx)
	jump_1d06d:
		mov    %edx,%eax
		pop    %edi
		pop    %esi
		pop    %ecx
		ret
	jump_1d073:
		orb    $0x80,0x14(%ebx)
		jmp    jump_1d06d
	jump_1d079:
		mov    0x14(%ebx),%ch
		or     $0x40,%ch
		mov    %edx,%eax
		mov    %ch,0x14(%ebx)
	jump_1d084:
		pop    %edi
		pop    %esi
		pop    %ecx
		ret


/*----------------------------------------------------------------*/
func_evalflags_:	/* 0x1d088 */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		movb   $0x0,0x14(%edx)
	jump_1d08e:
		mov    (%eax),%bl
		cmp    $0x2d,%bl
		jne    jump_1d09b
		orb    $0x8,0x14(%edx)
		jmp    jump_1d0dd
	jump_1d09b:
		cmp    $0x23,%bl
		jne    jump_1d0a6
		orb    $0x1,0x14(%edx)
		jmp    jump_1d0dd
	jump_1d0a6:
		cmp    $0x2b,%bl
		jne    jump_1d0be
		mov    0x14(%edx),%ch
		or     $0x4,%ch
		mov    %ch,%bl
		mov    %ch,0x14(%edx)
		and    $0xfd,%bl
		mov    %bl,0x14(%edx)
		jmp    jump_1d0dd
	jump_1d0be:
		cmp    $0x20,%bl
		jne    jump_1d0d5
		mov    0x14(%edx),%bh
		test   $0x4,%bh
		jne    jump_1d0dd
		mov    %bh,%cl
		or     $0x2,%cl
		mov    %cl,0x14(%edx)
		jmp    jump_1d0dd
	jump_1d0d5:
		cmp    $0x30,%bl
		jne    jump_1d0e0
		mov    %bl,0x16(%edx)
	jump_1d0dd:
		inc    %eax
		jmp    jump_1d08e
	jump_1d0e0:
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_far_strlen_:	/* 0x1d0e3 */
/*----------------------------------------------------------------*/
		push   %ecx
		push   %esi
		push   %edi
		push   %es
		mov    %edx,%esi
		mov    %ebx,%edi
		mov    %eax,%edx
		xor    %eax,%eax
	jump_1d0ef:
		mov    %esi,%es
		mov    %edx,%ebx
		mov    %es:(%ebx),%cl
		inc    %edx
		test   %cl,%cl
		je     jump_1d102
		cmp    %edi,%eax
		je     jump_1d102
		inc    %eax
		jmp    jump_1d0ef
	jump_1d102:
		pop    %es
		pop    %edi
		pop    %esi
		pop    %ecx
		ret


/*----------------------------------------------------------------*/
func_far_other_strlen_:	/* 0x1d107 */
/*----------------------------------------------------------------*/
		push   %ecx
		push   %esi
		push   %edi
		push   %es
		mov    %edx,%ecx
		mov    %ebx,%esi
		mov    %eax,%edx
		xor    %eax,%eax
	jump_1d113:
		mov    %ecx,%es
		mov    %edx,%ebx
		mov    %es:(%ebx),%di
		add    $0x2,%edx
		test   %di,%di
		je     jump_1d102
		cmp    %esi,%eax
		je     jump_1d102
		inc    %eax
		jmp    jump_1d113


/*----------------------------------------------------------------*/
func_fmt4hex_:	/* 0x1d12a */
/*----------------------------------------------------------------*/
		push   %ecx
		push   %esi
		push   %edi
		push   %ebp
		sub    $0x4,%esp
		mov    %edx,%ebp
		mov    %ebx,(%esp)
		mov    $0x10,%ebx
		mov    %ebp,%edi
		call   func_itoa_
		push   %es
		mov    %ds,%eax
		mov    %eax,%es
		sub    %ecx,%ecx
		dec    %ecx
		xor    %eax,%eax
		repnz scas %es:(%edi),%al
		not    %ecx
		dec    %ecx
		pop    %es
		mov    (%esp),%eax
		mov    %ecx,%esi
		mov    %ebp,%edi
		dec    %eax
		lea    (%ecx,%ebp,1),%edx
		lea    (%eax,%ebp,1),%ebx
		jmp    jump_1d16a
	jump_1d162:
		dec    %edx
		dec    %esi
		mov    (%edx),%cl
		dec    %eax
		mov    %cl,(%ebx)
		dec    %ebx
	jump_1d16a:
		cmp    %edi,%edx
		jne    jump_1d162
		lea    (%eax,%ebp,1),%edx
	jump_1d171:
		test   %eax,%eax
		jl     jump_1d17c
		dec    %eax
		movb   $0x30,(%edx)
		dec    %edx
		jmp    jump_1d171
	jump_1d17c:
		add    (%esp),%ebp
		movb   $0x0,0x0(%ebp)
		add    $0x4,%esp
		pop    %ebp
		pop    %edi
		pop    %esi
		pop    %ecx
		ret


/*----------------------------------------------------------------*/
func_FixedPoint_Format_:	/* 0x1d18b */
/*----------------------------------------------------------------*/
		push   %ecx
		push   %esi
		push   %edi
		sub    $0x4,%esp
		mov    %eax,%ecx
		mov    %ebx,%esi
		mov    %edx,(%esp)
		test   %edx,%edx
		jge    jump_1d1a7
		neg    %edx
		lea    0x1(%eax),%ecx
		movb   $0x2d,(%eax)
		mov    %edx,(%esp)
	jump_1d1a7:
		cmpl   $0xffffffff,0x8(%esi)
		jne    jump_1d1b4
		movl   $0x4,0x8(%esi)
	jump_1d1b4:
		mov    $0xa,%ebx
		xor    %eax,%eax
		mov    %ecx,%edx
		mov    0x2(%esp),%ax
		call   func_itoa_
		mov    %ecx,%ebx
	jump_1d1c9:
		mov    (%ecx),%ah
		lea    0x1(%ecx),%edx
		test   %ah,%ah
		je     jump_1d1d6
		mov    %edx,%ecx
		jmp    jump_1d1c9
	jump_1d1d6:
		cmpl   $0x0,0x8(%esi)
		je     jump_1d208
		movb   $0x2e,(%ecx)
		xor    %eax,%eax
		mov    %edx,%ecx
		jmp    jump_1d200
	jump_1d1e5:
		xor    %edx,%edx
		mov    %dx,0x2(%esp)
		mov    (%esp),%edi
		imul   $0xa,%edi,%edx
		mov    %edx,(%esp)
		mov    0x2(%esp),%dl
		add    $0x30,%dl
		inc    %eax
		mov    %dl,(%ecx)
		inc    %ecx
	jump_1d200:
		cmp    0x8(%esi),%eax
		jl     jump_1d1e5
		movb   $0x0,(%ecx)
	jump_1d208:
		testb  $0x80,0x1(%esp)
		je     jump_1d25f
	jump_1d20f:
		cmp    %ebx,%ecx
		jne    jump_1d245
		lea    0x1(%ebx),%ecx
		movb   $0x31,(%ebx)
	jump_1d219:
		mov    (%ecx),%dl
		lea    0x1(%ecx),%eax
		cmp    $0x30,%dl
		jne    jump_1d227
		mov    %eax,%ecx
		jmp    jump_1d219
	jump_1d227:
		cmp    $0x2e,%dl
		jne    jump_1d23c
		movb   $0x30,(%ecx)
		lea    0x1(%eax),%ecx
		mov    %dl,(%eax)
	jump_1d234:
		cmpb   $0x30,(%ecx)
		jne    jump_1d23c
		inc    %ecx
		jmp    jump_1d234
	jump_1d23c:
		movb   $0x30,(%ecx)
		inc    %ecx
		movb   $0x0,(%ecx)
		jmp    jump_1d25f
	jump_1d245:
		dec    %ecx
		cmpb   $0x2e,(%ecx)
		jne    jump_1d24c
		dec    %ecx
	jump_1d24c:
		mov    (%ecx),%al
		cmp    $0x39,%al
		je     jump_1d25a
		mov    %al,%ah
		inc    %ah
		mov    %ah,(%ecx)
		jmp    jump_1d25f
	jump_1d25a:
		movb   $0x30,(%ecx)
		jmp    jump_1d20f
	jump_1d25f:
		add    $0x4,%esp
		pop    %edi
		pop    %esi
		pop    %ecx
		ret


/*----------------------------------------------------------------*/
func_float_format_:	/* 0x1d266 */
/*----------------------------------------------------------------*/
		call   *data_210b0
		ret


/*----------------------------------------------------------------*/
func_formstring_:	/* 0x1d26d */
/*----------------------------------------------------------------*/
		push   %esi
		push   %edi
		push   %es
		push   %ebp
		sub    $0x8,%esp
		mov    %eax,%edi
		mov    %ebx,%esi
		mov    %ecx,(%esp)
		mov    $0x1,%ebx
		mov    %ds,%eax
		mov    %edi,%ecx
		mov    %ebx,0x4(%esp)
		mov    %eax,%es
		mov    0x15(%esi),%al
		movl   $0x0,0xc(%esi)
		cmp    $0x69,%al
		jb     jump_1d2ae
		jbe    jump_1d2ee
		cmp    $0x75,%al
		jb     jump_1d2aa
		jbe    jump_1d2ba
		cmp    $0x78,%al
	jump_1d2a6:
		je     jump_1d2ba
		jmp    jump_1d2f8
	jump_1d2aa:
		cmp    $0x6f,%al
		jmp    jump_1d2a6
	jump_1d2ae:
		cmp    $0x58,%al
		jb     jump_1d2f8
		jbe    jump_1d2ba
		cmp    $0x64,%al
		je     jump_1d2ee
		jmp    jump_1d2f8
	jump_1d2ba:
		mov    0x14(%esi),%ah
		test   $0x20,%ah
		je     jump_1d2ce
		mov    (%edx),%ebx
		add    $0x4,%ebx
		mov    %ebx,(%edx)
		mov    -0x4(%ebx),%ebp
		jmp    jump_1d2ea
	jump_1d2ce:
		test   $0x10,%ah
		je     jump_1d2e0
		mov    (%edx),%eax
		add    $0x4,%eax
		mov    %eax,(%edx)
		movzwl -0x4(%eax),%ebp
		jmp    jump_1d2ea
	jump_1d2e0:
		mov    (%edx),%ebp
		add    $0x4,%ebp
		mov    %ebp,(%edx)
		mov    -0x4(%ebp),%ebp
	jump_1d2ea:
		andb   $0xf9,0x14(%esi)
	jump_1d2ee:
		cmpl   $0xffffffff,0x8(%esi)
		je     jump_1d2f8
		movb   $0x20,0x16(%esi)
	jump_1d2f8:
		mov    0x15(%esi),%al
		mov    $0xa,%ebx
		cmp    $0x65,%al
		jb     jump_1d35d
		jbe    jump_1d3ce
		cmp    $0x6f,%al
		jb     jump_1d346
		jbe    jump_1d3e2
		cmp    $0x73,%al
		jb     jump_1d339
		jbe    jump_1d45d
		cmp    $0x75,%al
		jb     jump_1d5f1
		jbe    jump_1d526
		cmp    $0x78,%al
		je     jump_1d509
		jmp    jump_1d5f1
	jump_1d339:
		cmp    $0x70,%al
		je     jump_1d545
		jmp    jump_1d5f1
	jump_1d346:
		cmp    $0x67,%al
		jb     jump_1d3a4
		jbe    jump_1d3ce
		cmp    $0x69,%al
		je     jump_1d41d
		jmp    jump_1d5f1
	jump_1d35d:
		cmp    $0x50,%al
		jb     jump_1d391
		jbe    jump_1d545
		cmp    $0x58,%al
		jb     jump_1d384
		jbe    jump_1d509
		cmp    $0x63,%al
		jb     jump_1d5f1
		jbe    jump_1d5c4
		jmp    jump_1d41d
	jump_1d384:
		cmp    $0x53,%al
		je     jump_1d45d
		jmp    jump_1d5f1
	jump_1d391:
		cmp    $0x46,%al
		jb     jump_1d3a0
		jbe    jump_1d3a4
		cmp    $0x47,%al
	jump_1d399:
		je     jump_1d3ce
		jmp    jump_1d5f1
	jump_1d3a0:
		cmp    $0x45,%al
		jmp    jump_1d399
	jump_1d3a4:
		testb  $0x10,0x14(%esi)
		je     jump_1d3ce
		mov    (%edx),%ebx
		add    $0x4,%ebx
		mov    %ebx,(%edx)
		mov    %edi,%eax
		mov    -0x4(%ebx),%edx
		mov    %esi,%ebx
		call   func_FixedPoint_Format_
		mov    $0xffffffff,%ebx
		mov    %ds,%eax
		mov    %ds,%edx
		mov    %eax,%es
		mov    %edi,%eax
		mov    %edi,%ecx
		jmp    jump_1d413
	jump_1d3ce:
		mov    %edi,%eax
		mov    %esi,%ebx
		call   func_float_format_
		mov    $0xffffffff,%ebx
		mov    %edx,%es
		mov    %eax,%ecx
		jmp    jump_1d413
	jump_1d3e2:
		mov    0x14(%esi),%al
		mov    $0x8,%ebx
		test   $0x1,%al
		je     jump_1d3f2
		movb   $0x30,(%edi)
		inc    %edi
	jump_1d3f2:
		mov    %ebp,%eax
		mov    %edi,%edx
		call   func_ltoa_
	jump_1d3fb:
		cmpl   $0x0,0x8(%esi)
		jne    jump_1d40a
		cmpb   $0x30,(%edi)
		jne    jump_1d40a
		movb   $0x0,%es:(%ecx)
	jump_1d40a:
		mov    $0xffffffff,%ebx
		mov    %es,%edx
		mov    %ecx,%eax
	jump_1d413:
		call   func_far_strlen_
		jmp    jump_1d61b
	jump_1d41d:
		mov    0x14(%esi),%al
		test   $0x20,%al
		je     jump_1d437
		mov    (%edx),%ebp
		add    $0x4,%ebp
		mov    %ebp,(%edx)
		mov    %edi,%edx
		mov    -0x4(%ebp),%eax
	jump_1d430:
		call   func_ltoa_
		jmp    jump_1d3fb
	jump_1d437:
		test   $0x10,%al
		je     jump_1d44a
		mov    (%edx),%eax
		add    $0x4,%eax
		mov    %eax,(%edx)
		mov    %edi,%edx
		movswl -0x4(%eax),%eax
		jmp    jump_1d430
	jump_1d44a:
		mov    (%edx),%ebp
		add    $0x4,%ebp
		mov    %ebp,(%edx)
		mov    %edi,%edx
		mov    -0x4(%ebp),%eax
		call   func_itoa_
		jmp    jump_1d3fb
	jump_1d45d:
		mov    0x14(%esi),%ah
		test   $0x80,%ah
		je     jump_1d487
		mov    (%edx),%ecx
		add    $0x8,%ecx
		mov    %ecx,(%edx)
		mov    -0x4(%ecx),%dx
		mov    -0x8(%ecx),%ecx
		test   %ecx,%ecx
		jne    jump_1d47c
		test   %dx,%dx
		je     jump_1d480
	jump_1d47c:
		mov    %edx,%es
		jmp    jump_1d4b3
	jump_1d480:
		mov    %ds,%eax
		mov    (%esp),%ecx
		jmp    jump_1d4b1
	jump_1d487:
		test   $0x40,%ah
		je     jump_1d49e
		mov    (%edx),%ebx
		add    $0x4,%ebx
		mov    %ebx,(%edx)
		mov    -0x4(%ebx),%ecx
		test   %ecx,%ecx
		je     jump_1d480
	jump_1d49a:
		mov    %ds,%eax
		jmp    jump_1d4b1
	jump_1d49e:
		mov    (%edx),%eax
		add    $0x4,%eax
		mov    %eax,(%edx)
		mov    -0x4(%eax),%ecx
		test   %ecx,%ecx
		jne    jump_1d49a
		mov    %ds,%eax
		mov    (%esp),%ecx
	jump_1d4b1:
		mov    %eax,%es
	jump_1d4b3:
		mov    0x14(%esi),%bh
		mov    0x15(%esi),%al
		xor    %edi,%edi
		and    $0xf9,%bh
		mov    %edi,0x4(%esp)
		mov    %bh,0x14(%esi)
		cmp    $0x53,%al
		jne    jump_1d4e7
		test   $0x20,%bh
		je     jump_1d4dc
		xor    %eax,%eax
		mov    %es:(%ecx),%ax
		add    $0x2,%ecx
		jmp    jump_1d61b
	jump_1d4dc:
		xor    %eax,%eax
		mov    %es:(%ecx),%al
		inc    %ecx
		jmp    jump_1d61b
	jump_1d4e7:
		test   $0x20,%bh
		je     jump_1d4fd
		mov    %es,%edx
		mov    %ecx,%eax
		mov    0x8(%esi),%ebx
		call   func_far_other_strlen_
		jmp    jump_1d61b
	jump_1d4fd:
		mov    %es,%edx
		mov    %ecx,%eax
		mov    0x8(%esi),%ebx
		jmp    jump_1d413
	jump_1d509:
		testb  $0x1,0x14(%esi)
		je     jump_1d521
		test   %ebp,%ebp
		je     jump_1d521
		movb   $0x30,0x17(%esi)
		mov    0x15(%esi),%al
		movb   $0x0,0x19(%esi)
		mov    %al,0x18(%esi)
	jump_1d521:
		mov    $0x10,%ebx
	jump_1d526:
		mov    %ebp,%eax
		mov    %edi,%edx
		call   func_ultoa_
		cmpb   $0x58,0x15(%esi)
		jne    jump_1d3fb
		mov    %edi,%eax
		call   func_zupstr_
		jmp    jump_1d3fb
	jump_1d545:
		cmpl   $0x0,0x4(%esi)
		jne    jump_1d561
		testb  $0x80,0x14(%esi)
		je     jump_1d55a
		movl   $0xd,0x4(%esi)
		jmp    jump_1d561
	jump_1d55a:
		movl   $0x8,0x4(%esi)
	jump_1d561:
		andb   $0xf9,0x14(%esi)
		mov    (%edx),%eax
		add    $0x4,%eax
		mov    %eax,(%edx)
		mov    0x14(%esi),%bl
		mov    -0x4(%eax),%ebp
		test   $0x80,%bl
		je     jump_1d5a0
		add    $0x4,%eax
		mov    %eax,(%edx)
		mov    $0x4,%ebx
		mov    -0x4(%eax),%eax
		mov    %edi,%edx
		and    $0xffff,%eax
		call   func_fmt4hex_
		mov    $0x8,%ebx
		lea    0x5(%edi),%edx
		mov    %ebp,%eax
		movb   $0x3a,0x4(%edi)
		jmp    jump_1d5a9
	jump_1d5a0:
		mov    $0x8,%ebx
		mov    %ebp,%eax
		mov    %edi,%edx
	jump_1d5a9:
		call   func_fmt4hex_
		cmpb   $0x50,0x15(%esi)
		jne    jump_1d40a
		mov    %edi,%eax
		call   func_zupstr_
		jmp    jump_1d40a
	jump_1d5c4:
		mov    (%edx),%ebx
		add    $0x4,%ebx
		mov    %ebx,(%edx)
		mov    -0x4(%ebx),%al
		movb   $0x0,0x1(%edi)
		mov    %al,(%edi)
		movl   $0x1,0x8(%esi)
		mov    $0x1,%eax
		mov    0x14(%esi),%dh
		xor    %edi,%edi
		and    $0xf9,%dh
		mov    %edi,0x4(%esp)
		mov    %dh,0x14(%esi)
		jmp    jump_1d61b
	jump_1d5f1:
		movl   $0x0,0x4(%esi)
		mov    0x15(%esi),%al
		movb   $0x0,0x1(%edi)
		mov    %al,(%edi)
		movl   $0x1,0x8(%esi)
		mov    0x14(%esi),%al
		xor    %edi,%edi
		and    $0xf9,%al
		mov    %edi,0x4(%esp)
		mov    %al,0x14(%esi)
		mov    $0x1,%eax
	jump_1d61b:
		cmpl   $0x0,0x4(%esp)
		je     jump_1d661
		mov    %es:(%ecx),%dl
		cmp    $0x2d,%dl
		jne    jump_1d635
		inc    %ecx
		movb   $0x0,0x18(%esi)
		dec    %eax
		mov    %dl,0x17(%esi)
		jmp    jump_1d650
	jump_1d635:
		mov    0x14(%esi),%dh
		test   $0x2,%dh
		je     jump_1d643
		movb   $0x20,0x17(%esi)
		jmp    jump_1d64c
	jump_1d643:
		test   $0x4,%dh
		je     jump_1d650
		movb   $0x2b,0x17(%esi)
	jump_1d64c:
		movb   $0x0,0x18(%esi)
	jump_1d650:
		mov    0x8(%esi),%edx
		cmp    %edx,%eax
		jle    jump_1d65c
		mov    %eax,0x8(%esi)
		jmp    jump_1d661
	jump_1d65c:
		sub    %eax,%edx
		mov    %edx,0xc(%esi)
	jump_1d661:
		cmpb   $0x2a,0x16(%esi)
		jne    jump_1d674
		mov    0x14(%esi),%dl
		movb   $0x0,0x17(%esi)
		and    $0xf9,%dl
		mov    %dl,0x14(%esi)
	jump_1d674:
		mov    0x8(%esi),%ebx
		cmp    $0xffffffff,%ebx
		je     jump_1d680
		cmp    %ebx,%eax
		jge    jump_1d689
	jump_1d680:
		cmpb   $0x63,0x15(%esi)
		je     jump_1d689
		mov    %eax,0x8(%esi)
	jump_1d689:
		mov    $0xffffffff,%ebx
		lea    0x17(%esi),%eax
		mov    %ds,%edx
		call   func_far_strlen_
		mov    0x8(%esi),%ebp
		mov    0xc(%esi),%edx
		add    %ebp,%eax
		mov    0x4(%esi),%ebx
		add    %edx,%eax
		mov    %es,%edx
		sub    %eax,%ebx
		mov    %ecx,%eax
		mov    %ebx,0x4(%esi)
		add    $0x8,%esp
		pop    %ebp
		pop    %es
		pop    %edi
		pop    %esi
		ret


/*----------------------------------------------------------------*/
func_zupstr_:	/* 0x1d6b6 */
/*----------------------------------------------------------------*/
		push   %edx
		mov    %eax,%edx
	jump_1d6b9:
		cmpb   $0x0,(%edx)
		je     jump_1d6cc
		xor    %eax,%eax
		mov    (%edx),%al
		call   func_toupper_
		mov    %al,(%edx)
		inc    %edx
		jmp    jump_1d6b9
	jump_1d6cc:
		pop    %edx
		ret


/*----------------------------------------------------------------*/
func_fputs_:	/* 0x1d6ce */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %esi
		push   %edi
		push   %ebp
		mov    %eax,%ecx
		mov    %edx,%ebx
		cmpl   $0x0,0x8(%edx)
		jne    jump_1d6e4
		mov    %ebx,%eax
		call   func___ioalloc_
	jump_1d6e4:
		mov    0xd(%ebx),%ah
		xor    %edi,%edi
		test   $0x4,%ah
		je     jump_1d703
		mov    %ah,%dl
		and    $0xf9,%dl
		mov    %dl,%dh
		mov    %dl,0xd(%ebx)
		or     $0x2,%dh
		mov    $0x1,%edi
		mov    %dh,0xd(%ebx)
	jump_1d703:
		mov    %ecx,%ebp
		xor    %esi,%esi
	jump_1d707:
		xor    %eax,%eax
		mov    (%ecx),%al
		test   %eax,%eax
		je     jump_1d71e
		mov    %ebx,%edx
		inc    %ecx
		call   func_fputc_
		cmp    $0xffffffff,%eax
		jne    jump_1d707
		mov    %eax,%esi
	jump_1d71e:
		test   %edi,%edi
		je     jump_1d73f
		mov    0xd(%ebx),%al
		and    $0xf9,%al
		mov    %al,%ah
		mov    %al,0xd(%ebx)
		or     $0x4,%ah
		mov    %ah,0xd(%ebx)
		test   %esi,%esi
		jne    jump_1d73f
		mov    %ebx,%eax
		call   func___flush_
		mov    %eax,%esi
	jump_1d73f:
		test   %esi,%esi
		jne    jump_1d747
		mov    %ecx,%esi
		sub    %ebp,%esi
	jump_1d747:
		mov    %esi,%eax
		pop    %ebp
		pop    %edi
		pop    %esi
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_fputc_:	/* 0x1d74f */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %esi
		push   %edi
		push   %ebp
		mov    %eax,%ebx
		testb  $0x2,0xc(%edx)
		jne    jump_1d774
		mov    $0x4,%eax
		call   func___set_errno_
		orb    $0x20,0xc(%edx)
	jump_1d76a:
		mov    $0xffffffff,%eax
		jmp    jump_1d7ed
	jump_1d774:
		cmpl   $0x0,0x8(%edx)
		jne    jump_1d781
		mov    %edx,%eax
		call   func___ioalloc_
	jump_1d781:
		mov    $0x400,%ecx
		cmp    $0xa,%ebx
		jne    jump_1d7be
		mov    0xc(%edx),%al
		mov    $0x600,%ecx
		test   $0x40,%al
		jne    jump_1d7be
		orb    $0x10,0xd(%edx)
		mov    (%edx),%eax
		movb   $0xd,(%eax)
		mov    (%edx),%esi
		inc    %esi
		mov    0x4(%edx),%edi
		mov    %esi,(%edx)
		inc    %edi
		mov    0x14(%edx),%ebp
		mov    %edi,0x4(%edx)
		cmp    %ebp,%edi
		jne    jump_1d7be
		mov    %edx,%eax
		call   func___flush_
		test   %eax,%eax
		jne    jump_1d76a
	jump_1d7be:
		orb    $0x10,0xd(%edx)
		mov    (%edx),%eax
		mov    %bl,(%eax)
		mov    (%edx),%eax
		inc    %eax
		mov    0x4(%edx),%esi
		mov    %eax,(%edx)
		inc    %esi
		mov    0xc(%edx),%edi
		mov    %esi,0x4(%edx)
		test   %edi,%ecx
		jne    jump_1d7de
		cmp    0x14(%edx),%esi
		jne    jump_1d7e9
	jump_1d7de:
		mov    %edx,%eax
		call   func___flush_
		test   %eax,%eax
		jne    jump_1d76a
	jump_1d7e9:
		xor    %eax,%eax
		mov    %bl,%al
	jump_1d7ed:
		pop    %ebp
		pop    %edi
		pop    %esi
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_file_putc_:	/* 0x1d7f3 */
/*----------------------------------------------------------------*/
		push   %ebx
		mov    %eax,%ebx
		mov    %edx,%eax
		mov    (%ebx),%edx
		call   func_fputc_
		incl   0x10(%ebx)
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func___fprtf_:	/* 0x1d804 */
/*----------------------------------------------------------------*/
		push   %ecx
		push   %esi
		push   %edi
		push   %ebp
		mov    %eax,%esi
		mov    0xc(%eax),%ebp
		mov    0xc(%eax),%ah
		mov    0x8(%esi),%ecx
		and    $0xcf,%ah
		and    $0x30,%ebp
		mov    %ah,0xc(%esi)
		test   %ecx,%ecx
		jne    jump_1d827
		mov    %esi,%eax
		call   func___ioalloc_
	jump_1d827:
		mov    0xd(%esi),%cl
		xor    %edi,%edi
		test   $0x4,%cl
		je     jump_1d845
		mov    %cl,%ch
		and    $0xfa,%ch
		mov    %ch,%al
		mov    %ch,0xd(%esi)
		or     $0x1,%al
		mov    $0x1,%edi
		mov    %al,0xd(%esi)
	jump_1d845:
		mov    $func_file_putc_,%ecx
		mov    %esi,%eax
		call   func___prtf_
		mov    %eax,%edx
		test   %edi,%edi
		je     jump_1d86f
		mov    0xd(%esi),%ah
		and    $0xfa,%ah
		mov    %ah,%bl
		mov    %ah,0xd(%esi)
		or     $0x4,%bl
		mov    %esi,%eax
		mov    %bl,0xd(%esi)
		call   func___flush_
	jump_1d86f:
		testb  $0x20,0xc(%esi)
		je     jump_1d87a
		mov    $0xffffffff,%edx
	jump_1d87a:
		mov    0xc(%esi),%edi
		or     %ebp,%edi
		mov    %edx,%eax
		mov    %edi,0xc(%esi)
		pop    %ebp
		pop    %edi
		pop    %esi
		pop    %ecx
		ret


/*----------------------------------------------------------------*/
func_1d889:
/*----------------------------------------------------------------*/
		mov    %esp,%eax
		sub    data_21078,%eax
		ret


/*----------------------------------------------------------------*/
func___doserror_:	/* 0x1d892 */
/*----------------------------------------------------------------*/
		jae    jump_1d8a2
		and    $0xffff,%eax
		push   %eax
		call   func___set_errno_dos_
		pop    %eax
		jmp    jump_1d8a4
	jump_1d8a2:
		sub    %eax,%eax
	jump_1d8a4:
		ret


/*----------------------------------------------------------------*/
func_tolower_:	/* 0x1d8a5 */
/*----------------------------------------------------------------*/
		cmp    $0x41,%eax
		jl     jump_1d8b2
		cmp    $0x5a,%eax
		jg     jump_1d8b2
		add    $0x20,%eax
	jump_1d8b2:
		ret


/*----------------------------------------------------------------*/
func___allocfp_:	/* 0x1d8b3 */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %edx
		push   %esi
		push   %edi
		mov    data_542cc,%esi
		test   %esi,%esi
		je     jump_1d8db
		mov    0x4(%esi),%ecx
		mov    0xc(%ecx),%edi
		mov    (%esi),%eax
		and    $0x4003,%edi
		mov    %eax,data_542cc
		or     $0x3,%di
		jmp    jump_1d924
	jump_1d8db:
		mov    $data_20e50,%ecx
		jmp    jump_1d902
	jump_1d8e2:
		testb  $0x3,0xc(%ecx)
		jne    jump_1d8ff
		mov    $0x8,%eax
		call   w_dos_malloc
		mov    %eax,%esi
		test   %eax,%eax
		je     jump_1d949
		mov    $0x3,%edi
		jmp    jump_1d924
	jump_1d8ff:
		add    $0x1a,%ecx
	jump_1d902:
		cmp    $data_21058,%ecx
		jb     jump_1d8e2
		mov    $0x22,%eax
		mov    $0x4003,%edi
		call   w_dos_malloc
		mov    %eax,%ecx
		mov    %eax,%esi
		test   %eax,%eax
		je     jump_1d949
		lea    0x8(%eax),%ecx
	jump_1d924:
		mov    $0x1a,%ebx
		mov    %ecx,%eax
		xor    %edx,%edx
		call   w_dos_memset
		mov    %edi,0xc(%ecx)
		mov    data_542d4,%eax
		mov    %ecx,0x4(%esi)
		mov    %esi,data_542d4
		mov    %eax,(%esi)
		mov    %ecx,%eax
		jmp    jump_1d955
	jump_1d949:
		mov    $0x5,%eax
		call   func___set_errno_
		xor    %eax,%eax
	jump_1d955:
		pop    %edi
		pop    %esi
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func___freefp_:	/* 0x1d95b */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %edx
		mov    %eax,%ebx
		mov    $data_542d4,%edx
	jump_1d965:
		mov    (%edx),%eax
		test   %eax,%eax
		je     jump_1d990
		mov    0x4(%eax),%ecx
		cmp    %ecx,%ebx
		je     jump_1d976
		mov    %eax,%edx
		jmp    jump_1d965
	jump_1d976:
		mov    0xc(%ecx),%cl
		or     $0x3,%cl
		mov    %cl,0xc(%ebx)
		mov    (%eax),%ebx
		mov    %ebx,(%edx)
		mov    data_542cc,%edx
		mov    %eax,data_542cc
		mov    %edx,(%eax)
	jump_1d990:
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func___purgefp_:	/* 0x1d994 */
/*----------------------------------------------------------------*/
		push   %edx
	jump_1d995:
		mov    data_542cc,%edx
		test   %edx,%edx
		je     jump_1d9b0
		mov    %edx,%eax
		mov    (%edx),%edx
		call   w_dos_free
		mov    %edx,data_542cc
		jmp    jump_1d995
	jump_1d9b0:
		pop    %edx
		ret


/*----------------------------------------------------------------*/
func___chktty_:	/* 0x1d9b2 */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %edx
		mov    %eax,%edx
		testb  $0x20,0xd(%eax)
		jne    jump_1d9df
		mov    0x10(%edx),%eax
		call   func_isatty_
		test   %eax,%eax
		je     jump_1d9df
		mov    0xd(%edx),%bl
		or     $0x20,%bl
		mov    %bl,0xd(%edx)
		test   $0x7,%bl
		jne    jump_1d9df
		mov    %bl,%cl
		or     $0x2,%cl
		mov    %cl,0xd(%edx)
	jump_1d9df:
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_1d9e4:
/*----------------------------------------------------------------*/
		mov    data_21074,%eax
		ret


/*----------------------------------------------------------------*/
func___flush_:	/* 0x1d9ea */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %edx
		push   %esi
		mov    %eax,%ecx
		mov    0xd(%eax),%ah
		xor    %esi,%esi
		test   $0x10,%ah
		je     jump_1da57
		mov    0xd(%ecx),%bh
		and    $0xef,%bh
		mov    0xc(%ecx),%al
		mov    %bh,0xd(%ecx)
		test   $0x2,%al
		je     jump_1da96
		cmpl   $0x0,0x8(%ecx)
		je     jump_1da96
		mov    0x4(%ecx),%ebx
		mov    0x8(%ecx),%edx
		mov    0x10(%ecx),%eax
		call   func___qwrite_
		cmp    $0xffffffff,%eax
		jne    jump_1da38
		mov    0xc(%ecx),%dl
		or     $0x20,%dl
		mov    %eax,%esi
		mov    %dl,0xc(%ecx)
		jmp    jump_1da96
	jump_1da38:
		cmp    0x4(%ecx),%eax
		je     jump_1da96
		mov    $0xc,%eax
		call   func___set_errno_
		mov    0xc(%ecx),%ah
		or     $0x20,%ah
		mov    $0xffffffff,%esi
		mov    %ah,0xc(%ecx)
		jmp    jump_1da96
	jump_1da57:
		cmpl   $0x0,0x8(%ecx)
		je     jump_1da96
		mov    0xc(%ecx),%dl
		and    $0xef,%dl
		mov    0xd(%ecx),%dh
		mov    %dl,0xc(%ecx)
		test   $0x20,%dh
		jne    jump_1da96
		mov    0x4(%ecx),%eax
		test   %eax,%eax
		je     jump_1da86
		mov    %eax,%edx
		mov    $0x1,%ebx
		neg    %edx
		mov    0x10(%ecx),%eax
		call   w_dos_lseek
	jump_1da86:
		cmp    $0xffffffff,%eax
		jne    jump_1da96
		mov    0xc(%ecx),%bl
		or     $0x20,%bl
		mov    %eax,%esi
		mov    %bl,0xc(%ecx)
	jump_1da96:
		mov    0x8(%ecx),%eax
		movl   $0x0,0x4(%ecx)
		mov    %eax,(%ecx)
		mov    %esi,%eax
		pop    %esi
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_j_unlink_:	/* 0x1daa9 */
/*----------------------------------------------------------------*/
		jmp    w_dos_unlink


/*----------------------------------------------------------------*/
func___CMain:	/* 0x1daae */
/*----------------------------------------------------------------*/
		push   %edx
		push   %ebp
		mov    %esp,%ebp
		mov    data_21080,%edx
		add    $0x3,%edx
		and    $0xfc,%dl
		call   func_1d889
		cmp    %eax,%edx
		jae    jump_1dacf
		mov    %edx,%eax
		sub    %eax,%esp
		mov    %esp,%eax
		jmp    jump_1dad1
	jump_1dacf:
		xor    %eax,%eax
	jump_1dad1:
		mov    data_21080,%edx
		add    %edx,%eax
		mov    %eax,data_21084
		call   func_1e4d8
		mov    data_542e8,%edx
		mov    data_542e4,%eax
		call   ttl
		call   w_dos_exit
		mov    %ebp,%esp
		pop    %ebp
		pop    %edx
		ret


/*----------------------------------------------------------------*/
func___InitRtns:	/* 0x1dafe */
/*----------------------------------------------------------------*/
		push   %esi
		push   %edi
		push   %ebx
		push   %edx
		push   %es
		mov    %eax,%edx
	jump_1db05:
		ds
		mov    $data_210ba,%esi
		ds
		mov    $data_210cc,%edi
		mov    %edi,%ebx
		mov    %dl,%al
	jump_1db15:
		cmp    %edi,%esi
		jae    jump_1db2d
		cmpb   $0x2,(%esi)
		je     jump_1db28
		cmp    %al,0x1(%esi)
		ja     jump_1db28
		mov    %esi,%ebx
		mov    0x1(%esi),%al
	jump_1db28:
		add    $0x6,%esi
		jmp    jump_1db15
	jump_1db2d:
		cmp    %edi,%ebx
		je     jump_1db43
		mov    0x2(%ebx),%eax
		or     %eax,%eax
		je     jump_1db3e
		push   %ds
		pop    %es
		push   %edx
		call   *%eax
		pop    %edx
	jump_1db3e:
		movb   $0x2,(%ebx)
		jmp    jump_1db05
	jump_1db43:
		pop    %es
		pop    %edx
		pop    %ebx
		pop    %edi
		pop    %esi
		ret


/*----------------------------------------------------------------*/
func___FiniRtns:	/* 0x1db49 */
/*----------------------------------------------------------------*/
		push   %esi
		push   %edi
		push   %ebx
		push   %es
		mov    %dl,%dh
		mov    %al,%dl
	jump_1db51:
		ds
		mov    $data_210cc,%esi
		ds
		mov    $data_210d2,%edi
		mov    %edi,%ebx
		mov    %dl,%al
	jump_1db61:
		cmp    %edi,%esi
		jae    jump_1db79
		cmpb   $0x2,(%esi)
		je     jump_1db74
		cmp    0x1(%esi),%al
		ja     jump_1db74
		mov    %esi,%ebx
		mov    0x1(%esi),%al
	jump_1db74:
		add    $0x6,%esi
		jmp    jump_1db61
	jump_1db79:
		cmp    %edi,%ebx
		je     jump_1db93
		cmp    %dh,%al
		ja     jump_1db8e
		mov    0x2(%ebx),%eax
		or     %eax,%eax
		je     jump_1db8e
		push   %ds
		pop    %es
		push   %edx
		call   *%eax
		pop    %edx
	jump_1db8e:
		movb   $0x2,(%ebx)
		jmp    jump_1db51
	jump_1db93:
		pop    %es
		pop    %ebx
		pop    %edi
		pop    %esi
		ret


/*----------------------------------------------------------------*/
func___fatal_runtime_error_:	/* 0x1db9d */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		mov    %eax,%ebx
		mov    %edx,%ecx
		mov    %ds,%edx
		call   func___EnterWVIDEO_
		test   %eax,%eax
		jne    jump_1dbb7
		mov    %ebx,%eax
		mov    %ecx,%edx
		call   func___do_exit_with_msg__
	jump_1dbb7:
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func___int386x_:	/* 0x1dbba */
/*----------------------------------------------------------------*/
		push   %ebp
		push   %es
		push   %ebx
		push   %ds
		push   %edx
		call   func_1dbf2
		push   %ds
		push   %edi
		mov    %esp,%ebp
		mov    0x8(%ebp),%edi
		mov    0xc(%ebp),%ds
		mov    %eax,(%edi)
		mov    %ebx,0x4(%edi)
		mov    %ecx,0x8(%edi)
		mov    %edx,0xc(%edi)
		mov    %esi,0x10(%edi)
		popl   0x14(%edi)
		sbb    %eax,%eax
		mov    %eax,0x18(%edi)
		pop    %eax
		pop    %ebx
		pop    %ebx
		pop    %ebx
		mov    %ax,0x6(%ebx)
		data16 		mov    %es,(%ebx)
		pop    %es
		pop    %ebp
		ret


/*----------------------------------------------------------------*/
func_1dbf2:
/*----------------------------------------------------------------*/
		lea    (%esi,%esi,2),%esi
#if 0
		lea    data_1dc98(%esi),%eax
#else
		lea    data_1dc98(%esi),%eax
#endif
		push   %eax
		mov    (%ebx),%es
		mov    0x6(%ebx),%bp
		mov    (%edi),%eax
		mov    0x4(%edi),%ebx
		mov    0x8(%edi),%ecx
		mov    0xc(%edi),%edx
		mov    0x10(%edi),%esi
		mov    0x14(%edi),%edi
		mov    %ebp,%ds
		ret
.data
data_1dc98:
		.ascii  "\xcd\x00\xc3\xcd\x01\xc3\xcd\x02"
		.ascii  "\xc3\xcc\x90\xc3\xcd\x04\xc3\xcd"
		.ascii  "\x05\xc3\xcd\x06\xc3\xcd\x07\xc3"
		.ascii  "\xcd\x08\xc3\xcd\x09\xc3\xcd\x0a"
		.ascii  "\xc3\xcd\x0b\xc3\xcd\x0c\xc3\xcd"
		.ascii  "\x0d\xc3\xcd\x0e\xc3\xcd\x0f\xc3"
		.ascii  "\xcd\x10\xc3\xcd\x11\xc3\xcd\x12"
		.ascii  "\xc3\xcd\x13\xc3\xcd\x14\xc3\xcd"
		.ascii  "\x15\xc3\xcd\x16\xc3\xcd\x17\xc3"
		.ascii  "\xcd\x18\xc3\xcd\x19\xc3\xcd\x1a"
		.ascii  "\xc3\xcd\x1b\xc3\xcd\x1c\xc3\xcd"
		.ascii  "\x1d\xc3\xcd\x1e\xc3\xcd\x1f\xc3"
		.ascii  "\xcd\x20\xc3\xcd\x21\xc3\xcd\x22"
		.ascii  "\xc3\xcd\x23\xc3\xcd\x24\xc3\xcd"
		.ascii  "\x25\xc3\xcd\x26\xc3\xcd\x27\xc3"
		.ascii  "\xcd\x28\xc3\xcd\x29\xc3\xcd\x2a"
		.ascii  "\xc3\xcd\x2b\xc3\xcd\x2c\xc3\xcd"
		.ascii  "\x2d\xc3\xcd\x2e\xc3\xcd\x2f\xc3"
		.ascii  "\xcd\x30\xc3\xcd\x31\xc3\xcd\x32"
		.ascii  "\xc3\xcd\x33\xc3\xcd\x34\xc3\xcd"
		.ascii  "\x35\xc3\xcd\x36\xc3\xcd\x37\xc3"
		.ascii  "\xcd\x38\xc3\xcd\x39\xc3\xcd\x3a"
		.ascii  "\xc3\xcd\x3b\xc3\xcd\x3c\xc3\xcd"
		.ascii  "\x3d\xc3\xcd\x3e\xc3\xcd\x3f\xc3"
		.ascii  "\xcd\x40\xc3\xcd\x41\xc3\xcd\x42"
		.ascii  "\xc3\xcd\x43\xc3\xcd\x44\xc3\xcd"
		.ascii  "\x45\xc3\xcd\x46\xc3\xcd\x47\xc3"
		.ascii  "\xcd\x48\xc3\xcd\x49\xc3\xcd\x4a"
		.ascii  "\xc3\xcd\x4b\xc3\xcd\x4c\xc3\xcd"
		.ascii  "\x4d\xc3\xcd\x4e\xc3\xcd\x4f\xc3"
		.ascii  "\xcd\x50\xc3\xcd\x51\xc3\xcd\x52"
		.ascii  "\xc3\xcd\x53\xc3\xcd\x54\xc3\xcd"
		.ascii  "\x55\xc3\xcd\x56\xc3\xcd\x57\xc3"
		.ascii  "\xcd\x58\xc3\xcd\x59\xc3\xcd\x5a"
		.ascii  "\xc3\xcd\x5b\xc3\xcd\x5c\xc3\xcd"
		.ascii  "\x5d\xc3\xcd\x5e\xc3\xcd\x5f\xc3"
		.ascii  "\xcd\x60\xc3\xcd\x61\xc3\xcd\x62"
		.ascii  "\xc3\xcd\x63\xc3\xcd\x64\xc3\xcd"
		.ascii  "\x65\xc3\xcd\x66\xc3\xcd\x67\xc3"
		.ascii  "\xcd\x68\xc3\xcd\x69\xc3\xcd\x6a"
		.ascii  "\xc3\xcd\x6b\xc3\xcd\x6c\xc3\xcd"
		.ascii  "\x6d\xc3\xcd\x6e\xc3\xcd\x6f\xc3"
		.ascii  "\xcd\x70\xc3\xcd\x71\xc3\xcd\x72"
		.ascii  "\xc3\xcd\x73\xc3\xcd\x74\xc3\xcd"
		.ascii  "\x75\xc3\xcd\x76\xc3\xcd\x77\xc3"
		.ascii  "\xcd\x78\xc3\xcd\x79\xc3\xcd\x7a"
		.ascii  "\xc3\xcd\x7b\xc3\xcd\x7c\xc3\xcd"
		.ascii  "\x7d\xc3\xcd\x7e\xc3\xcd\x7f\xc3"
		.ascii  "\xcd\x80\xc3\xcd\x81\xc3\xcd\x82"
		.ascii  "\xc3\xcd\x83\xc3\xcd\x84\xc3\xcd"
		.ascii  "\x85\xc3\xcd\x86\xc3\xcd\x87\xc3"
		.ascii  "\xcd\x88\xc3\xcd\x89\xc3\xcd\x8a"
		.ascii  "\xc3\xcd\x8b\xc3\xcd\x8c\xc3\xcd"
		.ascii  "\x8d\xc3\xcd\x8e\xc3\xcd\x8f\xc3"
		.ascii  "\xcd\x90\xc3\xcd\x91\xc3\xcd\x92"
		.ascii  "\xc3\xcd\x93\xc3\xcd\x94\xc3\xcd"
		.ascii  "\x95\xc3\xcd\x96\xc3\xcd\x97\xc3"
		.ascii  "\xcd\x98\xc3\xcd\x99\xc3\xcd\x9a"
		.ascii  "\xc3\xcd\x9b\xc3\xcd\x9c\xc3\xcd"
		.ascii  "\x9d\xc3\xcd\x9e\xc3\xcd\x9f\xc3"
		.ascii  "\xcd\xa0\xc3\xcd\xa1\xc3\xcd\xa2"
		.ascii  "\xc3\xcd\xa3\xc3\xcd\xa4\xc3\xcd"
		.ascii  "\xa5\xc3\xcd\xa6\xc3\xcd\xa7\xc3"
		.ascii  "\xcd\xa8\xc3\xcd\xa9\xc3\xcd\xaa"
		.ascii  "\xc3\xcd\xab\xc3\xcd\xac\xc3\xcd"
		.ascii  "\xad\xc3\xcd\xae\xc3\xcd\xaf\xc3"
		.ascii  "\xcd\xb0\xc3\xcd\xb1\xc3\xcd\xb2"
		.ascii  "\xc3\xcd\xb3\xc3\xcd\xb4\xc3\xcd"
		.ascii  "\xb5\xc3\xcd\xb6\xc3\xcd\xb7\xc3"
		.ascii  "\xcd\xb8\xc3\xcd\xb9\xc3\xcd\xba"
		.ascii  "\xc3\xcd\xbb\xc3\xcd\xbc\xc3\xcd"
		.ascii  "\xbd\xc3\xcd\xbe\xc3\xcd\xbf\xc3"
		.ascii  "\xcd\xc0\xc3\xcd\xc1\xc3\xcd\xc2"
		.ascii  "\xc3\xcd\xc3\xc3\xcd\xc4\xc3\xcd"
		.ascii  "\xc5\xc3\xcd\xc6\xc3\xcd\xc7\xc3"
		.ascii  "\xcd\xc8\xc3\xcd\xc9\xc3\xcd\xca"
		.ascii  "\xc3\xcd\xcb\xc3\xcd\xcc\xc3\xcd"
		.ascii  "\xcd\xc3\xcd\xce\xc3\xcd\xcf\xc3"
		.ascii  "\xcd\xd0\xc3\xcd\xd1\xc3\xcd\xd2"
		.ascii  "\xc3\xcd\xd3\xc3\xcd\xd4\xc3\xcd"
		.ascii  "\xd5\xc3\xcd\xd6\xc3\xcd\xd7\xc3"
		.ascii  "\xcd\xd8\xc3\xcd\xd9\xc3\xcd\xda"
		.ascii  "\xc3\xcd\xdb\xc3\xcd\xdc\xc3\xcd"
		.ascii  "\xdd\xc3\xcd\xde\xc3\xcd\xdf\xc3"
		.ascii  "\xcd\xe0\xc3\xcd\xe1\xc3\xcd\xe2"
		.ascii  "\xc3\xcd\xe3\xc3\xcd\xe4\xc3\xcd"
		.ascii  "\xe5\xc3\xcd\xe6\xc3\xcd\xe7\xc3"
		.ascii  "\xcd\xe8\xc3\xcd\xe9\xc3\xcd\xea"
		.ascii  "\xc3\xcd\xeb\xc3\xcd\xec\xc3\xcd"
		.ascii  "\xed\xc3\xcd\xee\xc3\xcd\xef\xc3"
		.ascii  "\xcd\xf0\xc3\xcd\xf1\xc3\xcd\xf2"
		.ascii  "\xc3\xcd\xf3\xc3\xcd\xf4\xc3\xcd"
		.ascii  "\xf5\xc3\xcd\xf6\xc3\xcd\xf7\xc3"
		.ascii  "\xcd\xf8\xc3\xcd\xf9\xc3\xcd\xfa"
		.ascii  "\xc3\xcd\xfb\xc3\xcd\xfc\xc3\xcd"
		.ascii  "\xfd\xc3\xcd\xfe\xc3\xcd\xff\xc3"
		.fill   0x8
.text


/*----------------------------------------------------------------*/
func___STOSB:	/* 0x1dfa0 */
/*----------------------------------------------------------------*/
		or     %ecx,%ecx
		je     jump_1dfd0
		cmp    %dl,(%eax)
	jump_1dfa6:
		test   $0x3,%al
		je     jump_1dfb3
		mov    %dl,(%eax)
		inc    %eax
		ror    $0x8,%edx
		dec    %ecx
		jne    jump_1dfa6
	jump_1dfb3:
		push   %ecx
		shr    $0x2,%ecx
		call   func___STOSD
		pop    %ecx
		and    $0x3,%ecx
		je     jump_1dfd0
		mov    %dl,(%eax)
		dec    %ecx
		je     jump_1dfd0
		mov    %dh,0x1(%eax)
		dec    %ecx
		je     jump_1dfd0
		mov    %dl,0x2(%eax)
	jump_1dfd0:
		ret


/*----------------------------------------------------------------*/
func___STOSD:	/* 0x1dfd7 */
/*----------------------------------------------------------------*/
		or     %ecx,%ecx
		je     jump_1e042
	jump_1dfdb:
		test   $0x1f,%al
		je     jump_1dfe7
		mov    %edx,(%eax)
		lea    0x4(%eax),%eax
		dec    %ecx
		jne    jump_1dfdb
	jump_1dfe7:
		push   %ecx
		shr    $0x2,%ecx
		je     jump_1e027
		dec    %ecx
		je     jump_1e019
	jump_1dff0:
		mov    %edx,(%eax)
		mov    %edx,0x4(%eax)
		dec    %ecx
		mov    %edx,0x8(%eax)
		mov    %edx,0xc(%eax)
		je     jump_1e016
		cmp    %dl,0x20(%eax)
		mov    %edx,0x10(%eax)
		mov    %edx,0x14(%eax)
		dec    %ecx
		mov    %edx,0x18(%eax)
		mov    %edx,0x1c(%eax)
		lea    0x20(%eax),%eax
		jne    jump_1dff0
		lea    -0x10(%eax),%eax
	jump_1e016:
		lea    0x10(%eax),%eax
	jump_1e019:
		mov    %edx,(%eax)
		mov    %edx,0x4(%eax)
		mov    %edx,0x8(%eax)
		mov    %edx,0xc(%eax)
		lea    0x10(%eax),%eax
	jump_1e027:
		pop    %ecx
		and    $0x3,%ecx
		je     jump_1e042
		mov    %edx,(%eax)
		lea    0x4(%eax),%eax
		dec    %ecx
		je     jump_1e042
		mov    %edx,(%eax)
		lea    0x4(%eax),%eax
		dec    %ecx
		je     jump_1e042
		mov    %edx,(%eax)
		lea    0x4(%eax),%eax
	jump_1e042:
		ret


/*----------------------------------------------------------------*/
func_tell_:	/* 0x1e043 */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %edx
		mov    $0x1,%ebx
		xor    %edx,%edx
		call   w_dos_lseek
		pop    %edx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func___ioalloc_:	/* 0x1e054 */
/*----------------------------------------------------------------*/
		push   %ecx
		push   %edx
		mov    %eax,%edx
		call   func___chktty_
		cmpl   $0x0,0x14(%edx)
		jne    jump_1e089
		mov    0xd(%edx),%ah
		test   $0x2,%ah
		je     jump_1e074
		movl   $0x86,0x14(%edx)
		jmp    jump_1e089
	jump_1e074:
		test   $0x4,%ah
		je     jump_1e082
		movl   $0x1,0x14(%edx)
		jmp    jump_1e089
	jump_1e082:
		movl   $0x1000,0x14(%edx)
	jump_1e089:
		mov    0x14(%edx),%eax
		call   w_dos_malloc
		mov    %eax,0x8(%edx)
		test   %eax,%eax
		jne    jump_1e0b8
		lea    0x18(%edx),%eax
		mov    0xd(%edx),%cl
		movl   $0x1,0x14(%edx)
		and    $0xf8,%cl
		mov    %eax,0x8(%edx)
		mov    %cl,%ch
		mov    %cl,0xd(%edx)
		or     $0x4,%ch
		mov    %ch,0xd(%edx)
		jmp    jump_1e0bc
	jump_1e0b8:
		orb    $0x8,0xc(%edx)
	jump_1e0bc:
		mov    0x8(%edx),%eax
		movl   $0x0,0x4(%edx)
		mov    %eax,(%edx)
		pop    %edx
		pop    %ecx
		ret


/*----------------------------------------------------------------*/
func___qread_:	/* 0x1e0cb */
/*----------------------------------------------------------------*/
		push   %ecx
		mov    %ebx,%ecx
		mov    %eax,%ebx
		mov    $0x3f,%ah
		int    $0x21
		rcl    %eax
		ror    %eax
		mov    %eax,%edx
		test   %eax,%eax
		jge    jump_1e0e8
		and    $0xffff,%eax
		call   func___set_errno_dos_
	jump_1e0e8:
		pop    %ecx
		ret


/*----------------------------------------------------------------*/
func___flushall_:	/* 0x1e0ef */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %edx
		mov    %eax,%ecx
		mov    data_542d4,%edx
		xor    %ebx,%ebx
		jmp    jump_1e114
	jump_1e0fe:
		mov    0x4(%edx),%eax
		test   %ecx,0xc(%eax)
		je     jump_1e112
		inc    %ebx
		testb  $0x10,0xd(%eax)
		je     jump_1e112
		call   func___flush_
	jump_1e112:
		mov    (%edx),%edx
	jump_1e114:
		test   %edx,%edx
		jne    jump_1e0fe
		mov    %ebx,%eax
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func_getche_:	/* 0x1e11e */
/*----------------------------------------------------------------*/
		push   %edx
		xor    %edx,%edx
		mov    data_21088,%eax
		mov    %edx,data_21088
		test   %eax,%eax
		jne    jump_1e139
		mov    $0x1,%ah
		int    $0x21
		and    $0xff,%eax
	jump_1e139:
		pop    %edx
		ret
	jump_1e204:
		pop    %edi
		pop    %esi
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func___brk_:	/* 0x1e20a */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %edx
		push   %esi
		push   %edi
		push   %es
		push   %ebp
		push   %eax
		cmp    data_2107c,%eax
		jb     jump_1e271
		cmpb   $0x0,data_21096
		jne    jump_1e283
		mov    (%esp),%ebp
		add    $0xf,%ebp
		shr    $0x4,%ebp
		test   %ebp,%ebp
		jne    jump_1e235
		mov    $0xfffffff,%ebp
	jump_1e235:
		xor    %ebx,%ebx
		mov    %ds,%eax
		mov    %ax,%bx
		mov    $0xed,%ah
		int    $0x21
		shl    $0x1f,%eax
		and    $0xffff,%edi
		or     %eax,%edi
		test   %edi,%edi
		jge    jump_1e25f
		mov    %edi,%es
		mov    %ebp,%ebx
		mov    $0x4a,%ah
		int    $0x21
		rcl    %eax
		ror    %eax
		test   %eax,%eax
		jl     jump_1e271
	jump_1e25f:
		mov    %ds,%eax
		mov    %eax,%es
		mov    %ebp,%ebx
	jump_1e265:
		mov    $0x4a,%ah
		int    $0x21
		rcl    %eax
		ror    %eax
		test   %eax,%eax
		jge    jump_1e2b4
	jump_1e271:
		call   func_1e2cc
		movl   $0x5,(%eax)
		mov    $0xffffffff,%eax
		jmp    jump_1e2c2
	jump_1e283:
		mov    (%esp),%ebx
		add    $0xfff,%ebx
		shr    $0xc,%ebx
		test   %ebx,%ebx
		jne    jump_1e298
		mov    $0xfffff,%ebx
	jump_1e298:
		mov    data_21096,%dl
		cmp    $0x1,%dl
		jne    jump_1e2ae
		cmp    data_21097,%dl
		jne    jump_1e2ae
		shl    $0x8,%ebx
	jump_1e2ae:
		mov    %ds,%eax
		mov    %eax,%es
		jmp    jump_1e265
	jump_1e2b4:
		mov    (%esp),%ebx
		mov    data_21068,%eax
		mov    %ebx,data_21068
	jump_1e2c2:
		add    $0x4,%esp
		pop    %ebp
		pop    %es
		jmp    jump_1e204


/*----------------------------------------------------------------*/
func_1e2cc:
/*----------------------------------------------------------------*/
		mov    $data_542e0,%eax
		ret


/*----------------------------------------------------------------*/
func_1e2d2:
/*----------------------------------------------------------------*/
		mov    $data_542dc,%eax
		ret


/*----------------------------------------------------------------*/
func_1e2d8:
/*----------------------------------------------------------------*/
		push   %edx
		mov    $data_208d4,%eax
		mov    $0x1,%edx
		call   func___fatal_runtime_error_
		pop    %edx
		ret
.data
data_1e2ea:
		.string "0123456789abcdefghijklmnopqrstuvwxyz"
.text


/*----------------------------------------------------------------*/
func_ultoa_:	/* 0x1e30f */
/*----------------------------------------------------------------*/
		push   %ecx
		push   %esi
		push   %ebp
		sub    $0x28,%esp
		push   %edx
		mov    %ebx,%ebp
		mov    %edx,%esi
		xor    %dl,%dl
		lea    0x5(%esp),%ecx
		mov    %dl,0x4(%esp)
	jump_1e324:
		lea    0x28(%esp),%ebx
		mov    %ebp,0x28(%esp)
		xor    %edx,%edx
		divl   (%ebx)
		mov    %edx,(%ebx)
		mov    0x28(%esp),%edx
		mov    data_1e2ea(%edx),%dl
		mov    %dl,(%ecx)
		inc    %ecx
		test   %eax,%eax
		jne    jump_1e324
	jump_1e344:
		dec    %ecx
		mov    (%ecx),%al
		mov    %al,(%esi)
		inc    %esi
		test   %al,%al
		jne    jump_1e344
		mov    (%esp),%eax
		add    $0x2c,%esp
		pop    %ebp
		pop    %esi
		pop    %ecx
		ret


/*----------------------------------------------------------------*/
func_ltoa_:	/* 0x1e358 */
/*----------------------------------------------------------------*/
		push   %ecx
		mov    %edx,%ecx
		cmp    $0xa,%ebx
		jne    jump_1e36a
		test   %eax,%eax
		jge    jump_1e36a
		neg    %eax
		movb   $0x2d,(%edx)
		inc    %edx
	jump_1e36a:
		call   func_ultoa_
		mov    %ecx,%eax
		pop    %ecx
		ret


/*----------------------------------------------------------------*/
func_toupper_:	/* 0x1e373 */
/*----------------------------------------------------------------*/
		cmp    $0x61,%eax
		jl     jump_1e380
		cmp    $0x7a,%eax
		jg     jump_1e380
		sub    $0x20,%eax
	jump_1e380:
		ret


/*----------------------------------------------------------------*/
func___InitFiles_:	/* 0x1e381 */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %edx
		mov    data_20e91,%ah
		and    $0xf8,%ah
		mov    %ah,%dl
		mov    %ah,data_20e91
		or     $0x4,%dl
		mov    $data_20e50,%ecx
		mov    %dl,data_20e91
		jmp    jump_1e3e8
	jump_1e3a5:
		mov    $0x8,%eax
		call   w_dos_malloc
		mov    %eax,%ebx
		test   %eax,%eax
		jne    jump_1e3d4
		mov    $0x8,%eax
		call   w_dos_malloc
		mov    %eax,%ebx
		test   %eax,%eax
		jne    jump_1e3d4
		mov    $data_208f8,%eax
		mov    $0x1,%edx
		call   func___fatal_runtime_error_
	jump_1e3d4:
		mov    data_542d4,%edx
		mov    %ecx,0x4(%ebx)
		mov    %ebx,data_542d4
		add    $0x1a,%ecx
		mov    %edx,(%ebx)
	jump_1e3e8:
		mov    0xc(%ecx),%edx
		test   %edx,%edx
		jne    jump_1e3a5
		mov    %edx,data_542cc
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func___full_io_exit_:	/* 0x1e3f9 */
/*----------------------------------------------------------------*/
		xor    %eax,%eax
		call   func_docloseall_
		jmp    func___purgefp_


/*----------------------------------------------------------------*/
func_docloseall_:	/* 0x1e40a */
/*----------------------------------------------------------------*/
		push   %ebx
		push   %ecx
		push   %edx
		push   %esi
		mov    %eax,%edx
		shl    $0x2,%eax
		sub    %edx,%eax
		shl    $0x2,%eax
		add    %edx,%eax
		mov    $data_20e50,%esi
		add    %eax,%eax
		xor    %ebx,%ebx
		add    %eax,%esi
		mov    data_542d4,%eax
		jmp    jump_1e451
	jump_1e42c:
		mov    (%eax),%ecx
		mov    0x4(%eax),%eax
		mov    $0x1,%edx
		testb  $0x40,0xd(%eax)
		jne    jump_1e449
		cmp    %esi,%eax
		jb     jump_1e44f
		cmp    $data_20ed2,%eax
		jae    jump_1e449
		xor    %edx,%edx
	jump_1e449:
		call   func___shutdown_stream_
		inc    %ebx
	jump_1e44f:
		mov    %ecx,%eax
	jump_1e451:
		test   %eax,%eax
		jne    jump_1e42c
		mov    %ebx,%eax
		pop    %esi
		pop    %edx
		pop    %ecx
		pop    %ebx
		ret


/*----------------------------------------------------------------*/
func___qwrite_:	/* 0x1e45c */
/*----------------------------------------------------------------*/
		push   %ecx
		push   %esi
		push   %edi
		push   %ebp
		sub    $0x4,%esp
		mov    %eax,%esi
		mov    %edx,(%esp)
		mov    %ebx,%ebp
		call   func___IOMode_
		test   $0x80,%al
		je     jump_1e4a0
		mov    $0x2,%al
		mov    %esi,%ebx
		xor    %edx,%edx
		mov    $0x42,%ah
		mov    %edx,%ecx
		shr    $0x10,%ecx
		int    $0x21
		rcl    %dx
		ror    %dx
		shl    $0x10,%edx
		mov    %ax,%dx
		mov    %edx,%edi
		test   %edx,%edx
		jge    jump_1e4a0
		xor    %eax,%eax
		mov    %dx,%ax
	jump_1e499:
		call   func___set_errno_dos_
		jmp    jump_1e4d0
	jump_1e4a0:
		mov    (%esp),%edx
		mov    %esi,%ebx
		mov    %ebp,%ecx
		mov    $0x40,%ah
		int    $0x21
		rcl    %eax
		ror    %eax
		mov    %eax,%esi
		mov    %eax,%edi
		mov    %eax,%edx
		test   %eax,%eax
		jge    jump_1e4c0
		xor    %eax,%eax
		mov    %si,%ax
		jmp    jump_1e499
	jump_1e4c0:
		cmp    %ebp,%eax
		je     jump_1e4ce
		mov    $0xc,%eax
		call   func___set_errno_
	jump_1e4ce:
		mov    %edx,%eax
	jump_1e4d0:
		add    $0x4,%esp
		pop    %ebp
		pop    %edi
		pop    %esi
		pop    %ecx
		ret


/*----------------------------------------------------------------*/
func_1e4d8:
/*----------------------------------------------------------------*/
		movl   $0x8000,data_210ac
		ret


/*----------------------------------------------------------------*/
func___EnterWVIDEO_:	/* 0x1e4e3 */
/*----------------------------------------------------------------*/
		cmpb   $0x0,data_210b8
		je     jump_1e506
		and    $0xffff,%edx
		push   %edx
		push   %eax
		int3
		jmp    jump_1e4fd
	jump_1e4fd:
		mov    $0x1,%eax
		add    $0x8,%esp
		ret
	jump_1e506:
		xor    %eax,%eax
		ret


GLOBAL (pit_isr_0)
    ret


GLOBAL (keyboard_isr)
    ret


.data
data_20000:
		.ascii  "\x01\x01\x01\x00"
data_20004:
		.string "text.chr"
		.ascii  "\x00\x00\x00"
data_20010:
		.string "game.cfg"
data_20019:
		.string "game.cfg open error!"
data_2002e:
		.string "%s read error!\n"
data_2003e:
		.string "%s write error!\n"
data_2004f:
		.string "blackbox.sv1"
data_2005c:
		.ascii  "\x20\xb6\xa9\x20\x00"
data_20061:
		.ascii  "\x20\xb7\xa9\x20\x00"
data_20066:
		.ascii  "\x20\xaf\xa1\x20\x00"
data_2006b:
		.ascii  "\x20\xa6\x85\x00"
data_2006f:
		.string "blackbox.sv2"
data_2007c:
		.string "blackbox.sv3"
data_20089:
		.string "blackbox.sv4"
data_20096:
		.string "blackbox.sv5"
data_200a3:
		.ascii  "\x72\x62\x00"
data_200a6:
		.string "AN02.PCX"
data_200af:
		.string "NOT SAVED"
data_200b9:
		.ascii  "\x5b\x20\xa1\x41\xb7\xa5\xa1\x41"
		.ascii  "\x93\x41\x9d\xa1\x20\x5d\x00"
data_200c8:
		.string "blackbox.dat"
data_200d5:
		.string ".\\chapdata\\contibak.tmp"
data_200ed:
		.string ".\\chapdata\\contibak.sv1"
data_20105:
		.ascii  "\x77\x62\x00"
data_20108:
		.string ".\\cstldata\\LOADED"
data_2011a:
		.ascii  "\x24\x00"
data_2011c:
		.string "contmap.dat"
data_20128:
		.string ".\\chapdata\\contibak.sv2"
data_20140:
		.string ".\\chapdata\\contibak.sv3"
data_20158:
		.string ".\\chapdata\\contibak.sv4"
data_20170:
		.string ".\\chapdata\\contibak.sv5"
data_20188:
		.string "blackbox.def"
data_20195:
		.string "START"
data_2019b:
		.string "continue.sve"
data_201a8:
		.ascii  "\xc0\xe1\xb7\x71\xa6\x81\xc8\xe1"
		.ascii  "\x20\xd0\x61\x8b\xa1\x00"
data_201b6:
		.ascii  "\x20\x20\x9d\xa1\x97\x61\x20\x89"
		.ascii  "\x41\xb7\xb1\x00"
data_201c2:
		.ascii  "\xb8\xe5\xca\x81\x20\xb7\xa1\xb4"
		.ascii  "\xe1\xac\xe1\x20\xd0\x61\x8b\xa1"
		.ascii  "\x00"
data_201d3:
		.ascii   "   DOS "
		.ascii  "\x9d\xa1\x00"
data_201dd:
		.string "Version 1.2"
data_201e9:
		.string ".\\cstldata\\PASS"
data_201f9:
		.string ".\\cstldata\\LOAD1"
data_2020a:
		.string ".\\cstldata\\LOAD2"
data_2021b:
		.string ".\\cstldata\\LOAD3"
data_2022c:
		.string ".\\cstldata\\LOAD4"
data_2023d:
		.string ".\\cstldata\\LOAD5"
data_2024e:
		.string ".\\cstldata\\MENU"
data_2025e:
		.string ".\\cstldata\\EXIT"
data_2026e:
		.string "newascii.fnt"
data_2027b:
		.string "newhan.fnt"
data_20286:
		.string "an02.pcx"
data_2028f:
		.ascii  "\xa1\x41\xa1\xa1\x9f\xa1\x20\xa6"
		.ascii  "\x81\xb9\xa2\x21\x20\xa1\x41\x93"
		.ascii  "\x41\xb4\xe9\x9f\x69\x20\xc0\x71"
		.ascii  "\xb9\xa1\xd0\x61\xad\x41\xb6\x61"
		.ascii  "\x21\x00"
data_202b1:
		.ascii  "\xc4\x81\xae\xe1\x20\xcf\x61\x9d"
		.ascii  "\xa1\x8b\x61\x9c\x91"
		.ascii   "(ex> SMARTDRV) "
		.ascii  "\x97\x77\xb7\x69\x20\x21\x00"
data_202d4:
		.ascii  "\xb9\x41\x88\xe1\x20\xd0\x61\xaf"
		.ascii  "\xa5\x20\xd2\x81\x20\x89\x41\xb7"
		.ascii  "\xb1\xb7\x69\x20\x94\x61\xaf\xa1"
		.ascii  "\x20\xaf\xa9\xd0\x97\xd0\x61\xad"
		.ascii  "\x41\xb6\x61\x2e\x00"
data_202f9:
		.ascii  "\xc0\x77\xad\x41\x8b\xa1\xb8\xe5"
		.ascii   "2 CD"
		.ascii  "\x9f"
		.ascii   "i CD"
		.ascii  "\x97\x61\x9c\x61\xb7\xa1\xa7\x61"
		.ascii  "\xb5\x41\x00"
data_20315:
		.ascii  "\x90\xfd\xb4\xe1\xba\x81\xaf\xa1"
		.ascii  "\x89\xa1\x20\x94\x61\xaf\xa1\x20"
		.ascii  "\xaf\xa9\xd0\x97\xd0\x61\xad\x41"
		.ascii  "\xb6\x61\x21\x00"
data_20331:
		.string "\\GENESIS2\\HICOM.FLI"
data_20345:
		.string "HICOM.fli"
data_2034f:
		.string "HICOM.voc"
data_20359:
		.string "\\GENESIS2\\SOFTMAX.FLI"
data_2036f:
		.string "SOFTMAX.fli"
data_2037b:
		.string "SOFTMAX.voc"
		.ascii  "\x00"
data_20388:
		.string "Mouse not installed...\n"
data_203a0:
		.string "%s read error!\n"
data_203b0:
		.string "    "
data_203b5:
		.ascii  "\x20\x20\x20"
		.fill   0x4
data_203bc:
		.ascii  "\x72\x62\x00\x00"
data_203c0:
		.string "Failed memory allocation...\n"
data_203dd:
		.string "Largest available block (in bytes): %lu\n"
data_20406:
		.string "Maximum unlocked page allocation: %lu\n"
data_2042d:
		.string "Pages that can be allocated and locked: %lu\n"
data_2045a:
		.string "Total linear address space including allocated pages: %lu\n"
data_20495:
		.string "Number of free pages available: %lu\n"
data_204ba:
		.string "Number of physical pages not in use: %lu\n"
data_204e4:
		.string "Total physical pages managed by host: %lu\n"
data_2050f:
		.string "Free linear address space (pages): %lu\n"
data_20537:
		.string "Size of paging/file partition (pages): %lu\n"
		.ascii  "\x00"
data_20564:
		.ascii  "\x72\x62\x00"
data_20567:
		.string "%s read error!\n"
		.ascii  "\x00"
data_20578:
		.string "\n drives : %d"
data_20586:
		.string "\n first_drive : %d"
data_20599:
		.string "\n current_track : %d"
data_205ae:
		.string "\n track_position : %d"
data_205c4:
		.string "\n track_type : %d"
data_205d6:
		.string "\n low_audio : %d"
data_205e7:
		.string "\n high_audio : %d"
data_205f9:
		.string "\n disk_length_min : %d"
data_20610:
		.string "\n disk_length_sec : %d"
data_20627:
		.string "\n disk_length_frames : %d"
data_20641:
		.string "\n endofdisk : %d"
data_20652:
		.string "\n upc[7] : %s"
data_20660:
		.string "\n diskid[6] : %s"
data_20671:
		.string "\n status : %d"
data_2067f:
		.string "\n error : %d"
data_2068c:
		.string "MSCDEX Version %d.%d\n"
data_206a2:
		.string "Number of CD drive = %d\n"
data_206bb:
		.string "First CD drive = %c:\n"
data_206d1:
		.string "%d     %i:%i:%i     "
data_206e6:
		.string "DATA\n"
data_206ec:
		.string "AUDIO\n"
data_206f3:
		.string "Error Occured\n"
data_20702:
		.string "Write Protect violation (#0)\n"
data_20720:
		.string "Unknown unit (#1)\n"
data_20733:
		.string "Drive not Ready (#2)\n"
data_20749:
		.string "Unknown Command (#3)\n"
data_2075f:
		.string "CRC error (#4)\n"
data_2076f:
		.string "Bad drive request structure length (#5)\n"
data_20798:
		.string "Seek error (#6)\n"
data_207a9:
		.string "Unknown media (#7)\n"
data_207bd:
		.string "Sector not found (#8)\n"
data_207d4:
		.string "Printer out of paper (#9)\n"
data_207ef:
		.string "Write fault (#a)\n"
data_20801:
		.string "Read fault (#b)\n"
data_20812:
		.string "General failure (#c)\n"
data_20828:
		.string "Reserved (#d)\n"
data_20837:
		.string "Reserved (#e)\n"
data_20846:
		.string "Invalid disk change (#f)\n"
data_20860:
		.string "No error occured\n"
data_20872:
		.string "Done\n"
data_20878:
		.string "Busy\n"
data_2087e:
		.string "Done & Busy\n"
data_2088b:
		.ascii  "\x25\x64\x0a\x00"
data_2088f:
		.ascii  "\x25\x64\x00\x00\x00"
data_20894:
		.ascii  "\x72\x62\x00"
data_20897:
		.string "Fli File not found."
data_208ab:
		.string "Fli File Broken."
data_208bc:
		.string "Error in Fli file."
		.ascii  "\x00"
data_208d0:
		.ascii  "\x72\x62\x00\x00"
data_208d4:
		.string "Floating-point support not loaded\r\n"
data_208f8:
		.string "Not enough memory to allocate file structures\r\n"
data_20928:
		.ascii  "\x64\x00\x00\x00"
data_2092c:
		.fill   0x4
data_20930:
		.ascii  "\x0f\x00"
data_20932:
		.fill   0x4
data_20936:
		.ascii  "\x40\x01\x00\x00"
data_2093a:
		.fill   0x4
data_2093e:
		.fill   0x8
		.ascii  "\x0a\x00"
data_20948:
		.ascii  "\x01"
data_20949:
		.ascii  "\x88\x13\x00\x00"
data_2094d:
		.fill   0x4
data_20951:
		.fill   0x8
		.ascii  "\x6c\x00\x40\x00"
data_2095d:
		.ascii  "\x00\x00"
data_2095f:
		.ascii  "\x00\x00"
data_20961:
		.ascii  "\x96\x00"
data_20963:
		.ascii  "\x64\x00"
data_20965:
		.ascii  "\x96\x00"
data_20967:
		.ascii  "\x64\x00"
data_20969:
		.ascii  "\x00\x00"
data_2096b:
		.ascii  "\x0e\x00\x0e\x00\x07\x06\xff\xff"
		.ascii  "\xff\xff\xff\xff\xff\xff\xff\xff"
		.ascii  "\xff\xff\x06\x01\x06\xff\xff\x07"
		.ascii  "\x06\x07\xff\xff\xff\xff\xff\xff"
		.ascii  "\x07\x04\x02\x06\x07\x05\x04\x06"
		.ascii  "\x06\xff\xff\xff\xff\xff\xff\x07"
		.ascii  "\x05\x03\x06\x03\x05\x02\x03\x06"
		.ascii  "\xff\xff\xff\xff\xff\xff\x07\x05"
		.ascii  "\x02\x05\x02\x03\x04\x07\xff\xff"
		.ascii  "\xff\xff\xff\xff\x07\x07\x04\x06"
		.ascii  "\x01\x02\x05\x07\xff\xff\xff\xff"
		.ascii  "\xff\xff\x07\x04\x07\x06\x04\x05"
		.ascii  "\x04\x06\x07\xff\xff\xff\xff\xff"
		.ascii  "\x07\x03\x04\x07\x07\x04\x03\x03"
		.ascii  "\x04\x07\x07\xff\xff\xff\xff\x07"
		.ascii  "\x07\x07\x06\x04\x02\x01\x01\x03"
		.ascii  "\x05\x07\xff\xff\xff\xff\xff\xff"
		.ascii  "\x07\x05\x02\x03\x05\x00\x07\x00"
		.ascii  "\xff\xff\xff\xff\xff\xff\xff\x06"
		.ascii  "\x04\x05\x00\x07\x06\x07\xff\xff"
		.ascii  "\xff\xff\xff\xff\xff\x07\x05\x00"
		.ascii  "\x07\x06\x05\x07\xff\xff\xff\xff"
		.ascii  "\xff\xff\xff\x00\x06\x00\x07\x07"
		.ascii  "\x00\xff\xff\xff\xff\xff\xff\xff"
		.ascii  "\xff\xff"
		.fill   0x4
		.ascii  "\xff\xff"
data_20a33:
		.ascii  "\x0e\x00\x0c\x00\xff\x06\x06\xff"
		.ascii  "\xff\x07\x06\x07\xff\xff\xff\xff"
		.ascii  "\xff\xff\x06\x04\x03\x06\x07\x05"
		.ascii  "\x04\x06\x06\xff\xff\xff\xff\xff"
		.ascii  "\x07\x06\x05\x02\x06\x03\x05\x02"
		.ascii  "\x03\x06\xff\xff\xff\xff\xff\xff"
		.ascii  "\x07\x06\x03\x05\x02\x02\x03\x06"
		.ascii  "\xff\xff\xff\xff\xff\xff\x07\x07"
		.ascii  "\x06\x05\x02\x04\x05\x04\x06\x07"
		.ascii  "\xff\xff\xff\xff\x07\x04\x07\x07"
		.ascii  "\x06\x06\x03\x01\x03\x04\x06\x07"
		.ascii  "\xff\xff\x07\x03\x04\x06\x07\x05"
		.ascii  "\x01\x03\x05\x07\x00\x00\xff\xff"
		.ascii  "\xff\x07\x07\x07\x07\x06\x02\x06"
		.ascii  "\x00\x00\x07\x00\xff\xff\xff\xff"
		.ascii  "\xff\xff\xff\x07\x04\x00\x00\x07"
		.ascii  "\x06\x07\xff\xff\xff\xff\xff\xff"
		.ascii  "\xff\x00\x06\x00\x07\x06\x05\x00"
		.ascii  "\xff\xff\xff\xff\xff\xff\xff\xff"
		.ascii  "\x00\x00\x07\x07\x00\xff\xff\xff"
		.ascii  "\xff\xff\xff\xff\xff\xff\xff\x00"
		.ascii  "\x00\x00\xff\xff"
data_20adf:
		.fill   0x1f6
		.ascii  "\x0a\x00"
data_20cd7:
		.ascii  "\x00\x00\x0a\x00"
data_20cdb:
		.ascii  "\x01"
data_20cdc:
		.ascii  "\x00\x00"
data_20cde:
		.ascii  "\x00\x00"
data_20ce0:
		.ascii  "\x10\x00"
data_20ce2:
		.ascii  "\x10\x00"
data_20ce4:
		.ascii  "\x01\x00\x00\x00"
data_20ce8:
		.ascii  "\x00\x00"
data_20cea:
		.ascii  "\x00\x00"
data_20cec:
		.ascii  "\x00\x00"
data_20cee:
		.ascii  "\x00\x00"
data_20cf0:
		.ascii  "\x00\x00"
data_20cf2:
		.ascii  "\x00\x00"
data_20cf4:
		.fill   0x4
data_20cf8:
		.fill   0x4
data_20cfc:
		.fill   0x4
data_20d00:
		.fill   0x4
data_20d04:
		.fill   0x4
		.string "C o p y r i g h t   b y   S O F T M A X   C o . , L t d . "
		.fill   0x15
data_20d58:
		.fill   0x4
data_20d5c:
		.fill   0x4
data_20d60:
		.fill   0x4
data_20d64:
		.ascii  "\x00\x00\x0a\x00"
data_20d68:
		.ascii  "\x00\x00"
data_20d6a:
		.fill   0x6
		.string "C o p y r i g h t   b y   S O F T M A X Co. 1 9 9 6 "
		.fill   0x7
data_20dac:
		.fill   0x4
data_20db0:
		.fill   0x4
data_20db4:
		.fill   0x4
data_20db8:
		.long   func___null_int23_exit_
data_20dbc:
		.long   func___null_int23_exit_
data_20dc0:
		.long   func___null_int23_exit_
data_20dc4:
		.fill   0x4
data_20dc8:
		.ascii  "\x20\x00\x00\x00"
data_20dcc:
		.ascii  "\x00\x00"
data_20dce:
		.ascii   "Stack Overflow!"
data_20ddd:
		.ascii  "\x0d\x0a\x00\x00\x09\x01\x01\x0b"
		.ascii  "\x06\x04\x05\x05\x05\x02\x03\xff"
		.ascii  "\xff\x07\x08\x06\x08\x01\xff"
data_20df4:
		.fill   0x4
data_20df8:
		.ascii  "\x14\x00\x00\x00"
data_20dfc:
		.ascii  "\x01\x00\x00\x00\x02\x00\x00\x00"
		.ascii  "\x02\x00\x00\x00\x03\x00\x00\x00"
		.ascii  "\x02"
		.fill   0x3f
data_20e4c:
		.long   data_20dfc
data_20e50:
		.fill   0xc
		.ascii  "\x01"
		.fill   0xd
data_20e6a:
		.fill   0xc
		.ascii  "\x02\x00\x00\x00\x01"
		.fill   0x15
		.ascii  "\x02"
data_20e91:
		.ascii  "\x00\x00\x00\x02"
		.fill   0x15
		.ascii  "\x03\x00\x00\x00\x03"
		.fill   0x15
		.ascii  "\x02\x00\x00\x00\x04"
		.fill   0x9
data_20ed2:
		.fill   0x186
data_21058:
		.ascii  "\x61"
data_21059:
		.ascii  "\x00\x01\x00\x00"
		.long   data_542d4
		.ascii  "\x00\x00\x00"
data_21064:
		.fill   0x4
data_21068:
		.fill   0x4
data_2106c:
		.fill   0x4
data_21070:
		.fill   0x4
data_21074:
		.fill   0x4
data_21078:
		.fill   0x4
data_2107c:
		.fill   0x4
data_21080:
		.fill   0x4
data_21084:
		.fill   0x4
data_21088:
		.fill   0xc
data_21094:
		.ascii  "\x00\x00"
data_21096:
		.ascii  "\x00"
data_21097:
		.ascii  "\x00"
data_21098:
		.ascii  "\x00"
data_21099:
		.fill   0x4
data_2109d:
		.ascii  "\x00\x00"
data_2109f:
		.ascii  "\x00"
data_210a0:
		.ascii  "\x00"
data_210a1:
		.long   func_nullsub_2
		.ascii  "\x00\x00\x00"
data_210a8:
		.ascii  "\x01\x00\x00\x00"
data_210ac:
		.ascii  "\x10\x00\x00\x00"
data_210b0:
		.long   func_1e2d8
		.long   func_1e2d8
data_210b8:
		.ascii  "\x00\x00"
data_210ba:
		.ascii  "\x00\x20"
		.long   func___delay_init_
		.ascii  "\x00\x20"
		.long   func_1bd56
		.ascii  "\x00\x20"
		.long   func___InitFiles_
data_210cc:
		.ascii  "\x00\x20"
		.long   func___full_io_exit_
data_210d2:
		.ascii  "\x00\x00"
data_210d4:
		.fill   0x300
data_213d4:
		.fill   0x190
data_21564:
		.fill   0x2fd
data_21861:
		.ascii  "\x00"
data_21862:
		.ascii  "\x00"
data_21863:
		.ascii  "\x00"
data_21864:
		.ascii  "\x00"
data_21865:
		.ascii  "\x00"
data_21866:
		.fill   0x2fb
data_21b61:
		.ascii  "\x00"
data_21b62:
		.ascii  "\x00\x00"
data_21b64:
		.ascii  "\x00"
data_21b65:
		.ascii  "\x00"
data_21b66:
		.fill   0x2e
data_21b94:
		.fill   0x3fd
data_21f91:
		.ascii  "\x00"
data_21f92:
		.ascii  "\x00\x00"
data_21f94:
		.ascii  "\x00"
data_21f95:
		.ascii  "\x00"
data_21f96:
		.ascii  "\x00"
data_21f97:
		.fill   0x3d
data_21fd4:
		.fill   0x4
data_21fd8:
		.fill   0x4
data_21fdc:
		.ascii  "\x00\x00"
data_21fde:
		.ascii  "\x00\x00"
data_21fe0:
		.ascii  "\x00\x00"
data_21fe2:
		.ascii  "\x00\x00"
data_21fe4:
		.ascii  "\x00\x00"
data_21fe6:
		.ascii  "\x00"
data_21fe7:
		.ascii  "\x00"
data_21fe8:
		.ascii  "\x00"
data_21fe9:
		.ascii  "\x00\x00"
data_21feb:
		.ascii  "\x00\x00"
data_21fed:
		.ascii  "\x00\x00"
data_21fef:
		.ascii  "\x00\x00"
data_21ff1:
		.ascii  "\x00"
data_21ff2:
		.ascii  "\x00"
data_21ff3:
		.ascii  "\x00"
data_21ff4:
		.ascii  "\x00"
data_21ff5:
		.ascii  "\x00"
data_21ff6:
		.ascii  "\x00"
data_21ff7:
		.fill   0x605
data_225fc:
		.fill   0x4
data_22600:
		.fill   0x4
data_22604:
		.fill   0x4
GLOBAL (game_cfg_speed) /* 22608 */
		.ascii  "\x00\x01"
game_cfg_sound: /* 2260a */
		.ascii  "\x01\x05"
game_cfg_soundblaster_adr: /* 2260c */
		.ascii  "\x20\x02"
game_cfg_soundblaster_irq: /* 2260e */
    .word   0x0007
    .word   0x0001
		.fill   0x6
data_22618:
		.fill   0x4
data_2261c:
		.fill   0x4
data_22620:
		.fill   0x4
data_22624:
		.fill   0x160
data_22784:
		.fill   0x4
data_22788:
		.fill   0x4
data_2278c:
		.fill   0x4
data_22790:
		.fill   0x1a
data_227aa:
		.ascii  "\x00"
data_227ab:
		.ascii  "\x00"
data_227ac:
		.fill   0x190
data_2293c:
		.ascii  "\x00"
data_2293d:
		.ascii  "\x00"
data_2293e:
		.ascii  "\x00"
data_2293f:
		.ascii  "\x00\x00"
data_22941:
		.fill   0xaeb
data_2342c:
		.ascii  "\x00\x00"
data_2342e:
		.fill   0x177c6
data_3abf4:
		.fill   0xc
data_3ac00:
		.fill   0x1400
data_3c000:
		.fill   0xb00
data_3cb00:
		.fill   0xe00
data_3d900:
		.fill   0x1000
data_3e900:
		.ascii  "\x00\x00"
data_3e902:
		.ascii  "\x00\x00"
data_3e904:
		.fill   0x10
data_3e914:
		.fill   0x4
data_3e918:
		.fill   0x4
data_3e91c:
		.fill   0x4
data_3e920:
		.fill   0x4
data_3e924:
		.ascii  "\x00\x00"
data_3e926:
		.ascii  "\x00\x00"
data_3e928:
		.fill   0x20
data_3e948:
		.ascii  "\x00\x00"
data_3e94a:
		.ascii  "\x00\x00"
data_3e94c:
		.ascii  "\x00\x00"
data_3e94e:
		.ascii  "\x00\x00"
data_3e950:
		.fill   0x4
data_3e954:
		.fill   0x4
data_3e958:
		.fill   0x4
data_3e95c:
		.fill   0x4
data_3e960:
		.fill   0x4
data_3e964:
		.fill   0x4
data_3e968:
		.fill   0x4
data_3e96c:
		.fill   0x4
data_3e970:
		.fill   0x4
data_3e974:
		.fill   0x4
data_3e978:
		.fill   0x4
data_3e97c:
		.fill   0x10
data_3e98c:
		.fill   0x8
data_3e994:
		.ascii  "\x00\x00"
data_3e996:
		.ascii  "\x00\x00"
data_3e998:
		.fill   0x5fc
data_3ef94:
		.ascii  "\x00\x00"
data_3ef96:
		.ascii  "\x00\x00"
data_3ef98:
		.fill   0x5fc
data_3f594:
		.ascii  "\x00\x00"
data_3f596:
		.ascii  "\x00\x00"
data_3f598:
		.fill   0x5fc
data_3fb94:
		.ascii  "\x00"
data_3fb95:
		.ascii  "\x00"
data_3fb96:
		.fill   0x2fe
data_3fe94:
		.ascii  "\x00\x00"
data_3fe96:
		.ascii  "\x00\x00"
data_3fe98:
		.fill   0x5fc
data_40494:
		.ascii  "\x00\x00"
data_40496:
		.ascii  "\x00\x00"
data_40498:
		.fill   0x5fc
data_40a94:
		.ascii  "\x00"
data_40a95:
		.ascii  "\x00"
data_40a96:
		.fill   0x2fe
data_40d94:
		.ascii  "\x00"
data_40d95:
		.ascii  "\x00"
data_40d96:
		.fill   0x2fe
data_41094:
		.ascii  "\x00\x00"
data_41096:
		.ascii  "\x00\x00"
data_41098:
		.fill   0x5fc
data_41694:
		.ascii  "\x00\x00"
data_41696:
		.ascii  "\x00\x00"
data_41698:
		.fill   0x5fc
data_41c94:
		.ascii  "\x00"
data_41c95:
		.ascii  "\x00"
data_41c96:
		.fill   0x2fe
data_41f94:
		.ascii  "\x00\x00"
data_41f96:
		.ascii  "\x00\x00"
data_41f98:
		.fill   0x5fc
data_42594:
		.ascii  "\x00\x00"
data_42596:
		.ascii  "\x00\x00"
data_42598:
		.fill   0x5fc
data_42b94:
		.ascii  "\x00"
data_42b95:
		.ascii  "\x00"
data_42b96:
		.fill   0x2fe
data_42e94:
		.fill   0x78
data_42f0c:
		.fill   0x78
cdrom_mscdex_major_version: /* 42f84 */
		.fill   0x4
cdrom_mscdex_minor_version: /* 42f88 */
		.fill   0xc
data_42f94:
		.fill   0x4
dpmi_real_mode_call_structure: /* 42f98 */
		.fill   0x10
dpmi_real_mode_call_structure_ebx: /* 42fa8 */
		.fill   0x8
dpmi_real_mode_call_structure_ecx: /* 42fb0 */
		.fill   0x4
dpmi_real_mode_call_structure_eax: /* 42fb4 */
		.fill   0x6
dpmi_real_mode_call_structure_es: /* 42fba */
		.fill   0x10
cdrom_number: /* 42fca */
		.ascii  "\x00\x00"
cdrom_starting_letter: /* 42fcc */
		.ascii  "\x00"
data_42fcd:
		.ascii  "\x00\x00"
cdrom_audio_track_info_something_related_with_starting_point_of_the_track: /* 42fcf */
		.fill   0x4
cdrom_audio_track_info_something_related_with_track_control_information: /* 42fd3 */
		.ascii  "\x00"
cdrom_audio_disc_info_lowest_track_number: /* 42fd4 */
#if 1
    .byte   2
#else
		.ascii  "\x00"
#endif
cdrom_audio_disc_info_highest_track_number: /* 42fd5 */
#if 1
    .byte   19
#else
		.ascii  "\x00"
#endif
cdrom_audio_disc_info_third_byte_of_starting_point_of_the_lead_out_track: /* 42fd6 */
		.ascii  "\x00"
cdrom_audio_disc_info_second_byte_of_starting_point_of_the_lead_out_track_YA: /* 42fd7 */
		.ascii  "\x00"
cdrom_audio_disc_info_first_byte_of_starting_point_of_the_lead_out_track_YA: /* 42fd8 */
		.ascii  "\x00"
cdrom_audio_disc_info_something_related_with_starting_point_of_the_lead_out_track: /* 42fd9 */
		.fill   0x4
data_42fdd:
		.fill   0x7
data_42fe4:
		.fill   0x6
data_42fea:
		.fill   0x4
data_42fee:
		.ascii  "\x00"
data_42fef:
		.ascii  "\x00"
data_42ff0:
		.fill   0x4
data_42ff4:
		.ascii  "\x00\x00"
data_42ff6:
		.ascii  "\x00\x00"
data_42ff8:
		.fill   0x20
data_43018:
		.fill   0x4
data_4301c:
		.fill   0x4
data_43020:
		.fill   0x8
data_43028:
		.fill   0xb00
data_43b28:
		.fill   0x10000
data_53b28:
		.fill   0x4
data_53b2c:
		.fill   0x27c
data_53da8:
		.fill   0x200
data_53fa8:
		.fill   0x200
data_541a8:
		.fill   0x4
data_541ac:
		.fill   0x4
data_541b0:
		.fill   0x4
data_541b4:
		.fill   0x4
data_541b8:
		.fill   0x4
data_541bc:
		.fill   0x4
data_541c0:
		.fill   0x4
data_541c4:
		.fill   0x4
data_541c8:
		.fill   0x4
data_541cc:
		.fill   0x4
data_541d0:
		.fill   0x4
data_541d4:
		.fill   0x4
data_541d8:
		.fill   0x4
data_541dc:
		.fill   0x8
data_541e4:
		.fill   0x4
data_541e8:
		.fill   0x4
data_541ec:
		.fill   0x4
data_541f0:
		.fill   0x4
data_541f4:
		.fill   0x4
data_541f8:
		.fill   0x8
data_54200:
		.fill   0x4
data_54204:
		.fill   0x4
data_54208:
		.fill   0x4
data_5420c:
		.fill   0x4
data_54210:
		.fill   0x4
data_54214:
		.fill   0x8
data_5421c:
		.fill   0x4
data_54220:
		.fill   0x4
data_54224:
		.fill   0x4
data_54228:
		.fill   0x4
data_5422c:
		.fill   0x4
data_54230:
		.fill   0x8
data_54238:
		.fill   0x4
data_5423c:
		.fill   0x4
data_54240:
		.fill   0x4
data_54244:
		.fill   0x4
data_54248:
		.fill   0x4
data_5424c:
		.fill   0x8
data_54254:
		.fill   0x4
data_54258:
		.fill   0x4
data_5425c:
		.fill   0x4
data_54260:
		.fill   0x4
data_54264:
		.fill   0x4
data_54268:
		.fill   0x8
data_54270:
		.fill   0x4
data_54274:
		.fill   0x4
data_54278:
		.fill   0x4
data_5427c:
		.fill   0x4
data_54280:
		.fill   0x4
data_54284:
		.fill   0x4
soundblaster_interrupt_number: /* 54288 */
		.fill   0x4
data_5428c:
		.fill   0x4
data_54290:
		.fill   0x4
data_54294:
		.fill   0x4
pic_saved_masks: /* 54298 */
		.fill   0x4
data_5429c:
		.fill   0x4
soundblaster_dma: /* 542a0 */
		.fill   0x4
soundblaster_irq: /* 542a4 */
		.fill   0x4
data_542a8:
		.fill   0x4
soundblaster_adr_is_not_zero: /* 542ac */
		.fill   0x4
data_542b0:
		.fill   0x4
soundblaster_adr: /* 542b4 */
		.fill   0x4
data_542b8:
		.fill   0x4
data_542bc:
		.ascii  "\x00\x00"
data_542be:
		.fill   0x4
data_542c2:
		.ascii  "\x00\x00"
data_542c4:
		.fill   0x5
data_542c9:
		.ascii  "\x00\x00\x00"
data_542cc:
		.fill   0x4
data_542d0:
		.fill   0x4
data_542d4:
		.fill   0x4
data_542d8:
		.ascii  "\x00\x00"
data_542da:
		.ascii  "\x00\x00"
data_542dc:
		.fill   0x4
data_542e0:
		.fill   0x4
data_542e4:
		.fill   0x4
data_542e8:
		.fill   0x4
data_542ec:
		.fill   0x1004
