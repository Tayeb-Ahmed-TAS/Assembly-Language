; Read a character from the keyboard and display it

.model small
.stack 100h
.code

main proc
    
    ; function to read a character from the keyboard
    mov ah,1h
    int 21h
    
    ; Move the character from AL to DL for display
    mov bl,al 
    
    ; This 2 functions for line break
    mov ah,2h
    mov dl,0dh
    int 21h
        
    mov ah,2h
    mov dl,0ah
    int 21h
    
    ; function to display a character on the screen
    mov dl,bl
    mov ah,2h
    int 21h
    
    ; Exit the program
    mov ah,4ch
    int 21h
    
    main endp
end main