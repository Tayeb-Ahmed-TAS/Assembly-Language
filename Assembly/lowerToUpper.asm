;Convert lowercase to uppercase 

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
    
    print msg1 ;Print msg1
    
     ; Read the character
    mov ah,01h
    int 21h
    
     ; Convert to uppercase (ASCII manipulation)
    
    cmp al,'a' ; Jump if less than 'a' (not lowercase)
    jl endc    ; jl means Jump If Less Than
    
    cmp al,'z' ; Jump if greater than 'z' (not lowercase)
    jg endc    ; jg means Jump If Greater Than
    
    sub al,32  ; Convert to uppercase by subtracting 32
    mov bl,al
    
    endc:
    
    print msg2 ;Print msg2
    
     ; Display the converted character
    
    mov dl,bl
    mov ah,2h
    int 21h
    
     ; Exit the program
    
    mov ah,4ch
    int 21h
    
    main endp
end main
