

(define (problem blocksworld15-3189)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 )
(:init
(arm-empty)
(on b1 b2)
(on b2 b6)
(on b3 b7)
(on b4 b10)
(on-table b5)
(on b6 b3)
(on-table b7)
(on b8 b9)
(on-table b9)
(on b10 b8)
(on b11 b13)
(on b12 b5)
(on b13 b14)
(on-table b14)
(on b15 b4)
(clear b1)
(clear b11)
(clear b12)
(clear b15)
)
(:goal
(and
(on b2 b10)
(on b3 b5)
(on b5 b6)
(on b6 b4)
(on b7 b14)
(on b8 b1)
(on b10 b12)
(on b11 b9)
(on b12 b15)
(on b14 b11)
(on b15 b13))
)
)


