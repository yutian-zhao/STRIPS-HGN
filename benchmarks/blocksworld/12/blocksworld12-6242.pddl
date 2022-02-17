

(define (problem BW-rand-12)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on b1 b8)
(on-table b2)
(on b3 b11)
(on b4 b10)
(on b5 b6)
(on b6 b9)
(on-table b7)
(on-table b8)
(on b9 b2)
(on b10 b1)
(on-table b11)
(on b12 b7)
(clear b3)
(clear b4)
(clear b5)
(clear b12)
)
(:goal
(and
(on b1 b2)
(on b3 b8)
(on b4 b3)
(on b5 b1)
(on b6 b4)
(on b7 b10)
(on b9 b5)
(on b10 b9)
(on b12 b11))
)
)


