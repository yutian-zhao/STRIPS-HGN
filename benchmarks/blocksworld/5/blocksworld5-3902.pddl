

(define (problem blocksworld5-3902)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 )
(:init
(arm-empty)
(on-table b1)
(on-table b2)
(on b3 b2)
(on b4 b1)
(on-table b5)
(clear b3)
(clear b4)
(clear b5)
)
(:goal
(and
(on b2 b4)
(on b4 b3))
)
)


