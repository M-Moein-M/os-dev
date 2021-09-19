[ org 0x7c00 ]

%include "print_string_func.asm"

MSG:
db 'Initiating boot...', 0

mov bx, MSG
call print_string

jmp $         ; infinite jump

times 510-($-$$) db 0

dw 0xaa55
