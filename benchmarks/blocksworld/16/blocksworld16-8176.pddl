

(define (problem blocksworld16-8176)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 )
(:init
(arm-empty)
(on b1 b9)
(on b2 b13)
(on-table b3)
(on b4 b12)
(on b5 b1)
(on-table b6)
(on b7 b16)
(on b8 b7)
(on b9 b10)
(on-table b10)
(on-table b11)
(on b12 b15)
(on-table b13)
(on b14 b5)
(on-table b15)
(on b16 b3)
(clear b2)
(clear b4)
(clear b6)
(clear b8)
(clear b11)
(clear b14)
)
(:goal
(and
(on b2 b13)
(on b3 b6)
(on b4 b11)
(on b7 b14)
(on b8 b4)
(on b10 b3)
(on b11 b1)
(on b12 b9)
(on b14 b8)
(on b15 b2)
(on b16 b10))
)
)


