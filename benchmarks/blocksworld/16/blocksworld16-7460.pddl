

(define (problem blocksworld16-7460)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 )
(:init
(arm-empty)
(on b1 b5)
(on b2 b3)
(on b3 b6)
(on b4 b13)
(on b5 b10)
(on-table b6)
(on b7 b12)
(on b8 b2)
(on-table b9)
(on b10 b15)
(on-table b11)
(on b12 b11)
(on b13 b14)
(on b14 b7)
(on b15 b16)
(on b16 b9)
(clear b1)
(clear b4)
(clear b8)
)
(:goal
(and
(on b1 b9)
(on b3 b1)
(on b5 b10)
(on b6 b16)
(on b7 b5)
(on b9 b14)
(on b10 b11)
(on b11 b12)
(on b12 b4)
(on b13 b6)
(on b14 b2)
(on b15 b3))
)
)


