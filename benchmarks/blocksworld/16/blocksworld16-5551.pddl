

(define (problem blocksworld16-5551)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 )
(:init
(arm-empty)
(on b1 b16)
(on b2 b4)
(on-table b3)
(on b4 b15)
(on b5 b2)
(on b6 b7)
(on-table b7)
(on b8 b6)
(on b9 b12)
(on b10 b3)
(on b11 b9)
(on b12 b10)
(on-table b13)
(on b14 b11)
(on b15 b13)
(on b16 b8)
(clear b1)
(clear b5)
(clear b14)
)
(:goal
(and
(on b1 b6)
(on b2 b10)
(on b3 b5)
(on b4 b13)
(on b5 b11)
(on b6 b16)
(on b7 b1)
(on b8 b9)
(on b9 b4)
(on b10 b7)
(on b12 b8)
(on b13 b14)
(on b14 b2)
(on b15 b3))
)
)


