

(define (problem blocksworld12-1551)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on-table b1)
(on b2 b6)
(on b3 b2)
(on-table b4)
(on b5 b1)
(on b6 b12)
(on b7 b8)
(on b8 b3)
(on b9 b10)
(on-table b10)
(on b11 b4)
(on b12 b5)
(clear b7)
(clear b9)
(clear b11)
)
(:goal
(and
(on b1 b4)
(on b3 b2)
(on b4 b11)
(on b5 b6)
(on b6 b9)
(on b8 b10)
(on b9 b8)
(on b10 b12)
(on b11 b3))
)
)


