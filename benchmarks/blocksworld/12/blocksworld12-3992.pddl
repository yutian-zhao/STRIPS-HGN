

(define (problem blocksworld12-3992)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on b1 b7)
(on-table b2)
(on b3 b8)
(on b4 b12)
(on b5 b11)
(on-table b6)
(on b7 b2)
(on b8 b5)
(on b9 b3)
(on b10 b1)
(on b11 b4)
(on b12 b10)
(clear b6)
(clear b9)
)
(:goal
(and
(on b1 b12)
(on b2 b4)
(on b3 b10)
(on b4 b7)
(on b7 b11)
(on b8 b9)
(on b9 b1)
(on b10 b5))
)
)


