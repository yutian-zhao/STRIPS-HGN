

(define (problem blocksworld3-7074)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 )
(:init
(arm-empty)
(on b1 b3)
(on b2 b1)
(on-table b3)
(clear b2)
)
(:goal
(and
(on b3 b1))
)
)


