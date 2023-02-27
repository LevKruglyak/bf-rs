.section __TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90
bf_rs::main:
Lfunc_begin31:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception3
	push rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov rbp, rsp
	.cfi_def_cfa_register rbp
	push r15
	push r14
	push r13
	push r12
	push rbx
	mov eax, 131320
	call ___rust_probestack
	sub rsp, rax
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	lea rdi, [rbp - 104]
	call std::env::args
	mov rax, qword ptr [rbp - 80]
	mov qword ptr [rbp - 131328], rax
	mov rax, qword ptr [rbp - 88]
	mov qword ptr [rbp - 131336], rax
	mov rax, qword ptr [rbp - 104]
	mov rcx, qword ptr [rbp - 96]
	mov qword ptr [rbp - 131344], rcx
	mov qword ptr [rbp - 131352], rax
	lea rdi, [rbp - 72]
	lea rsi, [rbp - 131352]
	call <std::env::Args as core::iter::traits::iterator::Iterator>::next
	cmp qword ptr [rbp - 64], 0
	je LBB31_171
	mov rax, qword ptr [rbp - 56]
	mov qword ptr [rbp - 160], rax
	mov rax, qword ptr [rbp - 72]
	mov rcx, qword ptr [rbp - 64]
	mov qword ptr [rbp - 168], rcx
	mov qword ptr [rbp - 176], rax
	lea rdi, [rbp - 65808]
	lea rsi, [rbp - 131352]
	call <std::env::Args as core::iter::traits::iterator::Iterator>::size_hint
	mov rax, qword ptr [rbp - 65808]
	inc rax
	mov rcx, -1
	cmovne rcx, rax
	cmp rcx, 5
	mov r12d, 4
	cmovae r12, rcx
	movabs rax, 384307168202282326
	dec rax
	xor r14d, r14d
	cmp r12, rax
	setbe al
	ja LBB31_216
	lea rcx, [8*r12]
	mov r14b, al
	shl r14, 3
	lea r15, [rcx + 2*rcx]
	test r15, r15
	je LBB31_28
	mov rdi, r15
	mov rsi, r14
	call ___rust_alloc
	mov rbx, rax
	test rbx, rbx
	je LBB31_29
LBB31_6:
	mov rax, qword ptr [rbp - 56]
	mov qword ptr [rbx + 16], rax
	mov rax, qword ptr [rbp - 72]
	mov rcx, qword ptr [rbp - 64]
	mov qword ptr [rbx + 8], rcx
	mov qword ptr [rbx], rax
	mov qword ptr [rbp - 200], r12
	mov qword ptr [rbp - 192], rbx
	mov qword ptr [rbp - 184], 1
	mov rax, qword ptr [rbp - 131328]
	mov qword ptr [rbp - 65784], rax
	mov rax, qword ptr [rbp - 131336]
	mov qword ptr [rbp - 65792], rax
	mov rax, qword ptr [rbp - 131352]
	mov rcx, qword ptr [rbp - 131344]
	mov qword ptr [rbp - 65800], rcx
	mov qword ptr [rbp - 65808], rax
	mov r13d, 2
	mov r14d, 24
	lea r15, [rbp - 65808]
	jmp LBB31_9
	.p2align	4, 0x90
LBB31_7:
	mov rbx, qword ptr [rbp - 192]
LBB31_8:
	mov rax, qword ptr [rbp - 136]
	mov qword ptr [rbx + r14 + 16], rax
	mov rax, qword ptr [rbp - 152]
	mov rcx, qword ptr [rbp - 144]
	mov qword ptr [rbx + r14 + 8], rcx
	mov qword ptr [rbx + r14], rax
	mov qword ptr [rbp - 184], r13
	inc r13
	add r14, 24
LBB31_9:
	lea rdi, [rbp - 152]
	mov rsi, r15
	call <std::env::Args as core::iter::traits::iterator::Iterator>::next
	cmp qword ptr [rbp - 144], 0
	je LBB31_14
	lea r12, [r13 - 1]
	mov rax, qword ptr [rbp - 136]
	mov qword ptr [rbp - 56], rax
	mov rax, qword ptr [rbp - 152]
	mov rcx, qword ptr [rbp - 144]
	mov qword ptr [rbp - 64], rcx
	mov qword ptr [rbp - 72], rax
	cmp r12, qword ptr [rbp - 200]
	jne LBB31_8
	lea rdi, [rbp - 176]
	mov rsi, r15
	call <std::env::Args as core::iter::traits::iterator::Iterator>::size_hint
	mov rdx, qword ptr [rbp - 176]
	inc rdx
	mov rax, -1
	cmove rdx, rax
	lea rdi, [rbp - 200]
	mov rsi, r12
	call alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle
	jmp LBB31_7
LBB31_14:
	mov r15, qword ptr [rbp - 65800]
	mov rcx, qword ptr [rbp - 65792]
	mov rax, rcx
	sub rax, r15
	movabs rdx, -6148914691236517205
	mul rdx
	cmp rcx, r15
	je LBB31_19
	shr rdx, 4
	shl rdx, 3
	lea r14, [rdx + 2*rdx]
	xor ebx, ebx
	jmp LBB31_17
	.p2align	4, 0x90
LBB31_16:
	add rbx, 24
	cmp r14, rbx
	je LBB31_19
LBB31_17:
	mov rsi, qword ptr [r15 + rbx]
	test rsi, rsi
	je LBB31_16
	mov rdi, qword ptr [r15 + rbx + 8]
	mov rdx, rsi
	not rdx
	shr rdx, 63
	call ___rust_dealloc
	jmp LBB31_16
LBB31_19:
	mov rax, qword ptr [rbp - 65808]
	test rax, rax
	je LBB31_21
	mov rdi, qword ptr [rbp - 65784]
	shl rax, 3
	lea rsi, [rax + 2*rax]
	mov edx, 8
	call ___rust_dealloc
LBB31_21:
	mov rax, qword ptr [rbp - 200]
	mov r12, qword ptr [rbp - 192]
	mov qword ptr [rbp - 224], rax
	mov qword ptr [rbp - 216], r12
	mov r15, qword ptr [rbp - 184]
	mov qword ptr [rbp - 208], r15
	mov qword ptr [rbp - 152], 0
	mov qword ptr [rbp - 144], 1
	mov qword ptr [rbp - 136], 0
	lea rax, [r12 + 24]
	xor r14d, r14d
	cmp r15, 2
	cmovae r14, rax
	jb LBB31_175
	lea rdi, [rbp - 104]
	call std::fs::OpenOptions::new
	lea rdi, [rbp - 104]
	mov esi, 1
	call std::fs::OpenOptions::read
	mov rdx, qword ptr [r14 + 8]
	mov rcx, qword ptr [r14 + 16]
	lea rdi, [rbp - 65808]
	mov rsi, rax
	call std::fs::OpenOptions::_open
	cmp dword ptr [rbp - 65808], 0
	je LBB31_30
	mov rbx, qword ptr [rbp - 65800]
	mov qword ptr [rbp - 65808], rbx
	mov edi, 8
	mov esi, 8
	call ___rust_alloc
	test rax, rax
	je LBB31_176
	mov r14, rax
	mov qword ptr [rax], rbx
	jmp LBB31_34
