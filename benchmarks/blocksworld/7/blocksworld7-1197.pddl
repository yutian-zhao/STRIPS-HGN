

(define (problem blocksworld7-1197)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 )
(:init
(arm-empty)
(on-table b1)
(on b2 b6)
(on b3 b1)
(on b4 b2)
(on-table b5)
(on b6 b5)
(on-table b7)
(clear b3)
(clear b4)
(clear b7)
)
(:goal
(and
(on b2 b6)
(on b4 b3)
(on b5 b2)
(on b6 b1)
(on b7 b5))
)
)


