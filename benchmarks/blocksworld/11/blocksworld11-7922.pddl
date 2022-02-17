

(define (problem BW-rand-11)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 )
(:init
(arm-empty)
(on b1 b2)
(on-table b2)
(on b3 b1)
(on b4 b8)
(on b5 b3)
(on-table b6)
(on-table b7)
(on-table b8)
(on b9 b7)
(on-table b10)
(on b11 b5)
(clear b4)
(clear b6)
(clear b9)
(clear b10)
(clear b11)
)
(:goal
(and
(on b1 b6)
(on b2 b5)
(on b3 b11)
(on b4 b9)
(on b5 b7)
(on b6 b4)
(on b7 b3)
(on b8 b1)
(on b11 b10))
)
)


