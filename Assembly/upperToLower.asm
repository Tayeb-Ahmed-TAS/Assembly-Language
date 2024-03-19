;Convert uppercase to lowecase 

.model small
.stack 100h

print macro msg
    
    lea dx,msg
    mov ah,09h
    int 21h
    
endm

.data

msg1 db 0dh,0ah,'Enter an Input',0dh,0ah,'$'
msg2 db 0dh,0ah,'The Output is',0dh,0ah,'$'

.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    print msg1
    
    mov ah,01h
    int 21h
    
    cmp al,'A'
    jl endc
    
    cmp al,'Z'
    jg endc
    
    add al,32
    mov bl,al
    
    endc:
    
    print msg2
    
    mov dl,bl
    mov ah,2h
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp
end main