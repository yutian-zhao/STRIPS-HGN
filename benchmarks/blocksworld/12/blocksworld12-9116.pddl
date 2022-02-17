

(define (problem BW-rand-12)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on b1 b7)
(on-table b2)
(on-table b3)
(on b4 b5)
(on b5 b12)
(on-table b6)
(on b7 b2)
(on b8 b10)
(on b9 b1)
(on b10 b11)
(on b11 b4)
(on-table b12)
(clear b3)
(clear b6)
(clear b8)
(clear b9)
)
(:goal
(and
(on b1 b7)
(on b2 b10)
(on b3 b11)
(on b5 b3)
(on b8 b5)
(on b9 b4)
(on b11 b2)
(on b12 b6))
)
)


