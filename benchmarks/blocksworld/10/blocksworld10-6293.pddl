

(define (problem blocksworld10-6293)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 )
(:init
(arm-empty)
(on b1 b6)
(on-table b2)
(on-table b3)
(on b4 b1)
(on-table b5)
(on b6 b8)
(on b7 b4)
(on-table b8)
(on b9 b5)
(on b10 b7)
(clear b2)
(clear b3)
(clear b9)
(clear b10)
)
(:goal
(and
(on b1 b7)
(on b2 b1)
(on b4 b3)
(on b7 b5)
(on b8 b6)
(on b9 b8)
(on b10 b9))
)
)


