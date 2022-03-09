

(define (problem blocksworld3-2739)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 )
(:init
(arm-empty)
(on-table b1)
(on b2 b3)
(on b3 b1)
(clear b2)
)
(:goal
(and
(on b1 b3))
)
)


