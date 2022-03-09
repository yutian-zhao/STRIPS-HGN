

(define (problem blocksworld12-5729)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on b1 b12)
(on b2 b3)
(on b3 b6)
(on b4 b5)
(on b5 b9)
(on b6 b4)
(on b7 b1)
(on b8 b11)
(on b9 b8)
(on b10 b7)
(on-table b11)
(on b12 b2)
(clear b10)
)
(:goal
(and
(on b1 b4)
(on b2 b12)
(on b5 b6)
(on b6 b1)
(on b7 b5)
(on b8 b11)
(on b10 b7)
(on b11 b10)
(on b12 b8))
)
)


