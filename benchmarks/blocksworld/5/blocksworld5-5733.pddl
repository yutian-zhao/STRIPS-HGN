

(define (problem blocksworld5-5733)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 )
(:init
(arm-empty)
(on b1 b5)
(on b2 b1)
(on-table b3)
(on b4 b3)
(on b5 b4)
(clear b2)
)
(:goal
(and
(on b1 b4)
(on b3 b2)
(on b5 b3))
)
)


