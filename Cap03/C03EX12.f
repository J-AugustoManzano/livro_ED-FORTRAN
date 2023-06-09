      PROGRAM C03EX12
      INTEGER*1 MES
      WRITE(*, 10)
  10  FORMAT("Entre um numero equivalente a um MES.")
      READ(*, 20) MES
  20  FORMAT(I2)
      IF (MES .LE. 0 .OR. MES .GE. 13) THEN
        GOTO 213
      ELSE
        GOTO (201,202,203,204,205,206,207,208,209,210,211,212), MES
      ENDIF
 201  CONTINUE
      WRITE(*, 101)
      GOTO 400
 202  CONTINUE
      WRITE(*, 102)
      GOTO 400
 203  CONTINUE
      WRITE(*, 103)
      GOTO 400
 204  CONTINUE
      WRITE(*, 104)
      GOTO 400
 205  CONTINUE
      WRITE(*, 105)
      GOTO 400
 206  CONTINUE
      WRITE(*, 106)
      GOTO 400
 207  CONTINUE
      WRITE(*, 107)
      GOTO 400
 208  CONTINUE
      WRITE(*, 108)
      GOTO 400
 209  CONTINUE
      WRITE(*, 109)
      GOTO 400
 210  CONTINUE
      WRITE(*, 110)
      GOTO 400
 211  CONTINUE
      WRITE(*, 111)
      GOTO 400
 212  CONTINUE
      WRITE(*, 112)
      GOTO 400
 213  CONTINUE
      WRITE(*, 113)
      GOTO 400
 101  FORMAT("Janeiro")
 102  FORMAT("Fevereiro")
 103  FORMAT("Marco")
 104  FORMAT("Abril")
 105  FORMAT("Maio")
 106  FORMAT("Junho")
 107  FORMAT("Julho")
 108  FORMAT("Agosto")
 109  FORMAT("Setembro")
 110  FORMAT("Outubro")
 111  FORMAT("Novembro")
 112  FORMAT("Dezembro")
 113  FORMAT("Mes invalido")
 400  CONTINUE
      END

