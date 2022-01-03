.MODEL SMALL
.STACK 100H
.DATA
m1 DB 'Enter a digit between '0' and '5':$'
m2 DB 0Ah, 0Dh,'Odd $'
m3 DB 0Ah, 0Dh,'Even $'
m4 DB 0Ah, 0Dh,'Invalid Input $'

.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    MOV AH,9
    LEA DX,m1
    INT 21H
    MOV AH,1
    INT 21H
    
    ;CASE
    CMP AL,'1'
    JE  ODD
    
    CMP AL,'3'
    JE  ODD
    
    CMP AL,'5'
    JE  ODD 
    
    CMP AL,'0'
    JE  EVEN
    
    CMP AL,'2'
    JE  EVEN 
    
    CMP AL,'4'
    JE  EVEN 
    
    JMP ERR
    
    ODD:
    MOV AH,9
    LEA DX,m2
    INT 21H
    JMP LAST
    
     EVEN:
    MOV AH,9
    LEA DX,m3
    INT 21H
    JMP LAST 
    
    ERR:
    MOV AH,9
    LEA DX,m4
    INT 21H
    
    LAST:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN