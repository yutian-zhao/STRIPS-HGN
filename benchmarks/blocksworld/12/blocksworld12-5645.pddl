

(define (problem blocksworld12-5645)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on b1 b12)
(on b2 b11)
(on b3 b1)
(on-table b4)
(on b5 b9)
(on-table b6)
(on-table b7)
(on b8 b6)
(on b9 b8)
(on b10 b5)
(on b11 b3)
(on b12 b10)
(clear b2)
(clear b4)
(clear b7)
)
(:goal
(and
(on b1 b11)
(on b2 b12)
(on b3 b2)
(on b4 b3)
(on b6 b4)
(on b7 b10)
(on b8 b7)
(on b10 b5)
(on b11 b9)
(on b12 b8))
)
)


