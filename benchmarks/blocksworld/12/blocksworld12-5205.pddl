

(define (problem blocksworld12-5205)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on b1 b6)
(on b2 b12)
(on-table b3)
(on-table b4)
(on-table b5)
(on b6 b4)
(on-table b7)
(on b8 b1)
(on b9 b2)
(on b10 b7)
(on b11 b3)
(on b12 b8)
(clear b5)
(clear b9)
(clear b10)
(clear b11)
)
(:goal
(and
(on b1 b12)
(on b2 b10)
(on b3 b8)
(on b4 b3)
(on b6 b7)
(on b8 b9)
(on b10 b11)
(on b11 b5))
)
)


