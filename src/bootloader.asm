[org 0x7c00]
mov [BOOT_DISK], dl
call ReadDisk
jmp extend
times 510-($-$$) db 0
db 0x55, 0xaa
