

(define (problem blocksworld16-2521)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 )
(:init
(arm-empty)
(on b1 b9)
(on b2 b3)
(on b3 b10)
(on b4 b2)
(on b5 b14)
(on b6 b5)
(on b7 b1)
(on-table b8)
(on b9 b15)
(on b10 b16)
(on b11 b8)
(on-table b12)
(on-table b13)
(on b14 b7)
(on b15 b4)
(on b16 b11)
(clear b6)
(clear b12)
(clear b13)
)
(:goal
(and
(on b1 b9)
(on b2 b7)
(on b3 b12)
(on b4 b6)
(on b5 b1)
(on b6 b14)
(on b7 b16)
(on b8 b5)
(on b9 b10)
(on b11 b4)
(on b13 b2)
(on b15 b3))
)
)


