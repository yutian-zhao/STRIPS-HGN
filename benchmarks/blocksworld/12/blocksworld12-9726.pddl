

(define (problem blocksworld12-9726)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on-table b1)
(on-table b2)
(on b3 b1)
(on b4 b9)
(on b5 b7)
(on b6 b11)
(on b7 b4)
(on-table b8)
(on b9 b8)
(on b10 b3)
(on b11 b5)
(on b12 b6)
(clear b2)
(clear b10)
(clear b12)
)
(:goal
(and
(on b1 b5)
(on b3 b1)
(on b5 b2)
(on b6 b12)
(on b7 b8)
(on b8 b9)
(on b10 b11))
)
)


