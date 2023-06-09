      PROGRAM C08EX04
      CHARACTER PALAVR*10
      PALAVR(1:3) = "COM"
      PALAVR(4:7) = "PUTA"
      PALAVR(8:)  = "DOR"
      WRITE(*, 10) PALAVR
  10  FORMAT(A10)
      END

