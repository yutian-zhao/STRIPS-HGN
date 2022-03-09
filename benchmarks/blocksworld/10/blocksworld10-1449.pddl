

(define (problem blocksworld10-1449)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 )
(:init
(arm-empty)
(on-table b1)
(on b2 b6)
(on b3 b2)
(on b4 b9)
(on-table b5)
(on b6 b5)
(on-table b7)
(on b8 b1)
(on b9 b7)
(on b10 b3)
(clear b4)
(clear b8)
(clear b10)
)
(:goal
(and
(on b3 b4)
(on b4 b9)
(on b5 b2)
(on b6 b5)
(on b7 b8)
(on b8 b1)
(on b9 b7)
(on b10 b6))
)
)