LBB31_28:
	mov rbx, r14
	test rbx, rbx
	jne LBB31_6
LBB31_29:
	mov rdi, r15
	mov rsi, r14
	call alloc::alloc::handle_alloc_error
	jmp LBB31_217
LBB31_30:
	mov eax, dword ptr [rbp - 65804]
	mov dword ptr [rbp - 176], eax
	lea rdi, [rbp - 131352]
	lea rsi, [rbp - 176]
	lea rdx, [rbp - 152]
	call <std::fs::File as std::io::Read>::read_to_string
	cmp qword ptr [rbp - 131352], 0
	je LBB31_42
	mov rbx, qword ptr [rbp - 131344]
	mov qword ptr [rbp - 65808], rbx
	mov edi, 8
	mov esi, 8
	call ___rust_alloc
	test rax, rax
	je LBB31_181
	mov r14, rax
	mov qword ptr [rax], rbx
	mov edi, dword ptr [rbp - 176]
	call _close$NOCANCEL
LBB31_34:
	mov rsi, qword ptr [rbp - 152]
	test rsi, rsi
	je LBB31_36
	mov rdi, qword ptr [rbp - 144]
	mov rdx, rsi
	not rdx
	shr rdx, 63
	call ___rust_dealloc
LBB31_36:
	shl r15, 3
	lea r15, [r15 + 2*r15]
	xor ebx, ebx
	jmp LBB31_38
	.p2align	4, 0x90
LBB31_37:
	add rbx, 24
	cmp r15, rbx
	je LBB31_40
LBB31_38:
	mov rsi, qword ptr [r12 + rbx]
	test rsi, rsi
	je LBB31_37
	mov rdi, qword ptr [r12 + rbx + 8]
	mov rdx, rsi
	not rdx
	shr rdx, 63
	call ___rust_dealloc
	jmp LBB31_37
LBB31_40:
	mov rax, qword ptr [rbp - 224]
	test rax, rax
	je LBB31_301
	shl rax, 3
	lea rsi, [rax + 2*rax]
	mov edx, 8
	mov rdi, r12
	call ___rust_dealloc
	jmp LBB31_301
LBB31_42:
	mov edi, dword ptr [rbp - 176]
	call _close$NOCANCEL
	cmp r15, 2
	jbe LBB31_47
	cmp qword ptr [r12 + 64], 3
	jne LBB31_183
	mov rax, qword ptr [r12 + 56]
	movzx ecx, word ptr [rax]
	xor ecx, 20269
	movzx edx, byte ptr [rax + 2]
	xor edx, 48
	or dx, cx
	je LBB31_61
	movzx ecx, word ptr [rax]
	xor ecx, 20269
	movzx eax, byte ptr [rax + 2]
	xor eax, 49
	or ax, cx
	jne LBB31_183
LBB31_47:
	xor ebx, ebx
LBB31_48:
	call std::time::Instant::now
	mov qword ptr [rbp - 200], rax
	test bl, bl
	je LBB31_54
	mov rbx, qword ptr [rbp - 144]
	mov r14, qword ptr [rbp - 136]
	mov r15d, 65536
	mov edi, 65536
	mov esi, 1
	call ___rust_alloc_zeroed
	test rax, rax
	je LBB31_184
	mov qword ptr [rbp - 131352], 65536
	mov qword ptr [rbp - 131344], rax
	movaps xmm0, xmmword ptr [rip + LCPI31_0]
	movups xmmword ptr [rbp - 131336], xmm0
	mov qword ptr [rbp - 131320], 1
	mov qword ptr [rbp - 131312], 0
	mov dword ptr [rbp - 131304], 0
	test r14, r14
	je LBB31_71
	mov rsi, rbx
	movzx edi, byte ptr [rbx]
	test dil, dil
	js LBB31_68
	lea r12, [rsi + 1]
	jmp LBB31_75
LBB31_54:
	mov r14, qword ptr [rbp - 144]
	mov rbx, qword ptr [rbp - 136]
	add rbx, r14
	lea rdi, [rbp - 131352]
	mov esi, 65544
	call ___bzero
	mov qword ptr [rbp - 72], rbx
	mov qword ptr [rbp - 64], r14
	lea rdi, [rbp - 72]
	call <core::iter::adapters::filter_map::FilterMap<I,F> as core::iter::traits::iterator::Iterator>::next
	cmp al, 6
	jne LBB31_56
	mov qword ptr [rbp - 176], 0
	mov qword ptr [rbp - 168], 1
	mov qword ptr [rbp - 160], 0
	mov eax, 1
	mov qword ptr [rbp - 128], rax
	xor eax, eax
	jmp LBB31_59
LBB31_56:
	mov ebx, eax
	mov r12d, edx
	mov r13, qword ptr [rbp - 72]
	mov r15d, 8
	mov edi, 8
	mov esi, 1
	call ___rust_alloc
	test rax, rax
	je LBB31_184
	mov r14, rax
	mov byte ptr [rax], bl
	mov byte ptr [rax + 1], r12b
	mov qword ptr [rbp - 65808], 4
	mov qword ptr [rbp - 65800], rax
	mov qword ptr [rbp - 65792], 1
	mov rax, qword ptr [rbp - 64]
	mov qword ptr [rbp - 104], r13
	mov qword ptr [rbp - 96], rax
	lea rdi, [rbp - 104]
	call <core::iter::adapters::filter_map::FilterMap<I,F> as core::iter::traits::iterator::Iterator>::next
	cmp al, 6
	jne LBB31_63
LBB31_58:
	mov rax, qword ptr [rbp - 65808]
	mov rcx, qword ptr [rbp - 65800]
	mov qword ptr [rbp - 176], rax
	mov qword ptr [rbp - 128], rcx
	mov qword ptr [rbp - 168], rcx
	mov rax, qword ptr [rbp - 65792]
	mov qword ptr [rbp - 160], rax
LBB31_59:
	mov qword ptr [rbp - 72], 0
	mov qword ptr [rbp - 64], 4
	mov qword ptr [rbp - 56], 0
	mov qword ptr [rbp - 104], 0
	mov qword ptr [rbp - 96], 8
	mov qword ptr [rbp - 88], 0
	test rax, rax
	je LBB31_62
	lea rcx, [rax - 1]
	mov qword ptr [rbp - 232], rcx
	mov qword ptr [rbp - 120], rax
	add rax, -2
	mov qword ptr [rbp - 112], rax
	mov eax, 8
	mov qword ptr [rbp - 240], rax
	mov r13d, 4
	xor r15d, r15d
	mov rdx, qword ptr [rbp - 128]
	movzx eax, byte ptr [rdx]
	lea rsi, [rip + LJTI31_0]
	movsxd rcx, dword ptr [rsi + 4*rax]
	add rcx, rsi
	mov rax, rdx
	xor r12d, r12d
	xor r14d, r14d
	jmp rcx
LBB31_61:
	mov bl, 1
	jmp LBB31_48
LBB31_62:
	xor r14d, r14d
	jmp LBB31_230
LBB31_63:
	mov r13d, eax
	mov r12d, edx
	mov ebx, 1
	lea r15, [rbp - 104]
	jmp LBB31_66
	.p2align	4, 0x90
LBB31_64:
	mov r14, qword ptr [rbp - 65800]
