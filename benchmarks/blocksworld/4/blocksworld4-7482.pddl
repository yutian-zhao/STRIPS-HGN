

(define (problem blocksworld4-7482)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 )
(:init
(arm-empty)
(on b1 b2)
(on-table b2)
(on-table b3)
(on b4 b3)
(clear b1)
(clear b4)
)
(:goal
(and
(on b1 b2)
(on b2 b3))
)
)


