

(define (problem blocksworld20-9483)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 )
(:init
(arm-empty)
(on-table b1)
(on-table b2)
(on-table b3)
(on b4 b14)
(on b5 b19)
(on-table b6)
(on b7 b18)
(on b8 b11)
(on b9 b12)
(on b10 b9)
(on b11 b20)
(on b12 b8)
(on b13 b3)
(on b14 b17)
(on b15 b1)
(on b16 b10)
(on b17 b2)
(on-table b18)
(on b19 b7)
(on b20 b13)
(clear b4)
(clear b5)
(clear b6)
(clear b15)
(clear b16)
)
(:goal
(and
(on b3 b11)
(on b4 b15)
(on b6 b1)
(on b7 b12)
(on b8 b2)
(on b12 b9)
(on b13 b17)
(on b14 b13)
(on b15 b14)
(on b16 b4)
(on b17 b7)
(on b18 b19)
(on b19 b3)
(on b20 b10))
)
)

