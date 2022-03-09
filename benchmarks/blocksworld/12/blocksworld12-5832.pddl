

(define (problem blocksworld12-5832)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on b1 b11)
(on b2 b4)
(on-table b3)
(on b4 b10)
(on b5 b1)
(on-table b6)
(on b7 b6)
(on b8 b2)
(on-table b9)
(on b10 b5)
(on b11 b3)
(on b12 b8)
(clear b7)
(clear b9)
(clear b12)
)
(:goal
(and
(on b1 b9)
(on b2 b4)
(on b3 b10)
(on b4 b1)
(on b5 b7)
(on b7 b3)
(on b9 b8)
(on b10 b6)
(on b11 b2)
(on b12 b11))
)
)


