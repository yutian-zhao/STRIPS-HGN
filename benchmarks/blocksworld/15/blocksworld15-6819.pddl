

(define (problem blocksworld15-6819)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 )
(:init
(arm-empty)
(on b1 b10)
(on b2 b11)
(on b3 b9)
(on b4 b7)
(on b5 b13)
(on b6 b4)
(on b7 b2)
(on-table b8)
(on b9 b14)
(on-table b10)
(on-table b11)
(on b12 b3)
(on b13 b15)
(on-table b14)
(on-table b15)
(clear b1)
(clear b5)
(clear b6)
(clear b8)
(clear b12)
)
(:goal
(and
(on b1 b10)
(on b2 b3)
(on b3 b12)
(on b4 b7)
(on b5 b9)
(on b7 b14)
(on b8 b13)
(on b9 b6)
(on b13 b11)
(on b14 b8)
(on b15 b5))
)
)

