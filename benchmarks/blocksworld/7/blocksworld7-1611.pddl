

(define (problem blocksworld7-1611)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 )
(:init
(arm-empty)
(on-table b1)
(on b2 b7)
(on-table b3)
(on b4 b6)
(on b5 b4)
(on-table b6)
(on b7 b3)
(clear b1)
(clear b2)
(clear b5)
)
(:goal
(and
(on b3 b7)
(on b4 b5)
(on b5 b2)
(on b7 b4))
)
)


