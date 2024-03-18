;Calculate the factorial of an integer

.model small
.stack 100h
.code

main proc
    
    mov cl,3 ; The integer whose factorial we want to calculate
    mov al,1 ; 3! = 3*2*1 this 1
    
    fact:
    mul cl
    dec cl
    jnz fact ; jnz means Jump If Not Zero
    
    add al,30h
    mov dl,al
    
    mov ah,2h
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp
end main
