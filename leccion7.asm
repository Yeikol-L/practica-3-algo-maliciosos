%include        'funciones.asm'
 
SECTION .data
mensaje1    db      'Hola, nuevo mundo valiente!', 0h
mensaje2    db      'Así es como reciclamos en NASM.', 0h
 
SECTION .text
global  _start
 
_start:
 
    mov     eax, mensaje1
    call    imprimirLF
 
    mov     eax, mensaje2
    call    imprimirLF
 
    call    salir