.model small
.stack 100h
.code

main proc
    
    mov ah,2h
    mov dl,'M'
    int 21h
    
    main endp

end main