LBB31_65:
	mov byte ptr [r14 + 2*rbx], r13b
	mov byte ptr [r14 + 2*rbx + 1], r12b
	inc rbx
	mov qword ptr [rbp - 65792], rbx
	mov rdi, r15
	call <core::iter::adapters::filter_map::FilterMap<I,F> as core::iter::traits::iterator::Iterator>::next
	mov r13d, eax
	mov r12d, edx
	cmp al, 6
	je LBB31_58
LBB31_66:
	cmp rbx, qword ptr [rbp - 65808]
	jne LBB31_65
	mov edx, 1
	lea rdi, [rbp - 65808]
	mov rsi, rbx
	call alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle
	jmp LBB31_64
LBB31_68:
	mov eax, edi
	and eax, 31
	movzx edx, byte ptr [rsi + 1]
	and edx, 63
	cmp dil, -33
	jbe LBB31_72
	movzx ecx, byte ptr [rsi + 2]
	shl edx, 6
	and ecx, 63
	or ecx, edx
	cmp dil, -16
	jb LBB31_73
	movzx edi, byte ptr [rsi + 3]
	and eax, 7
	shl eax, 18
	shl ecx, 6
	and edi, 63
	or edi, ecx
	or edi, eax
	cmp edi, 1114112
	jne LBB31_74
LBB31_71:
	mov ecx, 4
	xor r13d, r13d
	xor r14d, r14d
	jmp LBB31_95
LBB31_72:
	lea r12, [rsi + 2]
	shl eax, 6
	or eax, edx
	mov edi, eax
	jmp LBB31_75
LBB31_73:
	lea r12, [rsi + 3]
	shl eax, 12
	or ecx, eax
	mov edi, ecx
	jmp LBB31_75
LBB31_74:
	mov rsi, rbx
	lea r12, [rbx + 4]
LBB31_75:
	movabs rax, 2305843009213693950
	add rsi, r14
	mov qword ptr [rbp - 120], rsi
	lea rcx, [rsi + 3]
	mov qword ptr [rbp - 112], rcx
	sub rcx, r12
	shr rcx, 2
	cmp rcx, 4
	mov r14d, 3
	cmovae r14, rcx
	xor r15d, r15d
	cmp r14, rax
	setbe al
	ja LBB31_185
	mov r15b, al
	shl r15, 2
	lea r13, [4*r14 + 4]
	test r13, r13
	je LBB31_78
	mov ebx, edi
	mov rdi, r13
	mov rsi, r15
	call ___rust_alloc
	mov edi, ebx
	mov rcx, rax
	jmp LBB31_79
LBB31_78:
	mov rcx, r15
LBB31_79:
	test rcx, rcx
	je LBB31_186
	inc r14
	mov dword ptr [rcx], edi
	mov qword ptr [rbp - 65808], r14
	mov qword ptr [rbp - 65800], rcx
	mov qword ptr [rbp - 65792], 1
	cmp r12, qword ptr [rbp - 120]
	je LBB31_94
	mov r13d, 1
	lea r15, [rbp - 65808]
	mov r14, qword ptr [rbp - 120]
	jmp LBB31_84
	.p2align	4, 0x90
LBB31_83:
	mov dword ptr [rcx + 4*r13], ebx
	inc r13
	mov qword ptr [rbp - 65792], r13
	cmp r12, r14
	je LBB31_93
LBB31_84:
	movzx ebx, byte ptr [r12]
	test bl, bl
	js LBB31_86
	inc r12
	cmp r13, qword ptr [rbp - 65808]
	jne LBB31_83
	jmp LBB31_91
	.p2align	4, 0x90
LBB31_86:
	mov eax, ebx
	and eax, 31
	movzx esi, byte ptr [r12 + 1]
	and esi, 63
	cmp bl, -33
	jbe LBB31_82
	movzx edx, byte ptr [r12 + 2]
	shl esi, 6
	and edx, 63
	or edx, esi
	cmp bl, -16
	jb LBB31_90
	movzx ebx, byte ptr [r12 + 3]
	and eax, 7
	shl eax, 18
	shl edx, 6
	and ebx, 63
	or ebx, edx
	or ebx, eax
	cmp ebx, 1114112
	je LBB31_93
	add r12, 4
	cmp r13, qword ptr [rbp - 65808]
	jne LBB31_83
	jmp LBB31_91
LBB31_82:
	add r12, 2
	shl eax, 6
	or eax, esi
	mov ebx, eax
	cmp r13, qword ptr [rbp - 65808]
	je LBB31_91
	jmp LBB31_83
LBB31_90:
	add r12, 3
	shl eax, 12
	or edx, eax
	mov ebx, edx
	cmp r13, qword ptr [rbp - 65808]
	jne LBB31_83
	.p2align	4, 0x90
LBB31_91:
	mov rdx, qword ptr [rbp - 112]
	sub rdx, r12
	shr rdx, 2
	inc rdx
	mov rdi, r15
	mov rsi, r13
	call alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle
	mov rcx, qword ptr [rbp - 65800]
	jmp LBB31_83
LBB31_93:
	mov r14, qword ptr [rbp - 65808]
	mov rcx, qword ptr [rbp - 65800]
	jmp LBB31_95
LBB31_94:
	mov r13d, 1
LBB31_95:
	mov rax, qword ptr [rbp - 131304]
	mov qword ptr [rbp - 65760], rax
	mov rax, qword ptr [rbp - 131312]
	mov qword ptr [rbp - 65768], rax
	mov rax, qword ptr [rbp - 131320]
	mov qword ptr [rbp - 65776], rax
	mov rax, qword ptr [rbp - 131328]
	mov qword ptr [rbp - 65784], rax
	mov rax, qword ptr [rbp - 131336]
	mov qword ptr [rbp - 65792], rax
	mov rax, qword ptr [rbp - 131352]
	mov rdx, qword ptr [rbp - 131344]
	mov qword ptr [rbp - 65800], rdx
	mov qword ptr [rbp - 65808], rax
	mov qword ptr [rbp - 65752], r14
	mov qword ptr [rbp - 65744], rcx
	mov qword ptr [rbp - 65736], r13
	call std::io::stdio::stdin
	mov rbx, rax
	call std::io::stdio::stdout
	mov qword ptr [rbp - 72], rbx
	mov qword ptr [rbp - 176], rax
	test r13, r13
	je LBB31_160
	lea r14, [rbp - 65800]
	lea r15, [rbp - 65776]
	xor r12d, r12d
	lea rbx, [rip + LJTI31_3]
	lea rax, [rip + l___unnamed_4]
	mov qword ptr [rbp - 112], rax
	lea rax, [rip + l___unnamed_5]
	mov qword ptr [rbp - 120], rax
	jmp LBB31_102
LBB31_99:
	not eax
	mov rsi, qword ptr [rbp - 65768]
	mov rcx, r15
	cmp rsi, rax
	jbe LBB31_167
LBB31_100:
	mov rcx, qword ptr [rcx]
	dec byte ptr [rcx + rax]
	.p2align	4, 0x90
LBB31_101:
	inc r12
	mov r13, qword ptr [rbp - 65736]
	cmp r12, r13
	jae LBB31_160
