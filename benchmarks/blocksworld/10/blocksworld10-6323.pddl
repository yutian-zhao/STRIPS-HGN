

(define (problem blocksworld10-6323)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 )
(:init
(arm-empty)
(on-table b1)
(on b2 b4)
(on-table b3)
(on-table b4)
(on-table b5)
(on b6 b3)
(on b7 b6)
(on b8 b10)
(on b9 b2)
(on b10 b5)
(clear b1)
(clear b7)
(clear b8)
(clear b9)
)
(:goal
(and
(on b1 b5)
(on b2 b10)
(on b3 b7)
(on b4 b6)
(on b7 b2))
)
)


