

(define (problem blocksworld12-1442)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on b1 b8)
(on-table b2)
(on b3 b6)
(on b4 b1)
(on b5 b12)
(on b6 b5)
(on-table b7)
(on b8 b9)
(on-table b9)
(on b10 b3)
(on b11 b10)
(on b12 b7)
(clear b2)
(clear b4)
(clear b11)
)
(:goal
(and
(on b1 b9)
(on b3 b11)
(on b5 b8)
(on b6 b5)
(on b7 b1)
(on b8 b12)
(on b9 b10)
(on b10 b3)
(on b11 b2)
(on b12 b4))
)
)


