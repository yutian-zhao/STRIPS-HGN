

(define (problem blocksworld5-6474)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 )
(:init
(arm-empty)
(on b1 b4)
(on-table b2)
(on b3 b2)
(on b4 b3)
(on b5 b1)
(clear b5)
)
(:goal
(and
(on b3 b4)
(on b4 b1)
(on b5 b3))
)
)


