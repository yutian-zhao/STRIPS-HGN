

(define (problem BW-rand-13)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 )
(:init
(arm-empty)
(on-table b1)
(on b2 b12)
(on-table b3)
(on b4 b7)
(on b5 b9)
(on b6 b8)
(on b7 b3)
(on b8 b10)
(on b9 b6)
(on-table b10)
(on b11 b13)
(on b12 b5)
(on-table b13)
(clear b1)
(clear b2)
(clear b4)
(clear b11)
)
(:goal
(and
(on b1 b12)
(on b2 b10)
(on b3 b2)
(on b4 b13)
(on b7 b4)
(on b9 b11)
(on b10 b1)
(on b11 b5))
)
)


