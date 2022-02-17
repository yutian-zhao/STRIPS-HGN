

(define (problem BW-rand-12)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on b1 b11)
(on-table b2)
(on-table b3)
(on b4 b3)
(on b5 b4)
(on b6 b9)
(on b7 b12)
(on-table b8)
(on b9 b1)
(on b10 b8)
(on b11 b5)
(on b12 b6)
(clear b2)
(clear b7)
(clear b10)
)
(:goal
(and
(on b1 b2)
(on b2 b3)
(on b3 b4)
(on b4 b10)
(on b5 b7)
(on b6 b1)
(on b8 b12)
(on b9 b6)
(on b10 b5)
(on b11 b8))
)
)


