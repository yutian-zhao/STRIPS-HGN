

(define (problem blocksworld10-2596)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 )
(:init
(arm-empty)
(on-table b1)
(on b2 b10)
(on b3 b2)
(on b4 b7)
(on b5 b8)
(on b6 b5)
(on b7 b3)
(on b8 b1)
(on b9 b4)
(on-table b10)
(clear b6)
(clear b9)
)
(:goal
(and
(on b1 b6)
(on b2 b4)
(on b3 b7)
(on b5 b9)
(on b6 b3)
(on b9 b2)
(on b10 b1))
)
)


