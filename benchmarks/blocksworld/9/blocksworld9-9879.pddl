

(define (problem blocksworld9-9879)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 )
(:init
(arm-empty)
(on b1 b6)
(on b2 b3)
(on b3 b5)
(on b4 b2)
(on b5 b1)
(on b6 b8)
(on-table b7)
(on-table b8)
(on b9 b7)
(clear b4)
(clear b9)
)
(:goal
(and
(on b1 b5)
(on b3 b8)
(on b7 b2)
(on b8 b6))
)
)


