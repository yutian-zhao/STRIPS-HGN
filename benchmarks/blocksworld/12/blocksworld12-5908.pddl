

(define (problem blocksworld12-5908)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on b1 b4)
(on b2 b12)
(on b3 b11)
(on b4 b9)
(on b5 b7)
(on-table b6)
(on-table b7)
(on b8 b3)
(on b9 b2)
(on-table b10)
(on b11 b6)
(on b12 b8)
(clear b1)
(clear b5)
(clear b10)
)
(:goal
(and
(on b1 b2)
(on b4 b7)
(on b5 b4)
(on b6 b12)
(on b7 b1)
(on b8 b10)
(on b9 b11)
(on b10 b6)
(on b11 b3)
(on b12 b5))
)
)


