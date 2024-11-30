SECTION .data
mensaje     db      'Hola, nuevo mundo valiente!', 0Ah
 
SECTION .text
global  _start
 
_start:
 
    mov     ebx, mensaje
    mov     eax, ebx
 
siguiente:
    cmp     byte [eax], 0
    jz      terminado
    inc     eax
    jmp     siguiente
 
terminado:
    sub     eax, ebx
 
    mov     edx, eax
    mov     ecx, mensaje
    mov     ebx, 1
    mov     eax, 4
    int     80h
 
    mov     ebx, 0
    mov     eax, 1
    int     80h