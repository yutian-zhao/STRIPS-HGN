

(define (problem blocksworld16-3085)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 )
(:init
(arm-empty)
(on b1 b4)
(on b2 b5)
(on b3 b1)
(on b4 b12)
(on b5 b15)
(on b6 b16)
(on b7 b11)
(on-table b8)
(on b9 b7)
(on b10 b6)
(on b11 b3)
(on b12 b2)
(on b13 b10)
(on-table b14)
(on b15 b8)
(on b16 b9)
(clear b13)
(clear b14)
)
(:goal
(and
(on b1 b16)
(on b2 b15)
(on b3 b1)
(on b6 b8)
(on b7 b9)
(on b8 b12)
(on b9 b6)
(on b11 b3)
(on b12 b10)
(on b13 b2)
(on b14 b7)
(on b15 b11))
)
)