LBB31_102:
	mov rcx, qword ptr [rbp - 65744]
	mov eax, dword ptr [rcx + 4*r12]
	add eax, -43
	cmp eax, 50
	ja LBB31_101
	movsxd rax, dword ptr [rbx + 4*rax]
	add rax, rbx
	jmp rax

	mov eax, dword ptr [rbp - 65760]
	test eax, eax
	js LBB31_151
	mov rsi, qword ptr [rbp - 65792]
	mov rcx, r14
	cmp rsi, rax
	ja LBB31_152
	jmp LBB31_106

	mov ecx, dword ptr [rbp - 65760]
	lea eax, [rcx + 1]
	mov dword ptr [rbp - 65760], eax
	cmp ecx, 2147483646
	ja LBB31_101
	mov rsi, qword ptr [rbp - 65792]
	mov eax, eax
	cmp rsi, rax
	ja LBB31_101
	cmp rsi, -1
	je LBB31_159
	cmp qword ptr [rbp - 65808], rsi
	jne LBB31_113
	mov edx, 1
	lea rdi, [rbp - 65808]
	call alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle
	jmp LBB31_112

	mov byte ptr [rbp - 41], 0
	mov ecx, 1
	lea rdi, [rbp - 131352]
	lea rsi, [rbp - 72]
	lea rdx, [rbp - 41]
	call <std::io::stdio::Stdin as std::io::Read>::read
	cmp qword ptr [rbp - 131352], 0
	jne LBB31_182
	movzx ecx, byte ptr [rbp - 41]
	mov eax, dword ptr [rbp - 65760]
	test eax, eax
	js LBB31_157
	mov rsi, qword ptr [rbp - 65792]
	mov rdx, r14
	cmp rsi, rax
	ja LBB31_158
	jmp LBB31_106

	mov eax, dword ptr [rbp - 65760]
	test eax, eax
	js LBB31_133
	mov rsi, qword ptr [rbp - 65792]
	mov rdx, r14
	cmp rsi, rax
	ja LBB31_134
	jmp LBB31_126

	mov eax, dword ptr [rbp - 65760]
	test eax, eax
	js LBB31_142
	mov rsi, qword ptr [rbp - 65792]
	mov rdx, r14
	cmp rsi, rax
	ja LBB31_143
	jmp LBB31_126

	mov eax, dword ptr [rbp - 65760]
	test eax, eax
	js LBB31_99
	mov rsi, qword ptr [rbp - 65792]
	mov rcx, r14
	cmp rsi, rax
	ja LBB31_100
	jmp LBB31_106

	mov eax, dword ptr [rbp - 65760]
	test eax, eax
	js LBB31_153
	mov rsi, qword ptr [rbp - 65792]
	mov rcx, r14
	cmp rsi, rax
	ja LBB31_154
	jmp LBB31_126

	mov eax, dword ptr [rbp - 65760]
	mov ecx, eax
	dec ecx
	mov dword ptr [rbp - 65760], ecx
	jns LBB31_101
	neg eax
	cmp qword ptr [rbp - 65768], rax
	ja LBB31_101
	mov rsi, qword ptr [rbp - 65792]
	cmp rsi, -1
	je LBB31_159
	cmp qword ptr [rbp - 65808], rsi
	jne LBB31_113
	mov edx, 1
	lea rdi, [rbp - 65808]
	call alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle
LBB31_112:
	mov rsi, qword ptr [rbp - 65792]
LBB31_113:
	mov rax, qword ptr [rbp - 65800]
	mov byte ptr [rax + rsi], 0
	inc rsi
	mov qword ptr [rbp - 65792], rsi
	jmp LBB31_101
LBB31_133:
	not eax
	mov rsi, qword ptr [rbp - 65768]
	mov rdx, r15
	cmp rsi, rax
	jbe LBB31_166
LBB31_134:
	mov rdx, qword ptr [rdx]
	cmp byte ptr [rdx + rax], 0
	jne LBB31_101
	mov esi, 1
	jmp LBB31_138
	.p2align	4, 0x90
LBB31_136:
	inc esi
LBB31_137:
	test esi, esi
	je LBB31_101
LBB31_138:
	inc r12
	cmp r12, r13
	jae LBB31_169
	mov eax, dword ptr [rcx + 4*r12]
	cmp eax, 91
	je LBB31_136
	cmp eax, 93
	jne LBB31_137
	dec esi
	jmp LBB31_137
LBB31_142:
	not eax
	mov rsi, qword ptr [rbp - 65768]
	mov rdx, r15
	cmp rsi, rax
	jbe LBB31_166
LBB31_143:
	mov rdx, qword ptr [rdx]
	cmp byte ptr [rdx + rax], 0
	je LBB31_101
	mov eax, -1
	jmp LBB31_147
	.p2align	4, 0x90
LBB31_145:
	inc eax
LBB31_146:
	test eax, eax
	je LBB31_101
LBB31_147:
	dec r12
	cmp r12, r13
	jae LBB31_170
	mov edx, dword ptr [rcx + 4*r12]
	cmp edx, 91
	je LBB31_145
	cmp edx, 93
	jne LBB31_146
	dec eax
	jmp LBB31_146
LBB31_151:
	not eax
	mov rsi, qword ptr [rbp - 65768]
	mov rcx, r15
	cmp rsi, rax
	jbe LBB31_167
LBB31_152:
	mov rcx, qword ptr [rcx]
	inc byte ptr [rcx + rax]
	jmp LBB31_101
LBB31_153:
	not eax
	mov rsi, qword ptr [rbp - 65768]
	mov rcx, r15
	cmp rsi, rax
	jbe LBB31_166
LBB31_154:
	mov rcx, qword ptr [rcx]
	movzx eax, byte ptr [rcx + rax]
	mov byte ptr [rbp - 41], al
	mov ecx, 1
	lea rdi, [rbp - 131352]
	lea rsi, [rbp - 176]
	lea rdx, [rbp - 41]
	call <std::io::stdio::Stdout as std::io::Write>::write
	cmp qword ptr [rbp - 131352], 0
	je LBB31_101
	jmp LBB31_156
LBB31_157:
	not eax
	mov rsi, qword ptr [rbp - 65768]
	mov rdx, r15
	cmp rsi, rax
	jbe LBB31_167
LBB31_158:
	mov rdx, qword ptr [rdx]
	mov byte ptr [rdx + rax], cl
	jmp LBB31_101
LBB31_159:
	xor esi, esi
	mov qword ptr [rbp - 65792], rsi
	jmp LBB31_101
LBB31_160:
	mov rsi, qword ptr [rbp - 65808]
	test rsi, rsi
	je LBB31_162
	mov rdi, qword ptr [rbp - 65800]
	mov rdx, rsi
	not rdx
	shr rdx, 63
	call ___rust_dealloc
LBB31_162:
	mov rsi, qword ptr [rbp - 65784]
	test rsi, rsi
	lea rbx, [rbp - 104]
	lea r14, [rbp - 131352]
	je LBB31_164
	mov rdi, qword ptr [rbp - 65776]
	mov rdx, rsi
	not rdx
	shr rdx, 63
	call ___rust_dealloc
LBB31_164:
	mov rsi, qword ptr [rbp - 65752]
	test rsi, rsi
	je LBB31_289
	mov rdi, qword ptr [rbp - 65744]
	shl rsi, 2
	mov edx, 4
	call ___rust_dealloc
	jmp LBB31_289
