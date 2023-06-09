      PROGRAM C06EX04

* Trecho do programa principal

      INTEGER OPCAO
      OPCAO = 0
 900  IF (OPCAO .NE. 5) THEN
        WRITE(*, 910)
 910    FORMAT("\nPrograma Calculadora")
        WRITE(*, 915)
 915    FORMAT("\nMenu principal\n")
        WRITE(*, 920)
 920    FORMAT("[1] - Adicao")
        WRITE(*, 925)
 925    FORMAT("[2] - Subtracao")
        WRITE(*, 930)
 930    FORMAT("[3] - Multiplicacao")
        WRITE(*, 935)
 935    FORMAT("[4] - Divisao")
        WRITE(*, 940)
 940    FORMAT("[5] - Fim de Programa")
        WRITE(*, 945)
 945    FORMAT("\nEscolha uma das opcoes.")
        READ(*, 950) OPCAO
 950    FORMAT(I1)
        IF (OPCAO .NE. 5) THEN
           GOTO (961, 962, 963, 964), OPCAO
           GOTO 990
 961       CONTINUE
              CALL ADICAO
              GOTO 990
 962       CONTINUE
              CALL SUBTRACAO
              GOTO 990
 963       CONTINUE
              CALL MULTIPLICACAO
              GOTO 990
 964       CONTINUE
              CALL DIVISAO
              GOTO 990
        ENDIF
 990    CONTINUE
        GOTO 900
      ENDIF
      END

* Trecho de codigo referente a definicao das subrotinas

      SUBROUTINE ADICAO
        REAL A, B, R
        WRITE(* , 100)
 100    FORMAT("\nRotina de Adicao")
        WRITE(* , 110)
 110    FORMAT("----------------")
        CALL ENTRADA(A, B)
        R = A + B
        CALL SAIDA(R)
        RETURN
      END

      SUBROUTINE SUBTRACAO
        REAL A, B, R
        WRITE(* , 100)
 100    FORMAT("\nRotina de Subtracao")
        WRITE(* , 110)
 110    FORMAT("-------------------")
        CALL ENTRADA(A, B)
        R = A - B
        CALL SAIDA(R)
        RETURN
      END

      SUBROUTINE MULTIPLICACAO
        REAL A, B, R
        WRITE(* , 100)
 100    FORMAT("\nRotina de Multiplicacao")
        WRITE(* , 110)
 110    FORMAT("-----------------------")
        CALL ENTRADA(A, B)
        R = A * B
        CALL SAIDA(R)
        RETURN
      END

      SUBROUTINE DIVISAO
        REAL A, B, R
        WRITE(* , 100)
 100    FORMAT("\nRotina de Divisao")
        WRITE(* , 110)
 110    FORMAT("-----------------")
        CALL ENTRADA(A, B)
        IF (B .LE. 0) THEN
          WRITE(*, 130)
 130      FORMAT("\nErro de divisao")
        ELSE
          R = A / B
          CALL SAIDA(R)
        ENDIF
        RETURN
      END

      SUBROUTINE ENTRADA(N1, N2)
        REAL N1, N2
        WRITE(*, 200)
 200    FORMAT("Entre os valores para as variaveis <A> e <B>.")
        READ(*, 210) N1
        READ(*, 210) N2
 210    FORMAT(F8.2)
        RETURN
      END
      
      SUBROUTINE SAIDA(RESULT)
        REAL RESULT
        WRITE(*, 200) RESULT
 200    FORMAT("\nO resultado entre <A> e <B> = ", F8.2)
        RETURN
      END
      
