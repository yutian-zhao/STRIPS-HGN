

(define (problem blocksworld12-4104)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on b1 b7)
(on b2 b5)
(on b3 b2)
(on-table b4)
(on-table b5)
(on-table b6)
(on b7 b3)
(on b8 b10)
(on b9 b12)
(on b10 b9)
(on b11 b4)
(on b12 b6)
(clear b1)
(clear b8)
(clear b11)
)
(:goal
(and
(on b1 b9)
(on b3 b10)
(on b6 b3)
(on b8 b2)
(on b9 b4)
(on b10 b8)
(on b12 b5))
)
)


