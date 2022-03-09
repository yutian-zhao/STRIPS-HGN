

(define (problem blocksworld12-4408)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on b1 b11)
(on b2 b6)
(on b3 b1)
(on b4 b10)
(on-table b5)
(on-table b6)
(on b7 b5)
(on b8 b12)
(on b9 b7)
(on-table b10)
(on b11 b2)
(on-table b12)
(clear b3)
(clear b4)
(clear b8)
(clear b9)
)
(:goal
(and
(on b1 b4)
(on b3 b10)
(on b4 b12)
(on b5 b11)
(on b7 b5)
(on b8 b2)
(on b9 b7)
(on b11 b8))
)
)


