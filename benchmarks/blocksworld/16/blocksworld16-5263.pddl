

(define (problem blocksworld16-5263)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 )
(:init
(arm-empty)
(on-table b1)
(on b2 b5)
(on b3 b9)
(on-table b4)
(on b5 b10)
(on-table b6)
(on b7 b16)
(on b8 b14)
(on b9 b4)
(on-table b10)
(on b11 b1)
(on b12 b2)
(on-table b13)
(on b14 b7)
(on b15 b3)
(on b16 b15)
(clear b6)
(clear b8)
(clear b11)
(clear b12)
(clear b13)
)
(:goal
(and
(on b1 b7)
(on b3 b12)
(on b4 b1)
(on b5 b16)
(on b6 b2)
(on b7 b13)
(on b8 b6)
(on b9 b11)
(on b12 b5)
(on b14 b10)
(on b15 b9)
(on b16 b15))
)
)


