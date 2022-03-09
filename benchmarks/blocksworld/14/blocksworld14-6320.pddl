

(define (problem blocksworld14-6320)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 )
(:init
(arm-empty)
(on b1 b2)
(on b2 b4)
(on b3 b11)
(on b4 b6)
(on-table b5)
(on b6 b8)
(on b7 b9)
(on-table b8)
(on-table b9)
(on b10 b13)
(on b11 b5)
(on b12 b10)
(on b13 b14)
(on b14 b7)
(clear b1)
(clear b3)
(clear b12)
)
(:goal
(and
(on b5 b6)
(on b6 b3)
(on b7 b10)
(on b8 b9)
(on b10 b5)
(on b11 b7)
(on b13 b2)
(on b14 b13))
)
)


