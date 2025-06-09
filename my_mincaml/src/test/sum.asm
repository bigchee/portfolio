----- virtual-----
----- begin fundef -----
  sum.7
    [x.8]
    []
    LET # 2
      Ti3.11
      SET(0)
      ANS # 2
        IFLE(x.8, Ti3.11)
          ANS # 2
            SET(0)
          LET # 3
            Ti4.14
            SET(1)
            LET # 3
              Ti5.13
              SUB(x.8, Ti4.14)
              LET # 3
                Ti6.12
                CALLDIR(sum.7)
                  [Ti5.13]
                  []
                ANS # 3
                  ADD(Ti6.12, x.8)
  ----- end fundef -----
  LET # 4
    Ti1.10
    SET(10000)
    LET # 4
      Ti2.9
      CALLDIR(sum.7)
        [Ti1.10]
        []
      ANS # external
        CALLDIR(min_caml_print_int)
          [Ti2.9]
          []
----- regalloc-----
----- begin fundef -----
  sum.7
    [%eax]
    []
    ANS # 2
      IFLE(%eax, 0)
        ANS # 2
          SET(0)
        LET # 3
          %ebx
          SUB(%eax, 1)
          LET # 3
            Tu15
            SAVE(%eax, x.8)
            LET # -1
              %eax
              CALLDIR(sum.7)
                [%ebx]
                []
              LET # 3
                %ebx
                RESTORE(x.8)
                ANS # 3
                  ADD(%eax, %ebx)
  ----- end fundef -----
  LET # 4
    %eax
    SET(10000)
    LET # 4
      %eax
      CALLDIR(sum.7)
        [%eax]
        []
      ANS # external
        CALLDIR(min_caml_print_int)
          [%eax]
          []
