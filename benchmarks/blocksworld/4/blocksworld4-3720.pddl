

(define (problem blocksworld4-3720)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 )
(:init
(arm-empty)
(on-table b1)
(on b2 b3)
(on b3 b4)
(on-table b4)
(clear b1)
(clear b2)
)
(:goal
(and
(on b1 b4))
)
)

