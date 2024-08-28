mov bp, 0x8000
mov sp, bp

mov ah, 0x0e

push '!'
push 'd'
push 'l'
push 'r'
push 'o'
push 'W'
push ' '
push 'o'
push 'l'
push 'l'
push 'e'
push 'H'

print_function:
    pop cx
    cmp cl, ''
    je end
    mov al, cl
    int 0x10
    jmp print_function

end:
    jmp end


times 510-($-$$) db 0
dw 0xaa55
