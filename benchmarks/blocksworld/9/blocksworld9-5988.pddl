

(define (problem blocksworld9-5988)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 )
(:init
(arm-empty)
(on b1 b4)
(on b2 b8)
(on-table b3)
(on b4 b3)
(on-table b5)
(on b6 b2)
(on b7 b9)
(on-table b8)
(on b9 b6)
(clear b1)
(clear b5)
(clear b7)
)
(:goal
(and
(on b1 b5)
(on b2 b8)
(on b3 b4)
(on b4 b1)
(on b5 b7)
(on b7 b9))
)
)


