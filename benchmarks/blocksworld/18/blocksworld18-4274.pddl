

(define (problem blocksworld18-4274)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 )
(:init
(arm-empty)
(on b1 b12)
(on b2 b10)
(on-table b3)
(on b4 b11)
(on-table b5)
(on-table b6)
(on b7 b18)
(on b8 b14)
(on b9 b2)
(on b10 b1)
(on b11 b13)
(on-table b12)
(on b13 b9)
(on b14 b3)
(on b15 b8)
(on b16 b4)
(on b17 b7)
(on-table b18)
(clear b5)
(clear b6)
(clear b15)
(clear b16)
(clear b17)
)
(:goal
(and
(on b1 b11)
(on b2 b6)
(on b3 b16)
(on b4 b14)
(on b5 b10)
(on b6 b5)
(on b7 b12)
(on b8 b9)
(on b9 b7)
(on b10 b8)
(on b11 b13)
(on b13 b4)
(on b14 b17)
(on b15 b1)
(on b16 b15)
(on b18 b2))
)
)


