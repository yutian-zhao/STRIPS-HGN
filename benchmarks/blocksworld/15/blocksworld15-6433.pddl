

(define (problem BW-rand-15)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 )
(:init
(arm-empty)
(on b1 b12)
(on-table b2)
(on-table b3)
(on b4 b2)
(on b5 b11)
(on-table b6)
(on b7 b14)
(on-table b8)
(on-table b9)
(on b10 b9)
(on b11 b8)
(on b12 b13)
(on b13 b4)
(on b14 b3)
(on b15 b7)
(clear b1)
(clear b5)
(clear b6)
(clear b10)
(clear b15)
)
(:goal
(and
(on b1 b10)
(on b2 b11)
(on b3 b15)
(on b4 b8)
(on b5 b1)
(on b6 b13)
(on b7 b2)
(on b8 b7)
(on b9 b6)
(on b10 b9)
(on b12 b4)
(on b13 b12)
(on b15 b5))
)
)


