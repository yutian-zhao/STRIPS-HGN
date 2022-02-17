

(define (problem BW-rand-13)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 )
(:init
(arm-empty)
(on b1 b4)
(on b2 b8)
(on b3 b11)
(on b4 b10)
(on-table b5)
(on b6 b12)
(on b7 b5)
(on b8 b7)
(on-table b9)
(on-table b10)
(on b11 b2)
(on b12 b3)
(on b13 b1)
(clear b6)
(clear b9)
(clear b13)
)
(:goal
(and
(on b1 b2)
(on b3 b5)
(on b5 b13)
(on b8 b10)
(on b10 b7)
(on b11 b4)
(on b12 b8))
)
)


