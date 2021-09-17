mov ah, 0x0e  ; scrolling teletype BIOS routine

mov al, 'H'
int 0x10
mov al, 'E'
int 0x10
mov al, 'L'
int 0x10
mov al, 'L'
int 0x10
mov al, 'O'
int 0x10


loop:         ; infinite jump
jmp loop

times 510-($-$$) db 0

dw 0xaa55
