PROGRAM C10EX04
  INTEGER(1) MES
  WRITE(*, *) "Entre um numero equivalente a um MES."
  READ(*, *) MES
  Acao: SELECT CASE (MES)
    CASE (1) 
      WRITE (*, *) "Janeiro"
    CASE (2) 
      WRITE (*, *) "Fevereiro"
    CASE (3) 
      WRITE (*, *) "Marco"
    CASE (4) 
      WRITE (*, *) "Abril"
    CASE (5) 
      WRITE (*, *) "Maio"
    CASE (6) 
      WRITE (*, *) "Junho"
    CASE (7) 
      WRITE (*, *) "Julho"
    CASE (8) 
      WRITE (*, *) "Agosto"
    CASE (9) 
      WRITE (*, *) "Setembro"
    CASE (10) 
      WRITE (*, *) "Outubro"
    CASE (11) 
      WRITE (*, *) "Novembro"
    CASE (12) 
      WRITE (*, *) "Dezembro"
    CASE DEFAULT
      WRITE (*, *) "Mes invalido"
  END SELECT Acao 
END PROGRAM C10EX04
