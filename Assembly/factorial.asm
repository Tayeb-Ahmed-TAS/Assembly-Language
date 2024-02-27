;Calculate the factorial of an integer

.model small
.stack 100h
.code

main proc
    
    mov cl,3
    mov al,1
    
    top:
    mul cl
    dec cl
    jnz top
    
    add al,30h
    mov dl,al
    
    mov ah,2h
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp
end main