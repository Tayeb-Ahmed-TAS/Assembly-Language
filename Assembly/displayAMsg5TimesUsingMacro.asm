;Display a message 5 times using macro

.model small
.stack 100h

print macro msg
    
    lea dx,msg
    mov ah,09h
    int 21h
endm

.data

msg1 db 0dh,0ah,"CSE$"

.code

main proc
    
    mov ax,@data
    mov ds,ax
    mov cx,5
    mov al,1
    
    loop1:
    
    inc al
    print msg1
    loop loop1
    
    mov ah,4ch
    int 21h
    
    main endp
end main
