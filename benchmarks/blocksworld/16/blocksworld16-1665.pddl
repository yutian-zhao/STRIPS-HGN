

(define (problem blocksworld16-1665)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 )
(:init
(arm-empty)
(on b1 b16)
(on b2 b6)
(on b3 b11)
(on b4 b2)
(on b5 b9)
(on-table b6)
(on b7 b14)
(on-table b8)
(on b9 b3)
(on b10 b12)
(on b11 b10)
(on b12 b13)
(on-table b13)
(on b14 b1)
(on b15 b4)
(on b16 b8)
(clear b5)
(clear b7)
(clear b15)
)
(:goal
(and
(on b1 b5)
(on b2 b14)
(on b3 b12)
(on b5 b10)
(on b6 b13)
(on b9 b6)
(on b10 b7)
(on b11 b4)
(on b14 b3)
(on b16 b8))
)
)

