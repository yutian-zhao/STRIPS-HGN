

(define (problem blocksworld12-5202)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on-table b1)
(on-table b2)
(on b3 b4)
(on b4 b12)
(on b5 b8)
(on b6 b10)
(on b7 b9)
(on b8 b1)
(on b9 b5)
(on b10 b3)
(on b11 b2)
(on b12 b11)
(clear b6)
(clear b7)
)
(:goal
(and
(on b1 b3)
(on b2 b12)
(on b3 b4)
(on b5 b6)
(on b6 b7)
(on b7 b9)
(on b11 b8)
(on b12 b5))
)
)


