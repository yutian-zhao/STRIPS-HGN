

(define (problem BW-rand-12)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on b1 b2)
(on-table b2)
(on b3 b1)
(on b4 b6)
(on b5 b4)
(on-table b6)
(on b7 b8)
(on b8 b5)
(on b9 b7)
(on b10 b3)
(on b11 b12)
(on-table b12)
(clear b9)
(clear b10)
(clear b11)
)
(:goal
(and
(on b2 b7)
(on b3 b6)
(on b4 b3)
(on b5 b11)
(on b6 b12)
(on b7 b1)
(on b8 b10)
(on b11 b9)
(on b12 b2))
)
)


