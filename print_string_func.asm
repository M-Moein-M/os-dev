print_string:   ; print null-terminated string starting at value of "bx" register
pusha

while_loop:
cmp byte [bx], 0     ; return if we reach the null character
je end_print_string
mov al, byte [bx]
mov ah, 0x0e    ; BIOS tele-type output
int 0x10        ; BIOS intrupt to print character on scrren
inc bx
jmp while_loop

end_print_string:
popa
ret
