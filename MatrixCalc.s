
section .text:
    global _start
_start:
     ; display one matrix on the screen, then print /n then
     ; display another matrix on the screen
     ; then print /n and display the addition of both matrixes on the screen

print_numbers_matA:
    mov eax, 9 ; number of elements to iterate through
    mov ebx, array1 ; the address of the current element 
loop: add ebx, 2 ; increment the address of the current number
    ; decrement the counter
    dec eax
    mov tempA, eax
    mov tempB, ebx
    ; print to the screen the number
    mov eax, 0x4
    mov ebx, 1
    mov ecx, [tempB]
    mov edx, 2
    int 0x80
    ; print space
    mov ecx, ' '
    mov edx, 1
    int 0x80

    mov eax, tempA
    mov ebx, tempB

    jne loop

done:
    mov eax, 0x1
    mov ebx, 0
    int 0x80

;print_numbers_matB:

;add_numbers:






section .data:
    array1 DW 1, 2, 3, 4, 5, 6, 7, 8, 9
    array2 DW 2, 2, 2, 2, 2, 2, 2, 2, 2
    tempA DD 0
    tempB DD 0





