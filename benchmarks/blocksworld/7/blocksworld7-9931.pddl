

(define (problem blocksworld7-9931)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 )
(:init
(arm-empty)
(on b1 b4)
(on b2 b1)
(on-table b3)
(on-table b4)
(on b5 b2)
(on b6 b5)
(on b7 b6)
(clear b3)
(clear b7)
)
(:goal
(and
(on b2 b4)
(on b3 b5)
(on b4 b3)
(on b5 b1))
)
)


