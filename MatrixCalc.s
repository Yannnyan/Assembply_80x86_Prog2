
section .text:
    global _start
_start:
     ; display one matrix on the screen, then print /n then
     ; display another matrix on the screen
     ; then print /n and display the addition of both matrixes on the screen
    j print_numbers_matA
print_numbers_matA:
    mov eax, 0x4
    mov ebx, 1
    mov array1
print_numbers_matB:

add_numbers:






section .data:
    array1 DW 1, 2, 3, 4, 5, 6, 7, 8, 9
    array2 DW 2, 2, 2, 2, 2, 2, 2, 2, 2





