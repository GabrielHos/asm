  global _start

  section .text
_start:
  mov eax, 4
  mov ebx, 1
  mov ecx, message
  mov edx, len
  int 80h
  
  mov eax, 1
  xor ebx, ebx
  int 80h


  section .data
message: db "Hello, world!", 10
len equ $-message
