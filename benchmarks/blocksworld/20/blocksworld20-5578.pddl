

(define (problem blocksworld20-5578)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 )
(:init
(arm-empty)
(on b1 b17)
(on b2 b4)
(on b3 b19)
(on-table b4)
(on b5 b9)
(on-table b6)
(on b7 b5)
(on b8 b10)
(on b9 b18)
(on b10 b13)
(on b11 b3)
(on b12 b14)
(on b13 b15)
(on b14 b6)
(on b15 b20)
(on b16 b7)
(on b17 b11)
(on b18 b8)
(on b19 b2)
(on-table b20)
(clear b1)
(clear b12)
(clear b16)
)
(:goal
(and
(on b1 b15)
(on b2 b10)
(on b3 b7)
(on b4 b6)
(on b5 b11)
(on b6 b3)
(on b7 b8)
(on b8 b5)
(on b10 b1)
(on b11 b20)
(on b12 b2)
(on b13 b4)
(on b14 b19)
(on b17 b18)
(on b18 b16)
(on b19 b17)
(on b20 b12))
)
)


