

(define (problem blocksworld20-1477)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 )
(:init
(arm-empty)
(on b1 b11)
(on b2 b6)
(on b3 b8)
(on b4 b12)
(on b5 b7)
(on b6 b4)
(on b7 b14)
(on b8 b1)
(on-table b9)
(on b10 b18)
(on-table b11)
(on b12 b15)
(on b13 b19)
(on b14 b2)
(on b15 b10)
(on b16 b9)
(on b17 b20)
(on b18 b17)
(on-table b19)
(on b20 b16)
(clear b3)
(clear b5)
(clear b13)
)
(:goal
(and
(on b1 b19)
(on b2 b9)
(on b3 b1)
(on b4 b20)
(on b5 b2)
(on b7 b12)
(on b9 b7)
(on b10 b16)
(on b11 b10)
(on b12 b3)
(on b13 b17)
(on b14 b13)
(on b15 b8)
(on b17 b15)
(on b18 b5)
(on b19 b14)
(on b20 b11))
)
)

