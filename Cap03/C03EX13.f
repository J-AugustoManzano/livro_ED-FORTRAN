C Demonstracao do modo ANSI de programacao
      PROGRAM C03EX13
      ! Comando para limpar a tela
      WRITE(*, 10)
  10  FORMAT("\033[2J")
      ! posicionar o cursor na linha 12 e na coluna 23
      WRITE(*, 20)
  20  FORMAT("\033[12;23HTeste de limpeza e posicionamento")
      END

