

(define (problem blocksworld3-2718)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 )
(:init
(arm-empty)
(on b1 b2)
(on-table b2)
(on-table b3)
(clear b1)
(clear b3)
)
(:goal
(and
(on b3 b2))
)
)


