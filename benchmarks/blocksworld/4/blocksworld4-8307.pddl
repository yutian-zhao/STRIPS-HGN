

(define (problem blocksworld4-8307)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 )
(:init
(arm-empty)
(on-table b1)
(on b2 b1)
(on b3 b2)
(on-table b4)
(clear b3)
(clear b4)
)
(:goal
(and
(on b1 b3))
)
)


