.code

asm_pg_single_step proc
    pushfq
    mov rax,0
    or dword ptr [rsp], 0100h
    mov eax, 0FFFFFFFFh
    popfq
    mov rax,1 ;��������������,��仰�Ǵ������˵�
    nop
    ret
asm_pg_single_step endp

asm_pg_KiErrata361Present proc
    mov ax,ss
    pushfq
    or qword ptr[rsp],100h
    popfq
    mov ss,ax
    db 0f1h ;icebp
    pushfq
    and qword ptr[rsp],0FFFFFEFFh
    popfq
    ret
asm_pg_KiErrata361Present endp
end