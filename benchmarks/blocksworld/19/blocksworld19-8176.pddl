

(define (problem blocksworld19-8176)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 )
(:init
(arm-empty)
(on b1 b6)
(on b2 b11)
(on b3 b5)
(on b4 b8)
(on b5 b18)
(on b6 b12)
(on b7 b13)
(on-table b8)
(on b9 b4)
(on b10 b19)
(on b11 b16)
(on-table b12)
(on b13 b14)
(on b14 b10)
(on b15 b2)
(on b16 b9)
(on b17 b15)
(on-table b18)
(on b19 b17)
(clear b1)
(clear b3)
(clear b7)
)
(:goal
(and
(on b1 b7)
(on b2 b9)
(on b3 b11)
(on b4 b10)
(on b5 b18)
(on b6 b14)
(on b7 b2)
(on b8 b13)
(on b11 b8)
(on b13 b17)
(on b14 b19)
(on b15 b12)
(on b16 b5)
(on b17 b16)
(on b18 b15)
(on b19 b1))
)
)


