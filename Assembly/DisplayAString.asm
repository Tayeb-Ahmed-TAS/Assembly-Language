; Display a string

.model small
.stack 100h

.data

msg db "The name is Tayeb$"

.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    lea dx,msg
    mov ah,9h
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp
end main