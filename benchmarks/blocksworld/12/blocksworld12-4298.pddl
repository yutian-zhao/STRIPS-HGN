

(define (problem blocksworld12-4298)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on-table b1)
(on-table b2)
(on-table b3)
(on b4 b12)
(on b5 b7)
(on b6 b4)
(on b7 b2)
(on b8 b11)
(on b9 b1)
(on b10 b8)
(on-table b11)
(on-table b12)
(clear b3)
(clear b5)
(clear b6)
(clear b9)
(clear b10)
)
(:goal
(and
(on b4 b11)
(on b6 b9)
(on b7 b4)
(on b8 b5)
(on b10 b12)
(on b11 b2)
(on b12 b3))
)
)


