

(define (problem blocksworld14-7876)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 )
(:init
(arm-empty)
(on b1 b3)
(on b2 b7)
(on b3 b14)
(on b4 b5)
(on b5 b9)
(on b6 b13)
(on-table b7)
(on b8 b6)
(on-table b9)
(on b10 b4)
(on b11 b10)
(on b12 b1)
(on b13 b2)
(on b14 b8)
(clear b11)
(clear b12)
)
(:goal
(and
(on b1 b12)
(on b2 b9)
(on b3 b2)
(on b4 b8)
(on b5 b3)
(on b8 b5)
(on b9 b10)
(on b10 b11)
(on b11 b6)
(on b12 b14)
(on b14 b4))
)
)

