! Versao FORTRAN 90

PROGRAM C10EX08
  INTEGER I, J, K
  REAL Y, SOMA_NT, SOMA_MD, MEDIA_GP, NOTA(8,4), MEDIA(8)
  CHARACTER NOME(8)*40, X*40

  ! // Rotina para a entrada dos nomes e notas

  WRITE(*,*) "Cadastro de alunos"
  DO I = 1, 8
    WRITE(*,"(1X, 'Informe o ', I1, 'o. nome')") I
    READ(*,*) NOME(I)
    WRITE(*, "(1X, 'Entre as quatro notas:')")
    DO J = 1, 4
      READ(*,*) NOTA(I,J)
    ENDDO
  ENDDO

  ! // Processamento do calculo das medias

  SOMA_MD = 0
  DO I = 1, 8
    SOMA_NT = 0
    DO J = 1, 4
      SOMA_NT = SOMA_NT + NOTA(I,J)
    ENDDO
    MEDIA(I) = SOMA_NT / 4
    SOMA_MD = SOMA_MD + MEDIA(I)
  ENDDO
  MEDIA_GP = SOMA_MD / 8

  ! // Classificacao dos dados

  DO I = 1, 7
    DO J = I + 1, 8
      IF (NOME(I) > NOME(J)) THEN

         ! // Troca os nomes

         X = NOME(I)
         NOME(I) = NOME(J)
         NOME(J) = X

        ! // Troca as notas bimestrais

        DO K = 1, 4
          Y = NOTA(I,K)
          NOTA(I,K) = NOTA(J,K)
          NOTA(J,K) = Y
        ENDDO

        ! // Troca as media

        Y = MEDIA(I)
        MEDIA(I) = MEDIA(J)
        MEDIA(J) = Y

      ENDIF
    ENDDO
  ENDDO

  ! // Apresentacao da tabela nome/notas/media

  WRITE(*,"(1X, 'Relatorio Geral')")
  DO I = 1, 8
    WRITE(*,"(1X, 'Nome ..........: ', A40)") NOME(I)
    WRITE(*,*)
    DO J = 1, 4
      WRITE(*,"(1X, 'Nota ..........: ', F5.2)") NOTA(I,J)
    ENDDO
    WRITE(*,"(1X, 'Media .........: ', F5.2)") MEDIA(I)
    WRITE(*,*)
  ENDDO
  WRITE(*,"(1X, 'Media Geral ...: ', F5.2)") MEDIA_GP
END PROGRAM C10EX08
