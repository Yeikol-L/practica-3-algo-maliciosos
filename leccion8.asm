%include        'funciones.asm'
 
SECTION .text
global  _start
 
_start:
 
    pop     ecx
 
siguienteArg:
    cmp     ecx, 0h
    jz      noMasArgs
    pop     eax
    call    imprimirLF
    dec     ecx
    jmp     siguienteArg
 
noMasArgs:
    call    salir