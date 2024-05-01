; messagebox.asm

section .data
    caption db "Caption",0
    message db "Wide",0

section .text
    extern _MessageBoxA@16
    extern _ExitProcess@4

global main
main:
    push dword 0
    push dword caption
    push dword message
    push dword 0
    call _MessageBoxA@16

    push dword 0
    call _ExitProcess@4
