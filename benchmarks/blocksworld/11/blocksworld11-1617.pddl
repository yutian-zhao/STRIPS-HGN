

(define (problem BW-rand-11)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 )
(:init
(arm-empty)
(on b1 b7)
(on b2 b8)
(on b3 b4)
(on-table b4)
(on b5 b10)
(on b6 b11)
(on b7 b5)
(on b8 b9)
(on-table b9)
(on b10 b6)
(on-table b11)
(clear b1)
(clear b2)
(clear b3)
)
(:goal
(and
(on b1 b10)
(on b5 b6)
(on b6 b1)
(on b7 b2)
(on b8 b9)
(on b9 b7)
(on b10 b4)
(on b11 b5))
)
)


