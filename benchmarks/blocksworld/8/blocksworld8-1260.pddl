

(define (problem BW-rand-8)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 )
(:init
(arm-empty)
(on-table b1)
(on-table b2)
(on b3 b8)
(on-table b4)
(on b5 b2)
(on b6 b7)
(on b7 b5)
(on b8 b1)
(clear b3)
(clear b4)
(clear b6)
)
(:goal
(and
(on b2 b1)
(on b5 b8)
(on b6 b5)
(on b8 b4))
)
)


