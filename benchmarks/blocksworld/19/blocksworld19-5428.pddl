

(define (problem blocksworld19-5428)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 )
(:init
(arm-empty)
(on b1 b2)
(on b2 b13)
(on b3 b1)
(on-table b4)
(on b5 b14)
(on-table b6)
(on b7 b18)
(on b8 b9)
(on-table b9)
(on-table b10)
(on b11 b16)
(on b12 b17)
(on b13 b15)
(on b14 b12)
(on b15 b11)
(on b16 b10)
(on-table b17)
(on-table b18)
(on-table b19)
(clear b3)
(clear b4)
(clear b5)
(clear b6)
(clear b7)
(clear b8)
(clear b19)
)
(:goal
(and
(on b1 b13)
(on b2 b18)
(on b3 b2)
(on b4 b16)
(on b6 b5)
(on b7 b8)
(on b8 b10)
(on b9 b19)
(on b10 b12)
(on b12 b9)
(on b13 b7)
(on b15 b14)
(on b16 b15)
(on b17 b1)
(on b18 b17))
)
)


