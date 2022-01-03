

;Write an assembly program to convert upper-case/ lower-case letter
.MODEL SMALL
.STACK 100H 
.CODE
MAIN PROC  
    
    
    MOV AH,1     ;INPUT
    INT 21H      ;LOWERTO UPPER CASE
    MOV BL,AL
    
    
    SUB BL,20H   ;CONVERT
    
    
    
    MOV AH,2     ;OUTPUT
    MOV DL,BL
    INT 21H
    
    MOV dx,13
    MOV ah,2
    INT 21h  
    MOV dx,10
    MOV ah,2
    INT 21h 
  
    MOV AH,1     ;INPUT
    INT 21H      ;UPPER TO LOWER CASE
    MOV BL,AL 
    
    ADD BL,20H   ;CONVERT
    
    MOV AH,2     ;OUTPUT
    MOV DL,BL
    INT 21H
  
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN