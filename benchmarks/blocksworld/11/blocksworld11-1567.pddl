

(define (problem BW-rand-11)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 )
(:init
(arm-empty)
(on-table b1)
(on b2 b6)
(on b3 b10)
(on b4 b3)
(on-table b5)
(on-table b6)
(on-table b7)
(on b8 b1)
(on b9 b8)
(on b10 b7)
(on-table b11)
(clear b2)
(clear b4)
(clear b5)
(clear b9)
(clear b11)
)
(:goal
(and
(on b2 b3)
(on b3 b9)
(on b5 b4)
(on b7 b11)
(on b8 b10)
(on b9 b1))
)
)


