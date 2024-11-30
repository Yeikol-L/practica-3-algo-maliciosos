%include        'funciones.asm'
 
SECTION .data
mensaje1        db      'Por favor, ingrese su nombre: ', 0h
mensaje2        db      'Hola, ', 0h
 
SECTION .bss
entradaUsuario:     resb    255
 
SECTION .text
global  _start
 
_start:
 
    mov     eax, mensaje1
    call    imprimir
 
    mov     edx, 255
    mov     ecx, entradaUsuario
    mov     ebx, 0
    mov     eax, 3
    int     80h
 
    mov     eax, mensaje2
    call    imprimir
 
    mov     eax, entradaUsuario
    call    imprimir
 
    call    salir