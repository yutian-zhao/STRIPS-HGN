

(define (problem blocksworld18-6461)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 )
(:init
(arm-empty)
(on-table b1)
(on b2 b13)
(on b3 b14)
(on b4 b8)
(on b5 b18)
(on b6 b12)
(on b7 b3)
(on b8 b5)
(on b9 b17)
(on b10 b4)
(on b11 b6)
(on b12 b10)
(on b13 b1)
(on b14 b16)
(on b15 b7)
(on b16 b9)
(on b17 b11)
(on-table b18)
(clear b2)
(clear b15)
)
(:goal
(and
(on b2 b3)
(on b3 b5)
(on b4 b7)
(on b5 b15)
(on b6 b18)
(on b11 b16)
(on b12 b17)
(on b14 b1)
(on b15 b12)
(on b16 b10)
(on b18 b8))
)
)


