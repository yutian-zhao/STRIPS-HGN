

(define (problem BW-rand-15)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 )
(:init
(arm-empty)
(on b1 b14)
(on-table b2)
(on-table b3)
(on b4 b11)
(on b5 b8)
(on-table b6)
(on b7 b15)
(on b8 b3)
(on b9 b1)
(on b10 b6)
(on b11 b2)
(on b12 b10)
(on b13 b9)
(on b14 b7)
(on b15 b5)
(clear b4)
(clear b12)
(clear b13)
)
(:goal
(and
(on b2 b15)
(on b3 b11)
(on b4 b9)
(on b5 b3)
(on b6 b10)
(on b7 b6)
(on b9 b14)
(on b11 b1)
(on b13 b4)
(on b14 b2)
(on b15 b8))
)
)


