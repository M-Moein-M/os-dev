[ org 0x7c00 ]

MSG:
db 'Initiating boot', 0

mov bp, 0x8000
mov sp, bp

mov bx, MSG
call print_string

jmp $         ; infinite jump

%include "print_string_func.asm"

times 510-($-$$) db 0

dw 0xaa55
