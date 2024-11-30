%include        'funciones.asm'
 
SECTION .text
global  _start
 
_start:
 
    mov     ecx, 0
 
siguienteNumero:
    inc     ecx
 
    mov     eax, ecx
    add     eax, 48
    push    eax
    mov     eax, esp
    call    imprimirLF
 
    pop     eax
    cmp     ecx, 10
    jne     siguienteNumero
 
    call    salir