

(define (problem blocksworld5-2110)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 )
(:init
(arm-empty)
(on b1 b4)
(on-table b2)
(on-table b3)
(on b4 b3)
(on b5 b2)
(clear b1)
(clear b5)
)
(:goal
(and
(on b1 b2)
(on b2 b4)
(on b3 b5)
(on b4 b3))
)
)


