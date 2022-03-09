

(define (problem blocksworld12-7236)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on b1 b4)
(on b2 b6)
(on b3 b8)
(on b4 b5)
(on b5 b12)
(on b6 b3)
(on-table b7)
(on-table b8)
(on-table b9)
(on b10 b9)
(on b11 b2)
(on b12 b10)
(clear b1)
(clear b7)
(clear b11)
)
(:goal
(and
(on b1 b12)
(on b2 b9)
(on b3 b6)
(on b4 b10)
(on b5 b8)
(on b7 b5)
(on b8 b3)
(on b9 b7)
(on b11 b1)
(on b12 b2))
)
)


