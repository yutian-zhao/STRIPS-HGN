

(define (problem blocksworld17-9313)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 )
(:init
(arm-empty)
(on b1 b7)
(on b2 b4)
(on-table b3)
(on b4 b9)
(on b5 b8)
(on-table b6)
(on b7 b6)
(on b8 b15)
(on-table b9)
(on b10 b17)
(on b11 b14)
(on b12 b16)
(on b13 b11)
(on-table b14)
(on b15 b12)
(on b16 b13)
(on b17 b5)
(clear b1)
(clear b2)
(clear b3)
(clear b10)
)
(:goal
(and
(on b2 b17)
(on b3 b6)
(on b4 b10)
(on b5 b13)
(on b6 b15)
(on b8 b4)
(on b9 b5)
(on b12 b14)
(on b13 b7)
(on b14 b9)
(on b15 b16)
(on b16 b1)
(on b17 b11))
)
)


