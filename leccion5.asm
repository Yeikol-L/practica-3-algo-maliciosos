%include        'funciones.asm'
 
SECTION .data
mensaje1    db      'Hola, nuevo mundo valiente!', 0Ah
mensaje2    db      'Así es como reciclamos en NASM.', 0Ah
 
SECTION .text
global  _start
 
_start:
 
    mov     eax, mensaje1
    call    imprimir
 
    mov     eax, mensaje2
    call    imprimir
 
    call    salir