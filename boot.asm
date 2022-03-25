mov ah, 0x0e
mov al, 65
int 0x10

loop:
        inc al
        cmp al, 'Z' + 1
        je exit
        int 0x10
        jmp loop
exit:
        jmp $

[org 0x7c00]
mov ah, 0x0e
mov al, [varA]
int 0x10
jmp $

varA:
    db "Hello!", 0


times 510-($-$$) db 0
db 0x55, 0xaa
