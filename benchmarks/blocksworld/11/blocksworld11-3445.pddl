

(define (problem BW-rand-11)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 )
(:init
(arm-empty)
(on b1 b8)
(on b2 b4)
(on b3 b11)
(on-table b4)
(on b5 b7)
(on b6 b1)
(on b7 b9)
(on-table b8)
(on b9 b3)
(on-table b10)
(on-table b11)
(clear b2)
(clear b5)
(clear b6)
(clear b10)
)
(:goal
(and
(on b4 b2)
(on b5 b7)
(on b6 b1)
(on b7 b8)
(on b9 b5)
(on b10 b3)
(on b11 b10))
)
)


