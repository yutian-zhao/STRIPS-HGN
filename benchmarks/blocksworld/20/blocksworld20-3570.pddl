

(define (problem blocksworld20-3570)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 )
(:init
(arm-empty)
(on-table b1)
(on b2 b20)
(on b3 b5)
(on b4 b18)
(on b5 b16)
(on-table b6)
(on b7 b1)
(on b8 b19)
(on b9 b7)
(on b10 b6)
(on b11 b14)
(on b12 b17)
(on b13 b2)
(on-table b14)
(on b15 b11)
(on b16 b4)
(on b17 b3)
(on b18 b9)
(on b19 b12)
(on-table b20)
(clear b8)
(clear b10)
(clear b13)
(clear b15)
)
(:goal
(and
(on b1 b3)
(on b2 b16)
(on b4 b15)
(on b5 b18)
(on b6 b8)
(on b8 b2)
(on b9 b12)
(on b10 b9)
(on b12 b13)
(on b13 b14)
(on b14 b7)
(on b15 b10)
(on b16 b19)
(on b17 b1)
(on b18 b11)
(on b19 b4)
(on b20 b6))
)
)


