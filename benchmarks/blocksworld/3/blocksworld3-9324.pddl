

(define (problem blocksworld3-9324)
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
(on b3 b1))
)
)


