

(define (problem blocksworld3-2211)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 )
(:init
(arm-empty)
(on-table b1)
(on b2 b1)
(on-table b3)
(clear b2)
(clear b3)
)
(:goal
(and
(on b1 b2))
)
)


