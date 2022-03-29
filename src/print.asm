[org 0x7c00]
mov ah, 0x0e
mov bx, wel
print:
  mov al, [bx]
  cmp al, 0
  je end
  int 0x10
  inc bx
  jmp print
wel:
  db 0xA, 0xD, "welcome to termux-os", 0xA, 0xD, "you can type any thing you like", 0xA, 0xD, 0
end:
  jmp key
