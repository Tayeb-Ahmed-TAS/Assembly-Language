;Determine the largest number among 3 numbers

.model small
.stack 100h
.data

num1 db 5
num2 db 3
num3 db 9

.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov al,num1
    
    cmp al,num2
    jge skip1 ; Here, jge means Jump If Greater Than or Equal
    mov al,num2
    
    skip1:
    cmp al,num3
    jge skip2
    mov al,num3
    
    skip2:
    add al,30h 
    mov ah,2h
    mov dl,al
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp
end main
