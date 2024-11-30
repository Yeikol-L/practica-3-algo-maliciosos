SECTION .data
mensaje     db      'Hola, nuevo mundo valiente!', 0Ah
 
SECTION .text
global  _start
 
_start:
 
    mov     eax, mensaje
    call    longitud
 
    mov     edx, eax
    mov     ecx, mensaje
    mov     ebx, 1
    mov     eax, 4
    int     80h
 
    mov     ebx, 0
    mov     eax, 1
    int     80h
 
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