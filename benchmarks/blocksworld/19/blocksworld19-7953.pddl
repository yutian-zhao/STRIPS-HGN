

(define (problem blocksworld19-7953)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 )
(:init
(arm-empty)
(on b1 b16)
(on-table b2)
(on-table b3)
(on b4 b18)
(on-table b5)
(on b6 b8)
(on b7 b3)
(on-table b8)
(on b9 b1)
(on b10 b7)
(on b11 b4)
(on b12 b11)
(on b13 b10)
(on b14 b15)
(on b15 b17)
(on b16 b2)
(on b17 b9)
(on b18 b6)
(on-table b19)
(clear b5)
(clear b12)
(clear b13)
(clear b14)
(clear b19)
)
(:goal
(and
(on b1 b15)
(on b3 b16)
(on b4 b11)
(on b5 b18)
(on b6 b1)
(on b7 b6)
(on b8 b17)
(on b9 b4)
(on b12 b9)
(on b13 b14)
(on b14 b19)
(on b15 b10)
(on b16 b2)
(on b19 b3))
)
)


