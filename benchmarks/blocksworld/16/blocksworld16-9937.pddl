

(define (problem blocksworld16-9937)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 )
(:init
(arm-empty)
(on-table b1)
(on b2 b8)
(on-table b3)
(on b4 b13)
(on-table b5)
(on b6 b11)
(on-table b7)
(on b8 b1)
(on b9 b10)
(on-table b10)
(on b11 b2)
(on b12 b15)
(on b13 b12)
(on b14 b9)
(on b15 b6)
(on-table b16)
(clear b3)
(clear b4)
(clear b5)
(clear b7)
(clear b14)
(clear b16)
)
(:goal
(and
(on b3 b15)
(on b5 b11)
(on b6 b16)
(on b7 b5)
(on b9 b2)
(on b10 b4)
(on b11 b9)
(on b12 b13)
(on b13 b1)
(on b15 b12))
)
)

