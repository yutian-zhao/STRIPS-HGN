

(define (problem blocksworld18-1004)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 )
(:init
(arm-empty)
(on b1 b10)
(on b2 b13)
(on b3 b8)
(on-table b4)
(on b5 b9)
(on b6 b14)
(on b7 b3)
(on-table b8)
(on b9 b7)
(on b10 b11)
(on b11 b12)
(on b12 b15)
(on b13 b6)
(on b14 b17)
(on b15 b5)
(on b16 b4)
(on b17 b16)
(on b18 b1)
(clear b2)
(clear b18)
)
(:goal
(and
(on b1 b8)
(on b3 b11)
(on b4 b15)
(on b5 b13)
(on b6 b17)
(on b8 b18)
(on b9 b2)
(on b10 b16)
(on b11 b12)
(on b12 b1)
(on b13 b9)
(on b15 b10)
(on b16 b14)
(on b18 b5))
)
)


