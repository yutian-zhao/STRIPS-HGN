

(define (problem BW-rand-12)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on b1 b2)
(on b2 b9)
(on-table b3)
(on b4 b5)
(on b5 b11)
(on b6 b3)
(on b7 b6)
(on-table b8)
(on-table b9)
(on b10 b7)
(on-table b11)
(on b12 b8)
(clear b1)
(clear b4)
(clear b10)
(clear b12)
)
(:goal
(and
(on b1 b5)
(on b2 b12)
(on b3 b2)
(on b4 b11)
(on b5 b10)
(on b9 b8)
(on b10 b4)
(on b11 b7)
(on b12 b9))
)
)


