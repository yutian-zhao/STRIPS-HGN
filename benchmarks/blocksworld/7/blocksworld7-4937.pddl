

(define (problem blocksworld7-4937)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 )
(:init
(arm-empty)
(on b1 b5)
(on-table b2)
(on b3 b6)
(on-table b4)
(on b5 b3)
(on b6 b7)
(on b7 b4)
(clear b1)
(clear b2)
)
(:goal
(and
(on b3 b2)
(on b4 b7)
(on b5 b3)
(on b7 b1))
)
)


