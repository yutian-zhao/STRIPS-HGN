

(define (problem blocksworld17-1355)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 )
(:init
(arm-empty)
(on b1 b12)
(on b2 b6)
(on b3 b11)
(on b4 b17)
(on b5 b2)
(on b6 b9)
(on-table b7)
(on-table b8)
(on b9 b8)
(on-table b10)
(on b11 b15)
(on b12 b7)
(on-table b13)
(on b14 b3)
(on b15 b16)
(on b16 b13)
(on-table b17)
(clear b1)
(clear b4)
(clear b5)
(clear b10)
(clear b14)
)
(:goal
(and
(on b1 b5)
(on b2 b11)
(on b3 b4)
(on b5 b10)
(on b6 b13)
(on b9 b15)
(on b11 b14)
(on b12 b6)
(on b13 b17)
(on b14 b3)
(on b15 b2)
(on b16 b8))
)
)


