

(define (problem blocksworld7-8979)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 )
(:init
(arm-empty)
(on b1 b6)
(on-table b2)
(on b3 b1)
(on b4 b2)
(on b5 b4)
(on b6 b7)
(on b7 b5)
(clear b3)
)
(:goal
(and
(on b1 b5)
(on b2 b1)
(on b4 b2)
(on b5 b7)
(on b6 b4))
)
)


