

(define (problem blocksworld12-3315)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on b1 b10)
(on b2 b12)
(on b3 b8)
(on b4 b6)
(on b5 b9)
(on-table b6)
(on-table b7)
(on-table b8)
(on-table b9)
(on b10 b7)
(on b11 b5)
(on b12 b4)
(clear b1)
(clear b2)
(clear b3)
(clear b11)
)
(:goal
(and
(on b4 b1)
(on b5 b7)
(on b6 b5)
(on b7 b8)
(on b8 b10)
(on b10 b2)
(on b11 b4)
(on b12 b11))
)
)


