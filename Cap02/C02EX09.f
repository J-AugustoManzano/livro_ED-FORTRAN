      PROGRAM C02EX09
      REAL V1, V2
      V1 = 2.123456
      V2 = 3.123456
      WRITE(*, 10) V1, V2
  10  FORMAT(F8.3)
      WRITE(*, 20) V1, V2
  20  FORMAT("\n", 2F8.3)
      END

