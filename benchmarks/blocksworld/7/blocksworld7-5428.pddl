

(define (problem blocksworld7-5428)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 )
(:init
(arm-empty)
(on-table b1)
(on-table b2)
(on b3 b1)
(on b4 b7)
(on-table b5)
(on b6 b2)
(on b7 b6)
(clear b3)
(clear b4)
(clear b5)
)
(:goal
(and
(on b1 b3)
(on b2 b1)
(on b4 b6)
(on b6 b7))
)
)


