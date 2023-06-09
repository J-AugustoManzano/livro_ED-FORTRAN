      PROGRAM C08EX01
      CHARACTER PALAV1*3, PALAV2*5, SAUDA*9
      PALAV1 = "Boa"
      PALAV2 = "Tarde"
      SAUDA = PALAV1 // " " // PALAV2
      WRITE(*, 10) SAUDA
  10  FORMAT(A9)
      END

