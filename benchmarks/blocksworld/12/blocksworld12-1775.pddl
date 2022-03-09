

(define (problem blocksworld12-1775)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on b1 b3)
(on b2 b11)
(on b3 b4)
(on b4 b7)
(on b5 b8)
(on-table b6)
(on b7 b5)
(on-table b8)
(on b9 b6)
(on-table b10)
(on-table b11)
(on b12 b9)
(clear b1)
(clear b2)
(clear b10)
(clear b12)
)
(:goal
(and
(on b3 b11)
(on b5 b12)
(on b6 b7)
(on b8 b2)
(on b9 b8)
(on b10 b1)
(on b11 b9))
)
)


