
      list p=16f628a
      #include "p16f628a.inc"             ; Include register definition file
      
      org h'0000'
      clrf PORTB
      BANKSEL TRISB       ;   
      MOVLW b'11111100'  ;B PORTLARININ RB0 OUTPUT
      movwf TRISB
      BANKSEL PORTB
      MOVLW b'00000111'
      MOVWF CMCON    ;GELEN 5V ALRI 1 VE 0 YAPAR
      
test
      btfsc PORTA,0
      movlw h'FE'
	  movwf  PORTB
	  btfss PORTA,0
      movlw h'FD'
	  movwf  PORTB
	  goto test
      end