LBB31_126:
	lea rdx, [rip + l___unnamed_6]
	jmp LBB31_168
LBB31_106:
	lea rdx, [rip + l___unnamed_7]
	jmp LBB31_168
LBB31_166:
	lea rdx, [rip + l___unnamed_8]
	jmp LBB31_168
LBB31_167:
	lea rdx, [rip + l___unnamed_9]
LBB31_168:
	mov edi, eax
	call core::panicking::panic_bounds_check
	jmp LBB31_217
LBB31_169:
	lea rax, [rip + l___unnamed_10]
	mov qword ptr [rbp - 120], rax
	lea rax, [rip + l___unnamed_11]
	mov qword ptr [rbp - 112], rax
LBB31_170:
	mov esi, 23
	mov rdi, qword ptr [rbp - 120]
	mov rdx, qword ptr [rbp - 112]
	call core::option::expect_failed
	jmp LBB31_217
LBB31_171:
	mov r15, qword ptr [rbp - 131344]
	mov rcx, qword ptr [rbp - 131336]
	mov rax, rcx
	sub rax, r15
	movabs rdx, -6148914691236517205
	mul rdx
	mov qword ptr [rbp - 224], 0
	mov qword ptr [rbp - 216], 8
	mov qword ptr [rbp - 208], 0
	cmp rcx, r15
	jne LBB31_177
LBB31_172:
	mov rax, qword ptr [rbp - 131352]
	test rax, rax
	je LBB31_174
	mov rdi, qword ptr [rbp - 131328]
	shl rax, 3
	lea rsi, [rax + 2*rax]
	mov edx, 8
	call ___rust_dealloc
LBB31_174:
	mov qword ptr [rbp - 152], 0
	mov qword ptr [rbp - 144], 1
	mov qword ptr [rbp - 136], 0
LBB31_175:
	lea rdi, [rip + l___unnamed_12]
	lea rdx, [rip + l___unnamed_13]
	mov esi, 17
	call core::option::expect_failed
	jmp LBB31_217
LBB31_216:
	call alloc::raw_vec::capacity_overflow
	jmp LBB31_217
LBB31_176:
	mov edi, 8
	mov esi, 8
	call alloc::alloc::handle_alloc_error
	jmp LBB31_217
LBB31_177:
	shr rdx, 4
	shl rdx, 3
	lea r14, [rdx + 2*rdx]
	xor ebx, ebx
	jmp LBB31_179
	.p2align	4, 0x90
LBB31_178:
	add rbx, 24
	cmp r14, rbx
	je LBB31_172
LBB31_179:
	mov rsi, qword ptr [r15 + rbx]
	test rsi, rsi
	je LBB31_178
	mov rdi, qword ptr [r15 + rbx + 8]
	mov rdx, rsi
	not rdx
	shr rdx, 63
	call ___rust_dealloc
	jmp LBB31_178
LBB31_181:
	mov edi, 8
	mov esi, 8
	call alloc::alloc::handle_alloc_error
	jmp LBB31_217
LBB31_182:
	mov rax, qword ptr [rbp - 131344]
	mov qword ptr [rbp - 104], rax
	xor edi, edi
	call std::process::exit
	jmp LBB31_217
LBB31_156:
	mov rax, qword ptr [rbp - 131344]
	mov qword ptr [rbp - 104], rax
	xor edi, edi
	call std::process::exit
	jmp LBB31_217
LBB31_183:
	lea rax, [rip + l___unnamed_14]
	mov qword ptr [rbp - 65792], rax
	mov qword ptr [rbp - 65784], 1
	mov qword ptr [rbp - 65808], 0
	lea rax, [rip + l___unnamed_15]
	mov qword ptr [rbp - 65776], rax
	mov qword ptr [rbp - 65768], 0
	lea rsi, [rip + l___unnamed_16]
	lea rdi, [rbp - 65808]
	call core::panicking::panic_fmt
	jmp LBB31_217
LBB31_184:
	mov esi, 1
	mov rdi, r15
	call alloc::alloc::handle_alloc_error
	jmp LBB31_217
LBB31_185:
	call alloc::raw_vec::capacity_overflow
	jmp LBB31_217
LBB31_186:
	mov rdi, r13
	mov rsi, r15
	call alloc::alloc::handle_alloc_error
	jmp LBB31_217

	mov rbx, rax
	jmp LBB31_200

	mov rbx, rax
	lea rdi, [rbp - 104]
	call core::ptr::drop_in_place<std::io::error::Error>
	jmp LBB31_215

	call core::panicking::panic_cannot_unwind

	mov rbx, rax
	lea rdi, [rbp - 104]
	call core::ptr::drop_in_place<std::io::error::Error>
	jmp LBB31_215

	call core::panicking::panic_cannot_unwind

	mov rbx, rax
	lea rdi, [rbp - 65808]
	call core::ptr::drop_in_place<std::io::error::Error>
	jmp LBB31_198

	call core::panicking::panic_cannot_unwind

	mov rbx, rax
	lea rdi, [rbp - 65808]
	call core::ptr::drop_in_place<alloc::vec::Vec<bf_rs::parser::TokenPrimitive>>
	jmp LBB31_219

	call core::panicking::panic_cannot_unwind

	jmp LBB31_214

	mov rbx, rax
LBB31_198:
	mov edi, dword ptr [rbp - 176]
	call core::ptr::drop_in_place<std::fs::File>
	jmp LBB31_219

	mov rbx, rax
	lea rdi, [rbp - 65808]
	call core::ptr::drop_in_place<alloc::vec::Vec<char>>
LBB31_200:
	lea rdi, [rbp - 131352]
	call core::ptr::drop_in_place<bf_rs::state::InfiniteState<u8>>
	jmp LBB31_219

	call core::panicking::panic_cannot_unwind

	call core::panicking::panic_cannot_unwind

	mov rbx, rax
	lea rdi, [rbp - 65808]
	call core::ptr::drop_in_place<std::io::error::Error>
	jmp LBB31_219

	call core::panicking::panic_cannot_unwind

	mov rbx, rax
	jmp LBB31_207

	mov rbx, rax
	lea rdi, [rbp - 176]
	call core::ptr::drop_in_place<alloc::string::String>
LBB31_207:
	lea rdi, [rbp - 131352]
	call core::ptr::drop_in_place<std::env::Args>
	mov rdi, rbx
	call __Unwind_Resume

	mov rbx, rax
	lea rdi, [rbp - 72]
	call core::ptr::drop_in_place<alloc::string::String>
	jmp LBB31_210

	mov rbx, rax
LBB31_210:
	lea rdi, [rbp - 65808]
	call core::ptr::drop_in_place<std::env::Args>
	lea rdi, [rbp - 200]
	call core::ptr::drop_in_place<alloc::vec::Vec<alloc::string::String>>
	jmp LBB31_211

	call core::panicking::panic_cannot_unwind

LBB31_214:
	mov rbx, rax
LBB31_215:
	lea rdi, [rbp - 65808]
	call core::ptr::drop_in_place<bf_rs::simple::SimpleInterpreter<bf_rs::state::InfiniteState<u8>>>
	jmp LBB31_219
LBB31_211:
	mov rdi, rbx
	call __Unwind_Resume
LBB31_217:
	ud2

	mov rbx, rax
LBB31_219:
	lea rdi, [rbp - 152]
	call core::ptr::drop_in_place<alloc::string::String>
	lea rdi, [rbp - 224]
	call core::ptr::drop_in_place<alloc::vec::Vec<alloc::string::String>>
	jmp LBB31_211

	call core::panicking::panic_cannot_unwind

	jmp LBB31_223

LBB31_223:
	mov rbx, rax
	mov rdi, qword ptr [rbp - 104]
	mov rsi, qword ptr [rbp - 96]
	call core::ptr::drop_in_place<alloc::vec::Vec<usize>>
	lea rdi, [rbp - 72]
	call core::ptr::drop_in_place<alloc::vec::Vec<bf_rs::optimizer::TokenOptimized>>
	lea rdi, [rbp - 176]
	call core::ptr::drop_in_place<alloc::vec::Vec<bf_rs::parser::TokenPrimitive>>
	jmp LBB31_219

	call core::panicking::panic_cannot_unwind
LBB31_227:
	cmp qword ptr [rbp - 88], 0
	jne LBB31_312
	mov rsi, qword ptr [rbp - 104]
	test rsi, rsi
	je LBB31_230
	mov rdi, qword ptr [rbp - 96]
	shl rsi, 3
	mov edx, 8
	call ___rust_dealloc
LBB31_230:
	mov rsi, qword ptr [rbp - 176]
	test rsi, rsi
	je LBB31_232
	xor edx, edx
	mov rax, rsi
	shr rax, 62
	sete dl
	add rsi, rsi
	mov rdi, qword ptr [rbp - 128]
	call ___rust_dealloc
LBB31_232:
	mov qword ptr [rbp - 104], 0
	mov qword ptr [rbp - 96], 4
	mov qword ptr [rbp - 88], 0
	mov r12, qword ptr [rbp - 64]
	test r14, r14
	je LBB31_250
	mov ecx, 4
	xor esi, esi
	lea r13, [rbp - 104]
	mov rdi, r12
	xor r15d, r15d
	.p2align	4, 0x90
LBB31_234:
	lea rax, [r15 + 3]
	cmp r15, -3
	setae dl
	cmp rax, r14
	seta bl
	or bl, dl
	mov eax, 0
	cmove rax, rdi
	cmp bl, 1
	je LBB31_245
	cmp byte ptr [rax], 4
	jne LBB31_245
	cmp byte ptr [rax + 8], 1
	jne LBB31_245
	cmp byte ptr [rax + 16], 5
	jne LBB31_245
	cmp dword ptr [rax + 4], 2
	jne LBB31_245
	cmp dword ptr [rax + 20], 2
	jne LBB31_245
	test byte ptr [rax + 9], 1
	jne LBB31_256
	cmp rsi, qword ptr [rbp - 104]
	jne LBB31_244
	mov rdi, r13
	call alloc::raw_vec::RawVec<T,A>::reserve_for_push
	mov rsi, qword ptr [rbp - 88]
LBB31_244:
	mov rcx, qword ptr [rbp - 96]
	mov qword ptr [rcx + 8*rsi], 774
	jmp LBB31_260
	.p2align	4, 0x90
LBB31_245:
	mov rbx, qword ptr [rdi]
	cmp rsi, qword ptr [rbp - 104]
	jne LBB31_248
	mov rdi, r13
	call alloc::raw_vec::RawVec<T,A>::reserve_for_push
	mov rsi, qword ptr [rbp - 88]
LBB31_248:
	mov rcx, qword ptr [rbp - 96]
	mov qword ptr [rcx + 8*rsi], rbx
	inc rsi
	mov qword ptr [rbp - 88], rsi
LBB31_249:
	lea rdi, [r12 + 8*r15 + 8]
	lea rax, [r15 + 1]
	mov r15, rax
	cmp rax, r14
	jb LBB31_234
	jmp LBB31_250
LBB31_256:
	cmp rsi, qword ptr [rbp - 104]
	jne LBB31_259
	mov rdi, r13
	call alloc::raw_vec::RawVec<T,A>::reserve_for_push
	mov rcx, qword ptr [rbp - 96]
	mov rsi, qword ptr [rbp - 88]
LBB31_259:
	mov qword ptr [rcx + 8*rsi], 262
LBB31_260:
	inc rsi
	mov qword ptr [rbp - 88], rsi
	add r15, 2
	jmp LBB31_249
LBB31_250:
	mov rsi, qword ptr [rbp - 72]
	test rsi, rsi
	je LBB31_252
	shl rsi, 3
	mov edx, 4
	mov rdi, r12
	call ___rust_dealloc
LBB31_252:
	lea rdi, [rbp - 65808]
	lea rsi, [rbp - 131352]
	mov edx, 65544
	call _memcpy
	mov rax, qword ptr [rbp - 104]
	mov rcx, qword ptr [rbp - 96]
	mov qword ptr [rbp - 264], rax
	mov qword ptr [rbp - 256], rcx
	mov rax, qword ptr [rbp - 88]
	mov qword ptr [rbp - 248], rax
	call std::io::stdio::stdin
	mov rbx, rax
	call std::io::stdio::stdout
	mov qword ptr [rbp - 72], rbx
	mov qword ptr [rbp - 176], rax
	cmp qword ptr [rbp - 248], 0
	je LBB31_286
	xor r15d, r15d
	lea r13, [rip + LJTI31_1]
	lea rbx, [rbp - 131352]
	lea rax, [rip + l___unnamed_17]
	mov qword ptr [rbp - 112], rax
	lea r12, [rbp - 176]
	lea r14, [rip + LJTI31_2]
	jmp LBB31_263

	add qword ptr [rbp - 272], rax
	.p2align	4, 0x90
LBB31_262:
	inc r15
	cmp r15, qword ptr [rbp - 248]
	jae LBB31_286
