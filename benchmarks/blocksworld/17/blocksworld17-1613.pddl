

(define (problem blocksworld17-1613)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 )
(:init
(arm-empty)
(on b1 b4)
(on b2 b16)
(on b3 b12)
(on b4 b5)
(on b5 b17)
(on b6 b8)
(on b7 b14)
(on b8 b13)
(on-table b9)
(on b10 b1)
(on b11 b10)
(on b12 b2)
(on-table b13)
(on-table b14)
(on b15 b9)
(on-table b16)
(on b17 b15)
(clear b3)
(clear b6)
(clear b7)
(clear b11)
)
(:goal
(and
(on b1 b5)
(on b2 b9)
(on b4 b11)
(on b5 b4)
(on b8 b14)
(on b9 b16)
(on b11 b3)
(on b14 b17)
(on b15 b12)
(on b16 b1)
(on b17 b2))
)
)

