  key:
    mov ah, 0x00
    int 0x16
    mov ah, 0x0e
    int 0x10
    jmp key
  times 1024-($-$$) db 0
