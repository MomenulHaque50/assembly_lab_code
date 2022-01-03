.MODEL SMALL
.STACK 100H
.DATA 
dividend DW 17
divisor DB 3

m1 DB 'Quotient is:$'
m2 DB 0Ah, 0Dh,'Reminder is: $'


.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AX,dividend
    DIV divisor
    
    ADD AL,48
    ADD AH,48
    MOV BH,AH
    MOV BL,AL
    
    MOV AH,9
    LEA DX,m1
    INT 21H
    MOV AH,2
    MOV DL,BL
    INT 21H
     MOV AH,9
    LEA DX,m2
    INT 21H
    MOV AH,2
    MOV DL,Bh
    INT 21H 
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN