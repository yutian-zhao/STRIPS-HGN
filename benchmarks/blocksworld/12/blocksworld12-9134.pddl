

(define (problem blocksworld12-9134)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on-table b1)
(on b2 b10)
(on b3 b9)
(on-table b4)
(on b5 b1)
(on b6 b8)
(on-table b7)
(on-table b8)
(on b9 b7)
(on b10 b12)
(on b11 b5)
(on b12 b11)
(clear b2)
(clear b3)
(clear b4)
(clear b6)
)
(:goal
(and
(on b2 b6)
(on b3 b4)
(on b5 b7)
(on b6 b9)
(on b7 b3)
(on b10 b8)
(on b11 b12)
(on b12 b10))
)
)


