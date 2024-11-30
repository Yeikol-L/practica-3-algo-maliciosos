;------------------------------------------
; int longitud(String mensaje)
longitud:
    push    ebx
    mov     ebx, eax
 
siguiente:
    cmp     byte [eax], 0
    jz      terminado
    inc     eax
    jmp     siguiente
 
terminado:
    sub     eax, ebx
    pop     ebx
    ret
 
;------------------------------------------
; void imprimir(String mensaje)
imprimir:
    push    edx
    push    ecx
    push    ebx
    push    eax
    call    longitud
 
    mov     edx, eax
    pop     eax
 
    mov     ecx, eax
    mov     ebx, 1
    mov     eax, 4
    int     80h
 
    pop     ebx
    pop     ecx
    pop     edx
    ret
 
;------------------------------------------
; void imprimirLF(String mensaje)
imprimirLF:
    call    imprimir
 
    push    eax
    mov     eax, 0Ah
    push    eax
    mov     eax, esp
    call    imprimir
    pop     eax
    pop     eax
    ret
 
;------------------------------------------
; void salir()
salir:
    mov     ebx, 0
    mov     eax, 1
    int     80h
    ret