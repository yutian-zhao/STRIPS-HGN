

(define (problem blocksworld16-3422)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 )
(:init
(arm-empty)
(on b1 b15)
(on b2 b10)
(on b3 b7)
(on-table b4)
(on b5 b4)
(on b6 b1)
(on b7 b12)
(on b8 b11)
(on-table b9)
(on-table b10)
(on b11 b5)
(on-table b12)
(on-table b13)
(on-table b14)
(on b15 b8)
(on b16 b9)
(clear b2)
(clear b3)
(clear b6)
(clear b13)
(clear b14)
(clear b16)
)
(:goal
(and
(on b1 b4)
(on b3 b15)
(on b4 b13)
(on b5 b9)
(on b6 b2)
(on b7 b11)
(on b8 b12)
(on b9 b16)
(on b10 b7)
(on b11 b5)
(on b13 b6)
(on b14 b3)
(on b16 b8))
)
)

