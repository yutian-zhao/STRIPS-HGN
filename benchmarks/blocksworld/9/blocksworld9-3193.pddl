

(define (problem blocksworld9-3193)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 )
(:init
(arm-empty)
(on-table b1)
(on b2 b7)
(on b3 b5)
(on b4 b2)
(on b5 b9)
(on b6 b8)
(on b7 b3)
(on-table b8)
(on-table b9)
(clear b1)
(clear b4)
(clear b6)
)
(:goal
(and
(on b1 b8)
(on b2 b9)
(on b3 b4)
(on b5 b1)
(on b6 b7)
(on b7 b5)
(on b8 b3)
(on b9 b6))
)
)

