

(define (problem blocksworld9-7059)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 )
(:init
(arm-empty)
(on b1 b6)
(on-table b2)
(on-table b3)
(on b4 b9)
(on b5 b1)
(on-table b6)
(on b7 b3)
(on b8 b5)
(on b9 b8)
(clear b2)
(clear b4)
(clear b7)
)
(:goal
(and
(on b1 b5)
(on b2 b4)
(on b5 b9)
(on b6 b7)
(on b8 b3))
)
)


