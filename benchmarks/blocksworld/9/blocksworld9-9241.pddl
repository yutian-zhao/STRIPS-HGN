

(define (problem blocksworld9-9241)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 )
(:init
(arm-empty)
(on b1 b3)
(on-table b2)
(on-table b3)
(on-table b4)
(on b5 b1)
(on b6 b9)
(on-table b7)
(on b8 b6)
(on-table b9)
(clear b2)
(clear b4)
(clear b5)
(clear b7)
(clear b8)
)
(:goal
(and
(on b2 b1)
(on b3 b5)
(on b4 b3)
(on b6 b7)
(on b7 b2)
(on b8 b9)
(on b9 b6))
)
)


