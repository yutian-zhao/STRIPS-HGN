

(define (problem blocksworld16-8335)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 )
(:init
(arm-empty)
(on-table b1)
(on b2 b3)
(on b3 b4)
(on-table b4)
(on b5 b13)
(on b6 b1)
(on b7 b14)
(on-table b8)
(on b9 b5)
(on b10 b7)
(on b11 b15)
(on b12 b2)
(on b13 b8)
(on-table b14)
(on-table b15)
(on b16 b6)
(clear b9)
(clear b10)
(clear b11)
(clear b12)
(clear b16)
)
(:goal
(and
(on b1 b3)
(on b2 b6)
(on b3 b12)
(on b4 b8)
(on b5 b14)
(on b7 b10)
(on b8 b11)
(on b9 b4)
(on b11 b7)
(on b12 b5)
(on b13 b9)
(on b15 b16)
(on b16 b2))
)
)


