

(define (problem blocksworld14-2682)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 )
(:init
(arm-empty)
(on b1 b8)
(on-table b2)
(on b3 b11)
(on b4 b10)
(on-table b5)
(on b6 b13)
(on b7 b6)
(on-table b8)
(on b9 b1)
(on b10 b7)
(on b11 b9)
(on b12 b4)
(on b13 b3)
(on b14 b12)
(clear b2)
(clear b5)
(clear b14)
)
(:goal
(and
(on b1 b2)
(on b3 b8)
(on b4 b3)
(on b6 b14)
(on b8 b10)
(on b9 b4)
(on b10 b12)
(on b11 b7)
(on b12 b5)
(on b13 b1)
(on b14 b11))
)
)


