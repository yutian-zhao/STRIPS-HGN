

(define (problem blocksworld12-7628)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on b1 b12)
(on b2 b1)
(on b3 b11)
(on-table b4)
(on-table b5)
(on b6 b9)
(on-table b7)
(on b8 b5)
(on-table b9)
(on b10 b3)
(on b11 b8)
(on-table b12)
(clear b2)
(clear b4)
(clear b6)
(clear b7)
(clear b10)
)
(:goal
(and
(on b1 b12)
(on b2 b4)
(on b3 b9)
(on b4 b3)
(on b5 b2)
(on b8 b6)
(on b9 b8)
(on b10 b7)
(on b12 b11))
)
)

