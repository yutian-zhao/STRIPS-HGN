

(define (problem BW-rand-12)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on-table b1)
(on-table b2)
(on b3 b2)
(on b4 b12)
(on-table b5)
(on b6 b7)
(on b7 b10)
(on-table b8)
(on b9 b6)
(on-table b10)
(on b11 b1)
(on b12 b11)
(clear b3)
(clear b4)
(clear b5)
(clear b8)
(clear b9)
)
(:goal
(and
(on b1 b8)
(on b2 b4)
(on b3 b11)
(on b4 b12)
(on b6 b3)
(on b7 b9)
(on b8 b2)
(on b9 b10)
(on b10 b6)
(on b11 b1))
)
)


