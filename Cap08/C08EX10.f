      PROGRAM C08EX10
      CHARACTER*10 PALAV
      PALAV = "ABCDEFGHIJ"
      WRITE(*, "(I2)") INDEX(PALAV, "A")
      WRITE(*, "(I2)") INDEX(PALAV, "C")
      WRITE(*, "(I2)") INDEX(PALAV, "F")
      WRITE(*, "(I2)") INDEX(PALAV, "J")
      WRITE(*, "(I2)") INDEX(PALAV, "X")
      END

