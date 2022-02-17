

(define (problem BW-rand-13)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 )
(:init
(arm-empty)
(on b1 b9)
(on b2 b13)
(on b3 b10)
(on b4 b3)
(on b5 b6)
(on-table b6)
(on-table b7)
(on b8 b5)
(on b9 b11)
(on b10 b12)
(on b11 b4)
(on-table b12)
(on b13 b1)
(clear b2)
(clear b7)
(clear b8)
)
(:goal
(and
(on b2 b12)
(on b3 b5)
(on b7 b9)
(on b8 b3)
(on b9 b8)
(on b11 b6)
(on b13 b10))
)
)


