.MODEL SMALL
.STACK 100h
.CODE
MAIN PROC
    MOV CX,10
    MOV AH,2
    MOV DL,'$'
    TOP:
    INT 21H
    LOOP TOP 
    
    MOV AH,1
    INT 21H
    WHILE:
       CMP AL,'0'
       JE END_WHILE
       INT 21H
       JMP WHILE
       
    END_WHILE:
       
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    
    
   