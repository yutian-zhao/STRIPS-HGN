

(define (problem blocksworld18-8635)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 )
(:init
(arm-empty)
(on b1 b12)
(on b2 b13)
(on b3 b9)
(on b4 b17)
(on b5 b18)
(on-table b6)
(on b7 b6)
(on-table b8)
(on b9 b14)
(on b10 b5)
(on-table b11)
(on b12 b10)
(on-table b13)
(on-table b14)
(on b15 b4)
(on b16 b15)
(on b17 b8)
(on b18 b7)
(clear b1)
(clear b2)
(clear b3)
(clear b11)
(clear b16)
)
(:goal
(and
(on b1 b7)
(on b2 b13)
(on b3 b1)
(on b4 b5)
(on b5 b8)
(on b6 b17)
(on b7 b2)
(on b9 b15)
(on b11 b6)
(on b12 b18)
(on b13 b14)
(on b14 b9)
(on b15 b10)
(on b16 b12)
(on b17 b4)
(on b18 b11))
)
)


