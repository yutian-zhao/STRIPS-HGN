

(define (problem blocksworld20-2857)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 )
(:init
(arm-empty)
(on b1 b7)
(on b2 b14)
(on-table b3)
(on b4 b12)
(on b5 b6)
(on b6 b17)
(on-table b7)
(on b8 b3)
(on-table b9)
(on b10 b15)
(on b11 b16)
(on b12 b20)
(on b13 b5)
(on-table b14)
(on b15 b1)
(on b16 b13)
(on b17 b8)
(on b18 b9)
(on b19 b11)
(on b20 b18)
(clear b2)
(clear b4)
(clear b10)
(clear b19)
)
(:goal
(and
(on b1 b10)
(on b2 b12)
(on b3 b8)
(on b4 b5)
(on b5 b11)
(on b6 b4)
(on b8 b19)
(on b9 b1)
(on b10 b6)
(on b11 b16)
(on b12 b15)
(on b13 b7)
(on b14 b3)
(on b15 b18)
(on b17 b9)
(on b18 b13)
(on b19 b2)
(on b20 b14))
)
)


