

(define (problem blocksworld3-2029)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 )
(:init
(arm-empty)
(on b1 b3)
(on-table b2)
(on-table b3)
(clear b1)
(clear b2)
)
(:goal
(and
(on b1 b3)
(on b3 b2))
)
)

