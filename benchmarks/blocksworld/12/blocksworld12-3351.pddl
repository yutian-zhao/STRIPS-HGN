

(define (problem blocksworld12-3351)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on-table b1)
(on b2 b11)
(on b3 b6)
(on b4 b9)
(on b5 b8)
(on b6 b7)
(on b7 b5)
(on b8 b12)
(on b9 b10)
(on b10 b3)
(on b11 b1)
(on-table b12)
(clear b2)
(clear b4)
)
(:goal
(and
(on b1 b6)
(on b3 b7)
(on b5 b3)
(on b6 b12)
(on b8 b1)
(on b11 b10)
(on b12 b9))
)
)


