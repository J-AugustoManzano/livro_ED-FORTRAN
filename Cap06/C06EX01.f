      PROGRAM C06EX01

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
        WRITE(* , 120)
 120    FORMAT("Entre os valores para as variaveis <A> e <B>.")
        READ(*, 130) A
        READ(*, 130) B
 130    FORMAT(F8.2)
        R = A + B
        WRITE(*, 140) R
 140    FORMAT("\nO resultado entre <A> e <B> = ", F8.2)
        RETURN
      END

      SUBROUTINE SUBTRACAO
        REAL A, B, R
        WRITE(* , 200)
 200    FORMAT("\nRotina de Subtracao")
        WRITE(* , 210)
 210    FORMAT("---------------------")
        WRITE(* , 220)
 220    FORMAT("Entre os valores para as variaveis <A> e <B>.")
        READ(*, 230) A
        READ(*, 230) B
 230    FORMAT(F8.2)
        R = A - B
        WRITE(*, 240) R
 240    FORMAT("\nO resultado entre <A> e <B> = ", F8.2)
        RETURN
      END

      SUBROUTINE MULTIPLICACAO
        REAL A, B, R
        WRITE(* , 300)
 300    FORMAT("\nRotina de Multiplicacao")
        WRITE(* , 310)
 310    FORMAT("-------------------------")
        WRITE(* , 320)
 320    FORMAT("Entre os valores para as variaveis <A> e <B>.")
        READ(*, 330) A
        READ(*, 330) B
 330    FORMAT(F8.2)
        R = A * B
        WRITE(*, 340) R
 340    FORMAT("\nO resultado entre <A> e <B> = ", F8.2)
        RETURN
      END

      SUBROUTINE DIVISAO
        REAL A, B, R
        WRITE(* , 400)
 400    FORMAT("\nRotina de Divisao")
        WRITE(* , 410)
 410    FORMAT("-------------------")
        WRITE(* , 420)
 420    FORMAT("Entre os valores para as variaveis <A> e <B>.")
        READ(*, 430) A
        READ(*, 430) B
 430    FORMAT(F8.2)
        IF (B .LE. 0) THEN
          WRITE(*, 440)
 440      FORMAT("\nErro de divisao")
        ELSE
          R = A / B
          WRITE(*, 450) R
 450      FORMAT("\nO resultado entre <A> e <B> = ", F8.2)
        ENDIF
        RETURN
      END

