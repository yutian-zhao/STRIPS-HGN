

(define (problem BW-rand-9)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 )
(:init
(arm-empty)
(on b1 b5)
(on-table b2)
(on-table b3)
(on b4 b8)
(on b5 b9)
(on b6 b7)
(on b7 b3)
(on b8 b1)
(on b9 b6)
(clear b2)
(clear b4)
)
(:goal
(and
(on b1 b4)
(on b2 b3)
(on b3 b5)
(on b4 b9)
(on b5 b8)
(on b7 b2)
(on b9 b6))
)
)


