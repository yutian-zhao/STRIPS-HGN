

(define (problem BW-rand-13)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 )
(:init
(arm-empty)
(on b1 b13)
(on b2 b10)
(on-table b3)
(on-table b4)
(on b5 b4)
(on-table b6)
(on b7 b8)
(on b8 b9)
(on-table b9)
(on b10 b6)
(on b11 b3)
(on b12 b1)
(on b13 b11)
(clear b2)
(clear b5)
(clear b7)
(clear b12)
)
(:goal
(and
(on b4 b3)
(on b6 b8)
(on b10 b11)
(on b12 b7)
(on b13 b5))
)
)


