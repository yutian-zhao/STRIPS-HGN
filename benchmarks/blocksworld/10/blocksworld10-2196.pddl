

(define (problem blocksworld10-2196)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 )
(:init
(arm-empty)
(on b1 b10)
(on-table b2)
(on b3 b1)
(on-table b4)
(on b5 b4)
(on b6 b8)
(on-table b7)
(on b8 b9)
(on b9 b2)
(on b10 b5)
(clear b3)
(clear b6)
(clear b7)
)
(:goal
(and
(on b1 b9)
(on b2 b1)
(on b3 b4)
(on b4 b8)
(on b5 b10)
(on b6 b2)
(on b8 b7)
(on b10 b6))
)
)


