

(define (problem blocksworld19-5011)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 )
(:init
(arm-empty)
(on b1 b9)
(on-table b2)
(on b3 b11)
(on b4 b12)
(on b5 b7)
(on-table b6)
(on b7 b14)
(on-table b8)
(on b9 b17)
(on b10 b18)
(on b11 b2)
(on-table b12)
(on b13 b10)
(on b14 b19)
(on b15 b8)
(on-table b16)
(on-table b17)
(on b18 b6)
(on b19 b3)
(clear b1)
(clear b4)
(clear b5)
(clear b13)
(clear b15)
(clear b16)
)
(:goal
(and
(on b1 b18)
(on b2 b5)
(on b4 b7)
(on b5 b16)
(on b6 b17)
(on b9 b6)
(on b10 b2)
(on b11 b15)
(on b12 b13)
(on b13 b4)
(on b14 b1)
(on b15 b12)
(on b16 b14)
(on b17 b11)
(on b18 b9)
(on b19 b10))
)
)


