

(define (problem blocksworld19-7988)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 )
(:init
(arm-empty)
(on b1 b15)
(on b2 b7)
(on b3 b14)
(on-table b4)
(on-table b5)
(on b6 b19)
(on-table b7)
(on b8 b18)
(on b9 b6)
(on b10 b4)
(on b11 b3)
(on b12 b17)
(on b13 b11)
(on b14 b12)
(on-table b15)
(on b16 b8)
(on b17 b16)
(on-table b18)
(on-table b19)
(clear b1)
(clear b2)
(clear b5)
(clear b9)
(clear b10)
(clear b13)
)
(:goal
(and
(on b1 b3)
(on b2 b12)
(on b5 b17)
(on b6 b10)
(on b7 b2)
(on b8 b4)
(on b10 b1)
(on b11 b6)
(on b12 b15)
(on b13 b7)
(on b15 b11)
(on b16 b9)
(on b19 b8))
)
)

