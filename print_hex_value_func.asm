print_hex_value:    ; print hex value stored in "bx" register
pusha

push bx             ; save bx before change
mov bx, HEX_PREFIX  ; print hex numbers prefix
call print_string
pop bx

mov dx, 3           ; set counter for looping
loop_print_hex_value:

mov cx, 0xf000
and cx, bx          ; store higher nibble of bh to cx
shr cx, 12          ; bring higher 4 bits of cx to lower 4 bits

mov ax, HEX_NUMBERS
add ax, cx          ; store address of hex digit to ax

push bx             ; use bx as index register

mov bx, ax
mov al, byte [bx]   ; store ascii value of hex digit to al
mov ah, 0x0e
int 0x10            ; BIOS intrupt to print character on screen 

pop bx

shl bx, 4
dec dx
cmp dx, 0
jge loop_print_hex_value

popa
ret
