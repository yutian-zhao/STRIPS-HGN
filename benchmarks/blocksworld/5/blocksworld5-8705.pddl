

(define (problem blocksworld5-8705)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 )
(:init
(arm-empty)
(on b1 b3)
(on b2 b4)
(on b3 b2)
(on b4 b5)
(on-table b5)
(clear b1)
)
(:goal
(and
(on b1 b5)
(on b2 b1)
(on b3 b2))
)
)


