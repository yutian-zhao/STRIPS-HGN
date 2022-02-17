

(define (problem BW-rand-11)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 )
(:init
(arm-empty)
(on-table b1)
(on b2 b7)
(on b3 b8)
(on b4 b6)
(on-table b5)
(on-table b6)
(on b7 b4)
(on b8 b10)
(on b9 b5)
(on b10 b11)
(on b11 b1)
(clear b2)
(clear b3)
(clear b9)
)
(:goal
(and
(on b2 b4)
(on b5 b9)
(on b6 b5)
(on b7 b1)
(on b8 b10)
(on b9 b2)
(on b10 b6)
(on b11 b3))
)
)


