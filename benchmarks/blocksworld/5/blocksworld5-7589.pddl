

(define (problem blocksworld5-7589)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 )
(:init
(arm-empty)
(on b1 b3)
(on-table b2)
(on-table b3)
(on-table b4)
(on b5 b1)
(clear b2)
(clear b4)
(clear b5)
)
(:goal
(and
(on b3 b5)
(on b4 b3))
)
)


