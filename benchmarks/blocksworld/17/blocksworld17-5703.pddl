

(define (problem blocksworld17-5703)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 )
(:init
(arm-empty)
(on b1 b5)
(on b2 b9)
(on b3 b4)
(on b4 b13)
(on b5 b14)
(on-table b6)
(on b7 b17)
(on-table b8)
(on b9 b15)
(on-table b10)
(on b11 b1)
(on b12 b3)
(on b13 b6)
(on b14 b8)
(on b15 b10)
(on-table b16)
(on b17 b11)
(clear b2)
(clear b7)
(clear b12)
(clear b16)
)
(:goal
(and
(on b1 b6)
(on b2 b16)
(on b3 b14)
(on b4 b10)
(on b5 b17)
(on b6 b13)
(on b7 b2)
(on b9 b3)
(on b10 b15)
(on b11 b5)
(on b12 b4)
(on b13 b11)
(on b14 b7)
(on b15 b8)
(on b16 b12))
)
)

