

(define (problem blocksworld15-7900)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 )
(:init
(arm-empty)
(on b1 b7)
(on-table b2)
(on b3 b9)
(on b4 b2)
(on b5 b11)
(on-table b6)
(on-table b7)
(on b8 b14)
(on b9 b15)
(on b10 b1)
(on b11 b6)
(on b12 b8)
(on-table b13)
(on b14 b4)
(on b15 b13)
(clear b3)
(clear b5)
(clear b10)
(clear b12)
)
(:goal
(and
(on b2 b8)
(on b6 b1)
(on b7 b12)
(on b8 b7)
(on b9 b11)
(on b10 b9)
(on b11 b15)
(on b13 b6)
(on b14 b4)
(on b15 b14))
)
)


