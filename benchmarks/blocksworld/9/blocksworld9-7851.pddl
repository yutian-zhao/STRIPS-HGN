

(define (problem blocksworld9-7851)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 )
(:init
(arm-empty)
(on b1 b7)
(on b2 b4)
(on b3 b5)
(on b4 b1)
(on-table b5)
(on-table b6)
(on b7 b9)
(on-table b8)
(on-table b9)
(clear b2)
(clear b3)
(clear b6)
(clear b8)
)
(:goal
(and
(on b1 b7)
(on b2 b1)
(on b4 b6)
(on b8 b4))
)
)


