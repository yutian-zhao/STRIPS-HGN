

(define (problem blocksworld12-6330)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on b1 b8)
(on b2 b10)
(on b3 b11)
(on-table b4)
(on b5 b3)
(on-table b6)
(on b7 b12)
(on b8 b5)
(on b9 b7)
(on b10 b6)
(on-table b11)
(on b12 b1)
(clear b2)
(clear b4)
(clear b9)
)
(:goal
(and
(on b1 b11)
(on b2 b7)
(on b3 b8)
(on b6 b2)
(on b10 b6)
(on b12 b4))
)
)


