

(define (problem blocksworld9-9629)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 )
(:init
(arm-empty)
(on-table b1)
(on-table b2)
(on b3 b1)
(on b4 b5)
(on b5 b8)
(on b6 b2)
(on b7 b9)
(on-table b8)
(on b9 b3)
(clear b4)
(clear b6)
(clear b7)
)
(:goal
(and
(on b1 b7)
(on b2 b5)
(on b5 b9)
(on b7 b3)
(on b8 b1)
(on b9 b4))
)
)


