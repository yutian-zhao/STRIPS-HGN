

(define (problem blocksworld7-3862)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 )
(:init
(arm-empty)
(on b1 b7)
(on-table b2)
(on b3 b5)
(on-table b4)
(on b5 b2)
(on b6 b3)
(on-table b7)
(clear b1)
(clear b4)
(clear b6)
)
(:goal
(and
(on b2 b6)
(on b3 b2)
(on b4 b7)
(on b5 b3)
(on b6 b1)
(on b7 b5))
)
)


