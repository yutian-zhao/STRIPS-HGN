

(define (problem blocksworld20-2682)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 )
(:init
(arm-empty)
(on-table b1)
(on b2 b11)
(on b3 b1)
(on b4 b14)
(on b5 b20)
(on b6 b17)
(on b7 b15)
(on b8 b6)
(on b9 b13)
(on-table b10)
(on-table b11)
(on b12 b3)
(on b13 b2)
(on b14 b5)
(on b15 b4)
(on b16 b12)
(on-table b17)
(on b18 b16)
(on b19 b8)
(on b20 b9)
(clear b7)
(clear b10)
(clear b18)
(clear b19)
)
(:goal
(and
(on b2 b5)
(on b3 b14)
(on b4 b6)
(on b5 b4)
(on b6 b7)
(on b7 b16)
(on b8 b18)
(on b9 b20)
(on b10 b11)
(on b13 b10)
(on b16 b9)
(on b17 b19)
(on b19 b13)
(on b20 b15))
)
)


