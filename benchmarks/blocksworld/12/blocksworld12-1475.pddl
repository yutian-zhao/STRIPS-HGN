

(define (problem blocksworld12-1475)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on b1 b2)
(on-table b2)
(on b3 b7)
(on b4 b3)
(on b5 b11)
(on b6 b8)
(on b7 b9)
(on-table b8)
(on-table b9)
(on b10 b4)
(on-table b11)
(on b12 b10)
(clear b1)
(clear b5)
(clear b6)
(clear b12)
)
(:goal
(and
(on b1 b2)
(on b2 b3)
(on b4 b8)
(on b7 b1)
(on b8 b5)
(on b9 b11)
(on b10 b4)
(on b11 b12)
(on b12 b10))
)
)


