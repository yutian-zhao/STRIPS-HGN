

(define (problem blocksworld10-3409)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 )
(:init
(arm-empty)
(on-table b1)
(on b2 b6)
(on b3 b8)
(on b4 b2)
(on b5 b9)
(on b6 b3)
(on b7 b4)
(on b8 b5)
(on b9 b1)
(on-table b10)
(clear b7)
(clear b10)
)
(:goal
(and
(on b2 b8)
(on b3 b10)
(on b4 b7)
(on b5 b4)
(on b7 b9)
(on b8 b3)
(on b9 b2)
(on b10 b6))
)
)


