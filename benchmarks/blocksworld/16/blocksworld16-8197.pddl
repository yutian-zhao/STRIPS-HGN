

(define (problem blocksworld16-8197)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 )
(:init
(arm-empty)
(on-table b1)
(on b2 b9)
(on b3 b11)
(on b4 b1)
(on b5 b2)
(on b6 b5)
(on-table b7)
(on b8 b4)
(on b9 b8)
(on-table b10)
(on b11 b10)
(on b12 b3)
(on-table b13)
(on b14 b12)
(on b15 b6)
(on-table b16)
(clear b7)
(clear b13)
(clear b14)
(clear b15)
(clear b16)
)
(:goal
(and
(on b2 b16)
(on b3 b5)
(on b4 b11)
(on b5 b8)
(on b6 b14)
(on b7 b12)
(on b8 b15)
(on b9 b7)
(on b10 b1)
(on b11 b13)
(on b13 b6)
(on b15 b2)
(on b16 b4))
)
)

