extend:
  mov ah, 0x00
  mov al, 0x02
  int 0x10
  PROGRAM_SPACE equ 0x7e00
  ReadDisk:
    mov ah, 0x02
    mov al, 1
    mov ch, 0x00
    mov cl, 0x02
    mov dh, 0x00
    mov dl, [BOOT_DISK]
    mov bx, PROGRAM_SPACE
    int 0x13
    jc DiskErr
    ret
  BOOT_DISK:
    db 0
  DiskErrStr:
    db 0xA, 0xD, "Oops! something went wrong :(", 0
  DiskErr:
    mov ah, 0x0e
    mov bx, DiskErrStr
    call print
    jmp $
