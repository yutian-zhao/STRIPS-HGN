

(define (problem blocksworld20-5998)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 )
(:init
(arm-empty)
(on b1 b2)
(on-table b2)
(on b3 b17)
(on b4 b18)
(on b5 b7)
(on b6 b15)
(on b7 b1)
(on-table b8)
(on b9 b20)
(on b10 b13)
(on b11 b10)
(on b12 b5)
(on b13 b8)
(on b14 b16)
(on b15 b3)
(on-table b16)
(on-table b17)
(on b18 b11)
(on-table b19)
(on-table b20)
(clear b4)
(clear b6)
(clear b9)
(clear b12)
(clear b14)
(clear b19)
)
(:goal
(and
(on b1 b12)
(on b2 b16)
(on b3 b19)
(on b4 b1)
(on b5 b11)
(on b8 b14)
(on b9 b6)
(on b10 b9)
(on b11 b17)
(on b12 b13)
(on b13 b18)
(on b16 b20)
(on b17 b8)
(on b18 b15)
(on b19 b2)
(on b20 b10))
)
)

