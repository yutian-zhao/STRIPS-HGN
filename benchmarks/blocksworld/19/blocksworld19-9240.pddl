

(define (problem blocksworld19-9240)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 )
(:init
(arm-empty)
(on b1 b14)
(on b2 b16)
(on b3 b5)
(on b4 b3)
(on-table b5)
(on b6 b17)
(on b7 b11)
(on b8 b13)
(on b9 b2)
(on b10 b9)
(on b11 b12)
(on b12 b18)
(on-table b13)
(on b14 b19)
(on b15 b10)
(on b16 b8)
(on-table b17)
(on-table b18)
(on b19 b15)
(clear b1)
(clear b4)
(clear b6)
(clear b7)
)
(:goal
(and
(on b1 b19)
(on b2 b9)
(on b4 b17)
(on b5 b3)
(on b7 b10)
(on b8 b13)
(on b9 b11)
(on b11 b12)
(on b12 b7)
(on b14 b5)
(on b15 b14)
(on b16 b6)
(on b17 b15)
(on b18 b2)
(on b19 b4))
)
)


