

(define (problem BW-rand-12)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on b1 b5)
(on b2 b1)
(on b3 b12)
(on b4 b10)
(on b5 b3)
(on-table b6)
(on b7 b4)
(on b8 b11)
(on b9 b8)
(on b10 b9)
(on b11 b2)
(on b12 b6)
(clear b7)
)
(:goal
(and
(on b1 b4)
(on b2 b3)
(on b3 b6)
(on b4 b11)
(on b5 b10)
(on b6 b1)
(on b8 b5)
(on b9 b7)
(on b11 b9)
(on b12 b2))
)
)


