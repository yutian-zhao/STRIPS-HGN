

(define (problem blocksworld14-3518)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 )
(:init
(arm-empty)
(on b1 b5)
(on-table b2)
(on b3 b1)
(on-table b4)
(on-table b5)
(on b6 b9)
(on b7 b6)
(on b8 b3)
(on b9 b8)
(on b10 b7)
(on b11 b2)
(on b12 b14)
(on-table b13)
(on-table b14)
(clear b4)
(clear b10)
(clear b11)
(clear b12)
(clear b13)
)
(:goal
(and
(on b1 b8)
(on b2 b1)
(on b3 b9)
(on b4 b6)
(on b6 b7)
(on b7 b11)
(on b8 b5)
(on b9 b4)
(on b11 b12)
(on b12 b2)
(on b13 b14)
(on b14 b10))
)
)

