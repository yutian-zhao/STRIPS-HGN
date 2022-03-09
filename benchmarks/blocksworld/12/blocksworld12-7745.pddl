

(define (problem blocksworld12-7745)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on b1 b9)
(on b2 b5)
(on b3 b12)
(on b4 b6)
(on b5 b1)
(on b6 b8)
(on b7 b3)
(on-table b8)
(on b9 b7)
(on b10 b11)
(on b11 b4)
(on-table b12)
(clear b2)
(clear b10)
)
(:goal
(and
(on b2 b5)
(on b3 b6)
(on b4 b10)
(on b5 b12)
(on b6 b7)
(on b7 b4)
(on b8 b2)
(on b9 b1)
(on b10 b8)
(on b11 b3))
)
)


