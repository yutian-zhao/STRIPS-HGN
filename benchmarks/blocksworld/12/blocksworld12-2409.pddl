

(define (problem blocksworld12-2409)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on b1 b6)
(on-table b2)
(on b3 b7)
(on b4 b12)
(on b5 b2)
(on b6 b8)
(on-table b7)
(on b8 b3)
(on b9 b10)
(on b10 b11)
(on b11 b4)
(on b12 b5)
(clear b1)
(clear b9)
)
(:goal
(and
(on b1 b9)
(on b2 b8)
(on b4 b12)
(on b6 b4)
(on b8 b10)
(on b9 b5)
(on b10 b1)
(on b11 b7)
(on b12 b2))
)
)


