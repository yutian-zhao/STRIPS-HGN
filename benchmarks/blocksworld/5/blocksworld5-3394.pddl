

(define (problem blocksworld5-3394)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 )
(:init
(arm-empty)
(on b1 b5)
(on b2 b3)
(on-table b3)
(on-table b4)
(on b5 b2)
(clear b1)
(clear b4)
)
(:goal
(and
(on b1 b5)
(on b2 b1)
(on b5 b4))
)
)


