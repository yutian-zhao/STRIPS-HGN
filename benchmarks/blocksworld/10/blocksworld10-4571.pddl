

(define (problem blocksworld10-4571)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 )
(:init
(arm-empty)
(on b1 b9)
(on-table b2)
(on-table b3)
(on-table b4)
(on b5 b2)
(on-table b6)
(on b7 b5)
(on b8 b6)
(on b9 b10)
(on b10 b3)
(clear b1)
(clear b4)
(clear b7)
(clear b8)
)
(:goal
(and
(on b1 b7)
(on b2 b6)
(on b3 b2)
(on b4 b9)
(on b7 b10)
(on b8 b3)
(on b9 b1))
)
)


