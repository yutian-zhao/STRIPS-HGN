

(define (problem blocksworld12-9631)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on b1 b9)
(on b2 b6)
(on b3 b10)
(on-table b4)
(on b5 b2)
(on-table b6)
(on b7 b8)
(on b8 b5)
(on b9 b3)
(on b10 b4)
(on-table b11)
(on b12 b11)
(clear b1)
(clear b7)
(clear b12)
)
(:goal
(and
(on b1 b6)
(on b3 b9)
(on b4 b5)
(on b5 b1)
(on b6 b7)
(on b7 b10)
(on b8 b4)
(on b9 b12)
(on b10 b2)
(on b12 b11))
)
)