LBB31_263:
	mov rdx, qword ptr [rbp - 256]
	movzx esi, byte ptr [rdx + 8*r15]
	movzx ecx, byte ptr [rdx + 8*r15 + 1]
	movsxd rax, dword ptr [rdx + 8*r15 + 4]
	movsxd rsi, dword ptr [r13 + 4*rsi]
	add rsi, r13
	jmp rsi

	mov rdi, qword ptr [rbp - 272]
	cmp rdi, 65536
	jae LBB31_302
	add byte ptr [rbp + rdi - 65808], cl
	jmp LBB31_262

	mov rdi, qword ptr [rbp - 272]
	cmp rdi, 65535
	ja LBB31_302
	cmp byte ptr [rbp + rdi - 65808], 0
	mov eax, eax
	cmove r15, rax
	jmp LBB31_262

	mov rcx, qword ptr [rbp - 272]
	mov rax, rcx
	inc rax
	je LBB31_307
	cmp rax, 65536
	ja LBB31_305
	lea rdx, [rbp + rcx - 65808]
	mov ecx, 1
	mov rdi, rbx
	lea rsi, [rbp - 72]
	call <std::io::stdio::Stdin as std::io::Read>::read
	cmp qword ptr [rbp - 131352], 0
	je LBB31_262
	jmp LBB31_272

	mov rcx, qword ptr [rbp - 272]
	mov rax, rcx
	inc rax
	je LBB31_308
	cmp rax, 65536
	ja LBB31_306
	lea rdx, [rbp + rcx - 65808]
	mov ecx, 1
	mov rdi, rbx
	mov rsi, r12
	call <std::io::stdio::Stdout as std::io::Write>::write
	cmp qword ptr [rbp - 131352], 0
	je LBB31_262
	jmp LBB31_277

	mov rdi, qword ptr [rbp - 272]
	cmp rdi, 65535
	ja LBB31_302
	cmp byte ptr [rbp + rdi - 65808], 0
	mov eax, eax
	cmovne r15, rax
	jmp LBB31_262

	movzx eax, byte ptr [rdx + 8*r15 + 2]
	mov ecx, ecx
	movsxd rcx, dword ptr [r14 + 4*rcx]
	add rcx, r14
	jmp rcx

	mov rdi, qword ptr [rbp - 272]
	cmp rdi, 65535
	ja LBB31_304
	mov byte ptr [rbp + rdi - 65808], al
	jmp LBB31_262

	mov rdi, qword ptr [rbp - 272]
	cmp rdi, 65535
	ja LBB31_302
	cmp byte ptr [rbp + rdi - 65808], al
	je LBB31_262
	lea rax, [rip + l___unnamed_18]
	mov qword ptr [rbp - 131336], rax
	mov qword ptr [rbp - 131328], 1
	mov qword ptr [rbp - 131352], 0
	lea rsi, [rip + l___unnamed_19]
	jmp LBB31_311
LBB31_286:
	mov rsi, qword ptr [rbp - 264]
	test rsi, rsi
	je LBB31_288
	mov rdi, qword ptr [rbp - 256]
	shl rsi, 3
	mov edx, 4
	call ___rust_dealloc
LBB31_288:
	lea rbx, [rbp - 104]
	lea r14, [rbp - 131352]
LBB31_289:
	lea rdi, [rbp - 200]
	call std::time::Instant::elapsed
	mov ecx, edx
	mov edx, 1000000000
	mul rdx
	mov edi, ecx
	add rdi, rax
	adc rdx, 0
	mov rsi, rdx
	call ___floattisf
	divss xmm0, dword ptr [rip + LCPI31_1]
	movss dword ptr [rbp - 104], xmm0
	mov qword ptr [rbp - 131352], rbx
	mov rax, qword ptr [rip + core::fmt::float::<impl core::fmt::Display for f32>::fmt@GOTPCREL]
	mov qword ptr [rbp - 131344], rax
	lea rax, [rip + l___unnamed_20]
	mov qword ptr [rbp - 65792], rax
	mov qword ptr [rbp - 65784], 2
	mov qword ptr [rbp - 65808], 0
	mov qword ptr [rbp - 65776], r14
	mov qword ptr [rbp - 65768], 1
	lea rdi, [rbp - 65808]
	call std::io::stdio::_print
	mov rsi, qword ptr [rbp - 152]
	test rsi, rsi
	je LBB31_293
	mov rdi, qword ptr [rbp - 144]
	mov rdx, rsi
	not rdx
	shr rdx, 63
	call ___rust_dealloc
LBB31_293:
	mov r15, qword ptr [rbp - 216]
	mov rax, qword ptr [rbp - 208]
	test rax, rax
	je LBB31_298
	shl rax, 3
	lea r14, [rax + 2*rax]
	xor ebx, ebx
	jmp LBB31_296
	.p2align	4, 0x90
LBB31_295:
	add rbx, 24
	cmp r14, rbx
	je LBB31_298
LBB31_296:
	mov rsi, qword ptr [r15 + rbx]
	test rsi, rsi
	je LBB31_295
	mov rdi, qword ptr [r15 + rbx + 8]
	mov rdx, rsi
	not rdx
	shr rdx, 63
	call ___rust_dealloc
	jmp LBB31_295
LBB31_298:
	mov rax, qword ptr [rbp - 224]
	test rax, rax
	je LBB31_300
	shl rax, 3
	lea rsi, [rax + 2*rax]
	mov edx, 8
	mov rdi, r15
	call ___rust_dealloc
LBB31_300:
	xor r14d, r14d
LBB31_301:
	lea rdx, [rip + l___unnamed_1]
	mov rax, r14
	add rsp, 131320
	pop rbx
	pop r12
	pop r13
	pop r14
	pop r15
	pop rbp
	ret
LBB31_302:
	lea rdx, [rip + l___unnamed_21]
LBB31_303:
	mov esi, 65536
	call core::panicking::panic_bounds_check
	jmp LBB31_217
LBB31_304:
	lea rdx, [rip + l___unnamed_22]
	jmp LBB31_303
LBB31_277:
	mov rax, qword ptr [rbp - 131344]
	mov qword ptr [rbp - 104], rax
	xor edi, edi
	call std::process::exit
	jmp LBB31_217
LBB31_272:
	mov rax, qword ptr [rbp - 131344]
	mov qword ptr [rbp - 104], rax
	xor edi, edi
	call std::process::exit
	jmp LBB31_217
LBB31_305:
	lea rcx, [rip + l___unnamed_23]
	mov qword ptr [rbp - 112], rcx
LBB31_306:
	mov esi, 65536
	mov rdi, rax
	mov rdx, qword ptr [rbp - 112]
	call core::slice::index::slice_end_index_len_fail
	jmp LBB31_217
LBB31_307:
	lea rcx, [rip + l___unnamed_23]
	mov qword ptr [rbp - 112], rcx
LBB31_308:
	mov rdi, -1
	mov rsi, rax
	mov rdx, qword ptr [rbp - 112]
	call core::slice::index::slice_index_order_fail
	jmp LBB31_217

	lea rax, [rip + l___unnamed_24]
	mov qword ptr [rbp - 131336], rax
	mov qword ptr [rbp - 131328], 1
	mov qword ptr [rbp - 131352], 0
	lea rsi, [rip + l___unnamed_25]
	jmp LBB31_311

	lea rax, [rip + l___unnamed_26]
	mov qword ptr [rbp - 131336], rax
	mov qword ptr [rbp - 131328], 1
	mov qword ptr [rbp - 131352], 0
	lea rsi, [rip + l___unnamed_27]
LBB31_311:
	lea rax, [rip + l___unnamed_15]
	mov qword ptr [rbx + 32], rax
	mov qword ptr [rbx + 40], 0
	mov rdi, rbx
	call core::panicking::panic_fmt
	jmp LBB31_217
LBB31_312:
	lea rax, [rip + l___unnamed_28]
	mov qword ptr [rbp - 65792], rax
	mov qword ptr [rbp - 65784], 1
	mov qword ptr [rbp - 65808], 0
	lea rax, [rip + l___unnamed_15]
	mov qword ptr [rbp - 65776], rax
	mov qword ptr [rbp - 65768], 0
	lea rsi, [rip + l___unnamed_29]
	lea rdi, [rbp - 65808]
	call core::panicking::panic_fmt
	jmp LBB31_217

	mov rbx, rax
	lea rdi, [rbp - 104]
	call core::ptr::drop_in_place<std::io::error::Error>
	jmp LBB31_323

	call core::panicking::panic_cannot_unwind

	mov rbx, rax
	lea rdi, [rbp - 104]
	call core::ptr::drop_in_place<std::io::error::Error>
	jmp LBB31_323

	call core::panicking::panic_cannot_unwind

	jmp LBB31_322

	mov rbx, rax
	lea rdi, [rbp - 104]
	call core::ptr::drop_in_place<alloc::vec::Vec<bf_rs::optimizer::TokenOptimized>>
	lea rdi, [rbp - 72]
	call core::ptr::drop_in_place<alloc::vec::Vec<bf_rs::optimizer::TokenOptimized>>
	jmp LBB31_219

	call core::panicking::panic_cannot_unwind

