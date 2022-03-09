

(define (problem blocksworld15-2157)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 )
(:init
(arm-empty)
(on b1 b4)
(on-table b2)
(on-table b3)
(on b4 b8)
(on b5 b9)
(on b6 b1)
(on b7 b5)
(on b8 b2)
(on b9 b14)
(on-table b10)
(on b11 b6)
(on b12 b3)
(on b13 b12)
(on b14 b13)
(on b15 b7)
(clear b10)
(clear b11)
(clear b15)
)
(:goal
(and
(on b1 b2)
(on b7 b9)
(on b9 b1)
(on b10 b6)
(on b12 b10)
(on b14 b12)
(on b15 b3))
)
)


