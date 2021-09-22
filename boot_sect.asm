[ org 0x7c00 ]

xor ax, ax
mov ss, ax
mov bp, 0x8000
mov sp, bp

xor ax, ax
mov ds, ax
mov bx, MSG
call print_string

jmp $         ; infinite jump

%include "print_string_func.asm"
%include "print_hex_value_func.asm"

MSG:
db 'Initiating boot', 10, 13, 0

HEX_NUMBERS:
db '0123456789ABCDEF'

HEX_PREFIX:
db '0x', 0

times 510-($-$$) db 0

dw 0xaa55
