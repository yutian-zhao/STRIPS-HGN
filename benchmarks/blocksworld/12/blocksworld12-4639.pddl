

(define (problem blocksworld12-4639)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on b1 b7)
(on b2 b1)
(on b3 b12)
(on b4 b9)
(on b5 b2)
(on b6 b10)
(on-table b7)
(on-table b8)
(on-table b9)
(on b10 b8)
(on b11 b6)
(on b12 b11)
(clear b3)
(clear b4)
(clear b5)
)
(:goal
(and
(on b1 b10)
(on b2 b7)
(on b4 b5)
(on b5 b8)
(on b7 b6)
(on b8 b11)
(on b9 b4)
(on b11 b12)
(on b12 b1))
)
)


