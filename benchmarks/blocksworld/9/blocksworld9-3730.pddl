

(define (problem blocksworld9-3730)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 )
(:init
(arm-empty)
(on b1 b4)
(on b2 b8)
(on b3 b9)
(on b4 b6)
(on b5 b1)
(on-table b6)
(on-table b7)
(on-table b8)
(on b9 b2)
(clear b3)
(clear b5)
(clear b7)
)
(:goal
(and
(on b2 b3)
(on b3 b1)
(on b5 b9)
(on b6 b2)
(on b8 b7))
)
)


