

(define (problem blocksworld16-7530)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 )
(:init
(arm-empty)
(on b1 b9)
(on-table b2)
(on b3 b12)
(on b4 b13)
(on b5 b2)
(on-table b6)
(on b7 b10)
(on b8 b14)
(on b9 b5)
(on b10 b3)
(on b11 b4)
(on b12 b1)
(on-table b13)
(on b14 b7)
(on b15 b6)
(on-table b16)
(clear b8)
(clear b11)
(clear b15)
(clear b16)
)
(:goal
(and
(on b1 b3)
(on b3 b10)
(on b4 b11)
(on b5 b16)
(on b6 b1)
(on b8 b9)
(on b9 b14)
(on b11 b5)
(on b12 b13)
(on b13 b15)
(on b15 b2)
(on b16 b8))
)
)


