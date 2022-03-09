

(define (problem blocksworld12-7167)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on b1 b8)
(on b2 b11)
(on b3 b2)
(on b4 b7)
(on-table b5)
(on b6 b10)
(on b7 b3)
(on b8 b12)
(on b9 b4)
(on-table b10)
(on b11 b1)
(on b12 b6)
(clear b5)
(clear b9)
)
(:goal
(and
(on b1 b3)
(on b6 b8)
(on b7 b12)
(on b8 b2)
(on b9 b7)
(on b10 b1)
(on b11 b9))
)
)


