

(define (problem blocksworld10-2473)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 )
(:init
(arm-empty)
(on b1 b3)
(on b2 b9)
(on b3 b7)
(on b4 b8)
(on b5 b2)
(on b6 b10)
(on-table b7)
(on-table b8)
(on-table b9)
(on b10 b1)
(clear b4)
(clear b5)
(clear b6)
)
(:goal
(and
(on b1 b10)
(on b2 b9)
(on b3 b8)
(on b5 b2)
(on b6 b3)
(on b7 b4)
(on b10 b5))
)
)


