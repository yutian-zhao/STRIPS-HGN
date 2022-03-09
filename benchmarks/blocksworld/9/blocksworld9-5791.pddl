

(define (problem blocksworld9-5791)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 )
(:init
(arm-empty)
(on b1 b3)
(on b2 b8)
(on b3 b6)
(on b4 b9)
(on-table b5)
(on b6 b4)
(on b7 b2)
(on b8 b5)
(on-table b9)
(clear b1)
(clear b7)
)
(:goal
(and
(on b2 b6)
(on b3 b4)
(on b4 b7)
(on b5 b1)
(on b6 b9)
(on b8 b3))
)
)


