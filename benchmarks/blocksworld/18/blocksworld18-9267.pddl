

(define (problem blocksworld18-9267)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 )
(:init
(arm-empty)
(on b1 b3)
(on-table b2)
(on b3 b13)
(on b4 b18)
(on b5 b10)
(on b6 b8)
(on b7 b12)
(on b8 b9)
(on b9 b16)
(on b10 b1)
(on-table b11)
(on b12 b2)
(on b13 b11)
(on b14 b15)
(on-table b15)
(on b16 b14)
(on b17 b7)
(on b18 b6)
(clear b4)
(clear b5)
(clear b17)
)
(:goal
(and
(on b1 b10)
(on b2 b7)
(on b3 b9)
(on b4 b18)
(on b5 b3)
(on b6 b11)
(on b7 b4)
(on b9 b1)
(on b10 b8)
(on b11 b13)
(on b12 b5)
(on b16 b15)
(on b17 b12)
(on b18 b16))
)
)


