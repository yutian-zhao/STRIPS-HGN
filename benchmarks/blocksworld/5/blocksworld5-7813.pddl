

(define (problem blocksworld5-7813)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 )
(:init
(arm-empty)
(on b1 b2)
(on b2 b4)
(on b3 b1)
(on b4 b5)
(on-table b5)
(clear b3)
)
(:goal
(and
(on b2 b5)
(on b4 b2))
)
)


