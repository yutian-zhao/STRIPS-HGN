

(define (problem blocksworld10-2692)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 )
(:init
(arm-empty)
(on-table b1)
(on b2 b3)
(on b3 b10)
(on b4 b8)
(on b5 b7)
(on b6 b5)
(on b7 b1)
(on b8 b2)
(on-table b9)
(on-table b10)
(clear b4)
(clear b6)
(clear b9)
)
(:goal
(and
(on b1 b6)
(on b2 b3)
(on b3 b10)
(on b5 b1)
(on b6 b7)
(on b7 b2)
(on b9 b4)
(on b10 b9))
)
)


