;Display all English alphabates

.model small
.stack 100h
.code

main proc
    
    mov cx,26 ; It works like i=26 and here 26 because there are 26 English Alphabets
    mov ah,2
    mov dl,'A'
    
    loop1:
    
    int 21h
    inc dl  ; The inc instruction will add 1
    loop loop1
    
    mov ah,4ch
    int 21h
    
    main endp
end main
