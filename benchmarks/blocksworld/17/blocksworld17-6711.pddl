

(define (problem blocksworld17-6711)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 )
(:init
(arm-empty)
(on b1 b17)
(on b2 b12)
(on b3 b1)
(on-table b4)
(on-table b5)
(on b6 b7)
(on b7 b16)
(on-table b8)
(on b9 b2)
(on b10 b4)
(on b11 b8)
(on b12 b10)
(on b13 b5)
(on b14 b6)
(on b15 b3)
(on b16 b15)
(on-table b17)
(clear b9)
(clear b11)
(clear b13)
(clear b14)
)
(:goal
(and
(on b2 b7)
(on b3 b5)
(on b4 b17)
(on b5 b9)
(on b6 b1)
(on b7 b14)
(on b8 b12)
(on b9 b6)
(on b10 b3)
(on b11 b13)
(on b12 b11)
(on b13 b15)
(on b14 b10)
(on b15 b4))
)
)

