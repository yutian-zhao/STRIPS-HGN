

(define (problem blocksworld4-9130)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 )
(:init
(arm-empty)
(on b1 b4)
(on-table b2)
(on b3 b2)
(on b4 b3)
(clear b1)
)
(:goal
(and
(on b1 b4)
(on b2 b3))
)
)