LBB31_322:
	mov rbx, rax
LBB31_323:
	mov rdi, qword ptr [rbp - 264]
	mov rsi, qword ptr [rbp - 256]
	call core::ptr::drop_in_place<bf_rs::optimizing::OptimizedInterpreter<bf_rs::state::StackAllocatedState<65536_usize>>>
	jmp LBB31_219

	movsx ebx, byte ptr [rax + 1]
	lea rax, [r15 + 1]
	cmp rax, qword ptr [rbp - 120]
	jae LBB31_329
	mov rax, qword ptr [rbp - 128]
	cmp byte ptr [rax + 2*r15 + 2], 0
	jne LBB31_329
	mov rax, r15
	mov rdx, qword ptr [rbp - 128]
	.p2align	4, 0x90
LBB31_327:
	mov ecx, ebx
	movsx ebx, byte ptr [rdx + 2*rax + 3]
	add ebx, ecx
	cmp qword ptr [rbp - 112], rax
	je LBB31_332
	lea r15, [rax + 1]
	cmp byte ptr [rdx + 2*rax + 4], 0
	mov rax, r15
	je LBB31_327
LBB31_329:
	test ebx, ebx
	je LBB31_364
LBB31_330:
	shl rbx, 32
	cmp r14, qword ptr [rbp - 72]
	jne LBB31_362
	lea rdi, [rbp - 72]
	mov rsi, r14
	call alloc::raw_vec::RawVec<T,A>::reserve_for_push
	jmp LBB31_361
LBB31_332:
	mov r15, qword ptr [rbp - 232]
	test ebx, ebx
	jne LBB31_330
	jmp LBB31_364

	movzx eax, byte ptr [rax + 1]
	lea rcx, [r15 + 1]
	cmp rcx, qword ptr [rbp - 120]
	jae LBB31_338
	mov rcx, qword ptr [rbp - 128]
	cmp byte ptr [rcx + 2*r15 + 2], 1
	jne LBB31_338
	mov rcx, r15
	mov rdx, qword ptr [rbp - 128]
	.p2align	4, 0x90
LBB31_336:
	add al, byte ptr [rdx + 2*rcx + 3]
	cmp qword ptr [rbp - 112], rcx
	je LBB31_341
	lea r15, [rcx + 1]
	cmp byte ptr [rdx + 2*rcx + 4], 1
	mov rcx, r15
	je LBB31_336
LBB31_338:
	test al, al
	je LBB31_364
LBB31_339:
	movzx ebx, al
	shl rbx, 8
	or rbx, 1
	cmp r14, qword ptr [rbp - 72]
	jne LBB31_362
	lea rdi, [rbp - 72]
	mov rsi, r14
	call alloc::raw_vec::RawVec<T,A>::reserve_for_push
	jmp LBB31_361
LBB31_341:
	mov r15, qword ptr [rbp - 232]
	test al, al
	jne LBB31_339
	jmp LBB31_364

	cmp r14, qword ptr [rbp - 72]
	jne LBB31_345
	lea rdi, [rbp - 72]
	mov rsi, r14
	call alloc::raw_vec::RawVec<T,A>::reserve_for_push
	mov r14, qword ptr [rbp - 56]
LBB31_345:
	mov r13, qword ptr [rbp - 64]
	mov qword ptr [r13 + 8*r14], 2
	jmp LBB31_363

	cmp r14, qword ptr [rbp - 72]
	jne LBB31_349
	lea rdi, [rbp - 72]
	mov rsi, r14
	call alloc::raw_vec::RawVec<T,A>::reserve_for_push
	mov r14, qword ptr [rbp - 56]
LBB31_349:
	mov r13, qword ptr [rbp - 64]
	mov qword ptr [r13 + 8*r14], 3
	jmp LBB31_363

	mov r12, qword ptr [rbp - 88]
	cmp r12, qword ptr [rbp - 104]
	jne LBB31_353
	lea rdi, [rbp - 104]
	mov rsi, r12
	call alloc::raw_vec::RawVec<T,A>::reserve_for_push
	mov r12, qword ptr [rbp - 88]
LBB31_353:
	mov rax, qword ptr [rbp - 96]
	mov qword ptr [rbp - 240], rax
	mov qword ptr [rax + 8*r12], r14
	inc r12
	mov qword ptr [rbp - 88], r12
	cmp r14, qword ptr [rbp - 72]
	jne LBB31_356
	lea rdi, [rbp - 72]
	mov rsi, r14
	call alloc::raw_vec::RawVec<T,A>::reserve_for_push
	mov r13, qword ptr [rbp - 64]
	mov r14, qword ptr [rbp - 56]
LBB31_356:
	mov qword ptr [r13 + 8*r14], 6
	jmp LBB31_363

	test r12, r12
	mov rax, qword ptr [rbp - 240]
	je LBB31_367
	mov rcx, r12
	dec r12
	mov qword ptr [rbp - 88], r12
	mov rbx, qword ptr [rax + 8*rcx - 8]
	cmp rbx, r14
	jae LBB31_366
	mov byte ptr [r13 + 8*rbx], 4
	movzx eax, word ptr [rbp - 65808]
	mov word ptr [r13 + 8*rbx + 1], ax
	movzx eax, byte ptr [rbp - 65806]
	mov byte ptr [r13 + 8*rbx + 3], al
	mov dword ptr [r13 + 8*rbx + 4], r14d
	shl rbx, 32
	or rbx, 5
	cmp r14, qword ptr [rbp - 72]
	jne LBB31_362
	lea rdi, [rbp - 72]
	mov rsi, r14
	call alloc::raw_vec::RawVec<T,A>::reserve_for_push
LBB31_361:
	mov r14, qword ptr [rbp - 56]
LBB31_362:
	mov r13, qword ptr [rbp - 64]
	mov qword ptr [r13 + 8*r14], rbx
LBB31_363:
	inc r14
	mov qword ptr [rbp - 56], r14
LBB31_364:
	mov rax, r15
	inc r15
	cmp r15, qword ptr [rbp - 120]
	jae LBB31_227
	mov rcx, qword ptr [rbp - 128]
	lea rax, [rcx + 2*rax + 2]
	movzx ecx, byte ptr [rax]
	lea rdx, [rip + LJTI31_0]
	movsxd rcx, dword ptr [rdx + 4*rcx]
	add rcx, rdx
	jmp rcx
LBB31_366:
	lea rdx, [rip + l___unnamed_30]
	mov rdi, rbx
	mov rsi, r14
	call core::panicking::panic_bounds_check
	jmp LBB31_217
LBB31_367:
	lea rdi, [rip + l___unnamed_5]
	lea rdx, [rip + l___unnamed_31]
	mov esi, 23
	call core::option::expect_failed
	jmp LBB31_217
