

(define (problem blocksworld7-3969)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 )
(:init
(arm-empty)
(on-table b1)
(on b2 b1)
(on b3 b5)
(on b4 b7)
(on b5 b4)
(on-table b6)
(on b7 b6)
(clear b2)
(clear b3)
)
(:goal
(and
(on b1 b4)
(on b2 b5)
(on b4 b7)
(on b5 b3)
(on b6 b1))
)
)


