

(define (problem blocksworld7-2298)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 )
(:init
(arm-empty)
(on b1 b4)
(on-table b2)
(on b3 b2)
(on-table b4)
(on b5 b6)
(on-table b6)
(on b7 b3)
(clear b1)
(clear b5)
(clear b7)
)
(:goal
(and
(on b1 b3)
(on b4 b6)
(on b5 b1)
(on b6 b2)
(on b7 b4))
)
)


