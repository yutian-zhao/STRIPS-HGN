

(define (problem blocksworld17-7783)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 )
(:init
(arm-empty)
(on b1 b4)
(on b2 b15)
(on-table b3)
(on b4 b2)
(on b5 b11)
(on b6 b13)
(on b7 b17)
(on b8 b10)
(on-table b9)
(on b10 b7)
(on b11 b14)
(on b12 b6)
(on-table b13)
(on-table b14)
(on b15 b12)
(on b16 b3)
(on b17 b16)
(clear b1)
(clear b5)
(clear b8)
(clear b9)
)
(:goal
(and
(on b1 b12)
(on b2 b11)
(on b4 b16)
(on b5 b2)
(on b7 b10)
(on b8 b7)
(on b9 b6)
(on b10 b5)
(on b11 b1)
(on b12 b3)
(on b14 b17)
(on b15 b14)
(on b16 b13)
(on b17 b8))
)
)


