

(define (problem blocksworld3-1632)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 )
(:init
(arm-empty)
(on-table b1)
(on-table b2)
(on b3 b2)
(clear b1)
(clear b3)
)
(:goal
(and
(on b1 b2))
)
)


