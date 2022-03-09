

(define (problem blocksworld10-9086)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 )
(:init
(arm-empty)
(on-table b1)
(on b2 b5)
(on b3 b4)
(on b4 b9)
(on-table b5)
(on b6 b3)
(on b7 b8)
(on b8 b10)
(on b9 b7)
(on b10 b1)
(clear b2)
(clear b6)
)
(:goal
(and
(on b1 b7)
(on b4 b1)
(on b5 b4)
(on b6 b9)
(on b7 b8)
(on b9 b10)
(on b10 b2))
)
)


