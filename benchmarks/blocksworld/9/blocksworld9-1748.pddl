

(define (problem BW-rand-9)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 )
(:init
(arm-empty)
(on-table b1)
(on b2 b8)
(on b3 b2)
(on b4 b1)
(on b5 b7)
(on b6 b9)
(on-table b7)
(on b8 b6)
(on b9 b4)
(clear b3)
(clear b5)
)
(:goal
(and
(on b1 b2)
(on b3 b9)
(on b4 b5)
(on b5 b6)
(on b6 b8)
(on b8 b3)
(on b9 b7))
)
)


