

(define (problem blocksworld14-8117)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 )
(:init
(arm-empty)
(on b1 b10)
(on-table b2)
(on-table b3)
(on-table b4)
(on b5 b6)
(on b6 b11)
(on b7 b3)
(on b8 b9)
(on b9 b13)
(on b10 b12)
(on-table b11)
(on b12 b7)
(on-table b13)
(on-table b14)
(clear b1)
(clear b2)
(clear b4)
(clear b5)
(clear b8)
(clear b14)
)
(:goal
(and
(on b1 b6)
(on b2 b5)
(on b3 b1)
(on b4 b14)
(on b5 b9)
(on b7 b12)
(on b8 b3)
(on b9 b13)
(on b10 b4)
(on b11 b10)
(on b12 b2)
(on b14 b7))
)
)

