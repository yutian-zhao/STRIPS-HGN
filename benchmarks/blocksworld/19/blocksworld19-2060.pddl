

(define (problem blocksworld19-2060)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 )
(:init
(arm-empty)
(on-table b1)
(on b2 b13)
(on b3 b8)
(on b4 b18)
(on-table b5)
(on b6 b9)
(on-table b7)
(on b8 b10)
(on b9 b2)
(on-table b10)
(on b11 b14)
(on b12 b5)
(on b13 b12)
(on b14 b4)
(on b15 b1)
(on b16 b19)
(on-table b17)
(on b18 b3)
(on b19 b6)
(clear b7)
(clear b11)
(clear b15)
(clear b16)
(clear b17)
)
(:goal
(and
(on b1 b3)
(on b2 b14)
(on b5 b12)
(on b6 b9)
(on b7 b1)
(on b8 b2)
(on b9 b5)
(on b10 b16)
(on b11 b17)
(on b12 b8)
(on b13 b15)
(on b14 b4)
(on b15 b11)
(on b18 b6)
(on b19 b18))
)
)


