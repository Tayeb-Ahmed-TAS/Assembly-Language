;Determine wheather a number is even or odd

.model small
.stack 100h

.data

msg1 db 0dh,0ah,"Enter a number$"
msg2 db 0dh,0ah,"It is an even number$"
msg3 db 0dh,0ah,"It is an odd number$"

.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    lea dx,msg1
    mov ah,9h
    int 21h
    
    mov ah,01h
    int 21h
    
    sub al,30h
    
    mov dl,2
    
    div dl
    
    cmp ah,00
    
    jz s2 ; jz means jump if zero
    
    lea dx,msg3
    mov ah,9h
    int 21h
    
    jmp L4
    
    s2:
    
    lea dx,msg2
    mov ah,9h
    int 21h
    
    L4:
    
    mov ah,4ch
    int 21h
    
    main endp
end main