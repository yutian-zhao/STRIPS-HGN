

(define (problem blocksworld17-6027)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 )
(:init
(arm-empty)
(on b1 b5)
(on-table b2)
(on b3 b11)
(on b4 b12)
(on-table b5)
(on b6 b7)
(on b7 b2)
(on-table b8)
(on b9 b6)
(on b10 b3)
(on-table b11)
(on b12 b9)
(on b13 b8)
(on-table b14)
(on b15 b4)
(on b16 b17)
(on b17 b10)
(clear b1)
(clear b13)
(clear b14)
(clear b15)
(clear b16)
)
(:goal
(and
(on b2 b8)
(on b3 b11)
(on b4 b14)
(on b5 b2)
(on b8 b3)
(on b9 b5)
(on b10 b7)
(on b12 b16)
(on b13 b9)
(on b14 b12)
(on b17 b15))
)
)


