

(define (problem blocksworld12-1253)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on b1 b9)
(on b2 b8)
(on b3 b1)
(on b4 b2)
(on-table b5)
(on b6 b12)
(on b7 b3)
(on b8 b6)
(on-table b9)
(on b10 b7)
(on-table b11)
(on b12 b10)
(clear b4)
(clear b5)
(clear b11)
)
(:goal
(and
(on b1 b4)
(on b3 b1)
(on b6 b12)
(on b8 b6)
(on b9 b3)
(on b10 b8)
(on b11 b2)
(on b12 b9))
)
)


