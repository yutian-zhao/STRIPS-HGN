

(define (problem blocksworld7-5177)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 )
(:init
(arm-empty)
(on b1 b4)
(on b2 b1)
(on-table b3)
(on b4 b3)
(on b5 b2)
(on-table b6)
(on b7 b5)
(clear b6)
(clear b7)
)
(:goal
(and
(on b4 b1)
(on b5 b2)
(on b6 b3)
(on b7 b6))
)
)


