

(define (problem blocksworld17-6459)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 )
(:init
(arm-empty)
(on b1 b16)
(on b2 b14)
(on b3 b13)
(on b4 b11)
(on b5 b9)
(on b6 b2)
(on-table b7)
(on-table b8)
(on b9 b6)
(on b10 b7)
(on b11 b17)
(on b12 b15)
(on b13 b5)
(on b14 b1)
(on b15 b10)
(on-table b16)
(on-table b17)
(clear b3)
(clear b4)
(clear b8)
(clear b12)
)
(:goal
(and
(on b1 b14)
(on b2 b9)
(on b3 b11)
(on b5 b17)
(on b6 b5)
(on b7 b10)
(on b8 b1)
(on b11 b16)
(on b12 b15)
(on b13 b8)
(on b15 b13)
(on b16 b7)
(on b17 b3))
)
)


