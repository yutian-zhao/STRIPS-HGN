

(define (problem blocksworld9-1039)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 )
(:init
(arm-empty)
(on b1 b9)
(on b2 b7)
(on-table b3)
(on b4 b3)
(on-table b5)
(on b6 b2)
(on b7 b8)
(on b8 b4)
(on b9 b6)
(clear b1)
(clear b5)
)
(:goal
(and
(on b1 b8)
(on b3 b1)
(on b4 b2)
(on b6 b9)
(on b8 b5)
(on b9 b3))
)
)


