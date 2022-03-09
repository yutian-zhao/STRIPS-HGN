

(define (problem blocksworld12-4626)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on b1 b11)
(on b2 b12)
(on-table b3)
(on-table b4)
(on b5 b6)
(on-table b6)
(on b7 b9)
(on b8 b5)
(on b9 b10)
(on b10 b2)
(on b11 b8)
(on b12 b1)
(clear b3)
(clear b4)
(clear b7)
)
(:goal
(and
(on b2 b9)
(on b3 b7)
(on b4 b1)
(on b5 b12)
(on b6 b10)
(on b8 b5)
(on b9 b4)
(on b11 b2)
(on b12 b6))
)
)


