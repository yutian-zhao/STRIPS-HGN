

(define (problem BW-rand-11)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 )
(:init
(arm-empty)
(on b1 b11)
(on-table b2)
(on b3 b4)
(on-table b4)
(on b5 b10)
(on b6 b5)
(on-table b7)
(on-table b8)
(on b9 b7)
(on b10 b9)
(on-table b11)
(clear b1)
(clear b2)
(clear b3)
(clear b6)
(clear b8)
)
(:goal
(and
(on b1 b5)
(on b4 b3)
(on b7 b8)
(on b9 b2)
(on b10 b7)
(on b11 b4))
)
)


