

(define (problem blocksworld5-3825)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 )
(:init
(arm-empty)
(on-table b1)
(on-table b2)
(on b3 b5)
(on b4 b2)
(on-table b5)
(clear b1)
(clear b3)
(clear b4)
)
(:goal
(and
(on b1 b3)
(on b2 b5)
(on b4 b2))
)
)


