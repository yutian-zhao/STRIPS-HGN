

(define (problem blocksworld12-7451)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on b1 b2)
(on-table b2)
(on b3 b8)
(on b4 b7)
(on b5 b6)
(on-table b6)
(on b7 b1)
(on b8 b11)
(on b9 b12)
(on-table b10)
(on-table b11)
(on b12 b3)
(clear b4)
(clear b5)
(clear b9)
(clear b10)
)
(:goal
(and
(on b1 b6)
(on b2 b1)
(on b3 b8)
(on b5 b4)
(on b7 b5)
(on b8 b9)
(on b9 b11)
(on b10 b2)
(on b11 b10)
(on b12 b3))
)
)


