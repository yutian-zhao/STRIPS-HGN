

(define (problem blocksworld7-9014)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 )
(:init
(arm-empty)
(on-table b1)
(on b2 b3)
(on b3 b6)
(on b4 b7)
(on-table b5)
(on b6 b4)
(on-table b7)
(clear b1)
(clear b2)
(clear b5)
)
(:goal
(and
(on b1 b7)
(on b2 b4)
(on b3 b2)
(on b4 b6)
(on b6 b5)
(on b7 b3))
)
)


