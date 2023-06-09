! Versao FORTRAN 90

PROGRAM C10EX09

  TYPE CAD_ALUNO
    CHARACTER (LEN = 40) NOME
    REAL NOTA(4)
    REAL MEDIA
  END TYPE CAD_ALUNO

  TYPE (CAD_ALUNO) :: ALUNO(8), X

  INTEGER I, J
  REAL SOMA_NT, SOMA_MD, MEDIA_GP

  ! // Rotina para a entrada dos nomes e notas

  WRITE(*,*) "Cadastro de alunos"
  DO I = 1, 8
    WRITE(*,"(1X, 'Informe o ', I1, 'o. nome')") I
    READ(*,*) ALUNO(I)%NOME
    WRITE(*, "(1X, 'Entre as quatro notas:')")
    DO J = 1, 4
      READ(*,*) ALUNO(I)%NOTA(J)
    ENDDO
  ENDDO

  ! // Processamento do calculo das medias

  SOMA_MD = 0
  DO I = 1, 8
    SOMA_NT = 0
    DO J = 1, 4
      SOMA_NT = SOMA_NT + ALUNO(I)%NOTA(J)
    ENDDO
    ALUNO(I)%MEDIA = SOMA_NT / 4
    SOMA_MD = SOMA_MD + ALUNO(I)%MEDIA
  ENDDO
  MEDIA_GP = SOMA_MD / 8

  ! // Classificacao dos dados

  DO I = 1, 7
    DO J = I + 1, 8
      IF (ALUNO(I)%NOME > ALUNO(J)%NOME) THEN
         X = ALUNO(I)
         ALUNO(I) = ALUNO(J)
         ALUNO(J) = X
      ENDIF
    ENDDO
  ENDDO

  ! // Apresentacao da tabela nome/notas/media

  WRITE(*,"(1X, 'Relatorio Geral')")
  DO I = 1, 8
    WRITE(*,"(1X, 'Nome ..........: ', A40)") ALUNO(I)%NOME
    WRITE(*,*)
    DO J = 1, 4
      WRITE(*,"(1X, 'Nota ..........: ', F5.2)") ALUNO(I)%NOTA(J)
    ENDDO
    WRITE(*,"(1X, 'Media .........: ', F5.2)") ALUNO(I)%MEDIA
    WRITE(*,*)
  ENDDO
  WRITE(*,"(1X, 'Media Geral ...: ', F5.2)") MEDIA_GP
END PROGRAM C10EX09
