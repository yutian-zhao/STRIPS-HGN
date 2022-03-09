

(define (problem blocksworld12-3355)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on b1 b8)
(on-table b2)
(on-table b3)
(on-table b4)
(on b5 b1)
(on b6 b12)
(on b7 b10)
(on b8 b4)
(on b9 b5)
(on-table b10)
(on b11 b9)
(on b12 b7)
(clear b2)
(clear b3)
(clear b6)
(clear b11)
)
(:goal
(and
(on b1 b11)
(on b3 b12)
(on b4 b3)
(on b6 b1)
(on b8 b4)
(on b9 b2)
(on b10 b9)
(on b11 b7)
(on b12 b5))
)
)


