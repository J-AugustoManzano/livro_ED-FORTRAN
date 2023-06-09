      PROGRAM C05EX08
C arco tangente no quadrante I
      WRITE(*, 10) ATAN2( 1.0, 1.0) !  0.78540
  10  FORMAT(F8.5)
C arco tangente no quadrante II
      WRITE(*, 20) ATAN2( 1.0,-1.0) !  2.35619
  20  FORMAT(F8.5)
C arco tangente no quadrante III
      WRITE(*, 30) ATAN2(-1.0,-1.0) ! -2.35619
  30  FORMAT(F8.5)
C arco tangente no quadrante IV
      WRITE(*, 40) ATAN2(-1.0, 1.0) ! -0.78540
  40  FORMAT(F8.5)
      END

