

(define (problem blocksworld12-7022)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on b1 b4)
(on b2 b12)
(on b3 b5)
(on-table b4)
(on-table b5)
(on b6 b8)
(on-table b7)
(on b8 b3)
(on b9 b7)
(on b10 b1)
(on b11 b10)
(on b12 b11)
(clear b2)
(clear b6)
(clear b9)
)
(:goal
(and
(on b2 b12)
(on b3 b7)
(on b4 b9)
(on b5 b10)
(on b6 b3)
(on b7 b1)
(on b9 b5)
(on b10 b8)
(on b11 b6)
(on b12 b4))
)
)


