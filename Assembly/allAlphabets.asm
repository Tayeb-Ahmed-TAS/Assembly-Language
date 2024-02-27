;Display all English alphabates

.model small
.stack 100h
.code

main proc
    
    mov cx,26
    mov ah,2
    mov dl,'A'
    
    loop1:
    
    int 21h
    inc dl
    loop loop1
    
    mov ah,4ch
    int 21h
    
    main endp
end main