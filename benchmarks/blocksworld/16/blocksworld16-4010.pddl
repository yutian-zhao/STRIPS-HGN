

(define (problem blocksworld16-4010)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 )
(:init
(arm-empty)
(on b1 b14)
(on-table b2)
(on b3 b9)
(on-table b4)
(on b5 b8)
(on-table b6)
(on-table b7)
(on b8 b7)
(on b9 b1)
(on b10 b3)
(on b11 b5)
(on b12 b11)
(on b13 b4)
(on b14 b12)
(on b15 b16)
(on b16 b2)
(clear b6)
(clear b10)
(clear b13)
(clear b15)
)
(:goal
(and
(on b1 b12)
(on b3 b6)
(on b4 b1)
(on b5 b15)
(on b6 b16)
(on b7 b5)
(on b8 b4)
(on b9 b8)
(on b11 b14)
(on b12 b13)
(on b13 b11)
(on b14 b7)
(on b16 b9))
)
)

