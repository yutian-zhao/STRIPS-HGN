

(define (problem blocksworld18-2539)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 )
(:init
(arm-empty)
(on b1 b4)
(on b2 b3)
(on b3 b8)
(on b4 b13)
(on b5 b17)
(on b6 b7)
(on-table b7)
(on b8 b6)
(on b9 b11)
(on b10 b5)
(on-table b11)
(on b12 b1)
(on b13 b14)
(on b14 b15)
(on-table b15)
(on b16 b18)
(on-table b17)
(on b18 b2)
(clear b9)
(clear b10)
(clear b12)
(clear b16)
)
(:goal
(and
(on b1 b3)
(on b2 b14)
(on b3 b12)
(on b5 b16)
(on b6 b9)
(on b7 b18)
(on b8 b11)
(on b10 b4)
(on b11 b7)
(on b12 b13)
(on b13 b17)
(on b14 b8)
(on b16 b15)
(on b17 b10)
(on b18 b1))
)
)


