

(define (problem blocksworld19-3668)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 )
(:init
(arm-empty)
(on b1 b16)
(on b2 b14)
(on b3 b5)
(on b4 b11)
(on b5 b2)
(on-table b6)
(on b7 b6)
(on b8 b17)
(on b9 b8)
(on b10 b9)
(on-table b11)
(on-table b12)
(on-table b13)
(on b14 b10)
(on b15 b1)
(on-table b16)
(on-table b17)
(on b18 b15)
(on b19 b18)
(clear b3)
(clear b4)
(clear b7)
(clear b12)
(clear b13)
(clear b19)
)
(:goal
(and
(on b1 b18)
(on b2 b9)
(on b3 b16)
(on b4 b8)
(on b6 b3)
(on b7 b17)
(on b8 b12)
(on b9 b11)
(on b10 b7)
(on b11 b13)
(on b12 b14)
(on b13 b6)
(on b15 b1)
(on b16 b4)
(on b18 b2))
)
)

