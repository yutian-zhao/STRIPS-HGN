

(define (problem blocksworld17-6851)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 )
(:init
(arm-empty)
(on-table b1)
(on b2 b13)
(on b3 b10)
(on-table b4)
(on b5 b7)
(on b6 b3)
(on b7 b12)
(on b8 b16)
(on b9 b14)
(on b10 b9)
(on b11 b8)
(on b12 b17)
(on b13 b6)
(on-table b14)
(on b15 b5)
(on b16 b1)
(on b17 b2)
(clear b4)
(clear b11)
(clear b15)
)
(:goal
(and
(on b1 b16)
(on b2 b13)
(on b3 b2)
(on b5 b4)
(on b6 b11)
(on b7 b17)
(on b9 b7)
(on b10 b3)
(on b12 b15)
(on b13 b5)
(on b14 b1)
(on b15 b10)
(on b16 b8)
(on b17 b12))
)
)


