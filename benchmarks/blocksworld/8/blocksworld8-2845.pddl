

(define (problem BW-rand-8)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 )
(:init
(arm-empty)
(on-table b1)
(on b2 b8)
(on b3 b7)
(on b4 b2)
(on-table b5)
(on b6 b1)
(on b7 b6)
(on b8 b5)
(clear b3)
(clear b4)
)
(:goal
(and
(on b1 b3)
(on b3 b7)
(on b7 b5)
(on b8 b4))
)
)


