

(define (problem blocksworld10-2983)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 )
(:init
(arm-empty)
(on b1 b4)
(on-table b2)
(on b3 b8)
(on-table b4)
(on b5 b7)
(on b6 b2)
(on b7 b6)
(on b8 b9)
(on b9 b5)
(on b10 b1)
(clear b3)
(clear b10)
)
(:goal
(and
(on b2 b8)
(on b4 b7)
(on b5 b3)
(on b6 b4)
(on b7 b9)
(on b9 b10))
)
)

