

(define (problem blocksworld12-3500)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on b1 b4)
(on b2 b10)
(on-table b3)
(on b4 b12)
(on b5 b3)
(on-table b6)
(on-table b7)
(on b8 b6)
(on-table b9)
(on b10 b8)
(on b11 b7)
(on b12 b5)
(clear b1)
(clear b2)
(clear b9)
(clear b11)
)
(:goal
(and
(on b1 b4)
(on b2 b7)
(on b3 b1)
(on b4 b5)
(on b5 b12)
(on b6 b9)
(on b9 b11)
(on b10 b6)
(on b11 b2))
)
)


