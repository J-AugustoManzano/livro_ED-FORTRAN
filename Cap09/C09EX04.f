      PROGRAM C09EX04
      CHARACTER*50 MENSAGEM
      OPEN(1, FILE="ARQTXT.XXX", STATUS="OLD", FORM="FORMATTED",
     $        ERR=20)
      WRITE(*, "('O conteudo armazenado corresponde a:\n')")
      REWIND 1
      READ(1,"(A50)") MENSAGEM
      WRITE(*, 10) MENSAGEM
  10  FORMAT(A50)
      ENDFILE 1
      CLOSE(1)
      GOTO 30
  20  WRITE(*, "('Erro de abertura, o arquivo nao existe')")
  30  END

