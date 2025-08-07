global _start

section .data
name db "Name: Joshua", 10
name_len equ $ - name

surname db "Surname: Robert", 10
surname_len equ $ - surname

location db "Location: Pune", 10
location_len equ $ - location

section .text

%macro print 2
mov eax, 4
mov ebx, 1
mov ecx, %1
mov edx, %2
int 0x80
%endmacro

_start:
print name, name_len
print surname, surname_len
print location, location_len

mov eax, 1
xor ebx, ebx
int 0x80
