

(define (problem blocksworld7-6169)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 )
(:init
(arm-empty)
(on b1 b4)
(on b2 b5)
(on b3 b6)
(on b4 b7)
(on b5 b1)
(on-table b6)
(on b7 b3)
(clear b2)
)
(:goal
(and
(on b1 b7)
(on b3 b1)
(on b4 b6)
(on b5 b2)
(on b6 b5)
(on b7 b4))
)
)


