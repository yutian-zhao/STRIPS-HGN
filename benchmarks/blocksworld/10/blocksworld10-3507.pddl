

(define (problem blocksworld10-3507)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 )
(:init
(arm-empty)
(on-table b1)
(on-table b2)
(on b3 b10)
(on b4 b5)
(on b5 b1)
(on b6 b4)
(on-table b7)
(on-table b8)
(on b9 b8)
(on-table b10)
(clear b2)
(clear b3)
(clear b6)
(clear b7)
(clear b9)
)
(:goal
(and
(on b1 b10)
(on b3 b5)
(on b4 b6)
(on b5 b4)
(on b6 b8)
(on b7 b3)
(on b8 b9)
(on b9 b2))
)
)


