

(define (problem blocksworld10-3208)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 )
(:init
(arm-empty)
(on b1 b9)
(on b2 b8)
(on b3 b10)
(on b4 b7)
(on b5 b6)
(on-table b6)
(on b7 b5)
(on-table b8)
(on b9 b4)
(on-table b10)
(clear b1)
(clear b2)
(clear b3)
)
(:goal
(and
(on b1 b5)
(on b3 b9)
(on b4 b8)
(on b5 b3)
(on b8 b2)
(on b10 b4))
)
)


