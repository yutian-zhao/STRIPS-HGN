

(define (problem blocksworld12-6066)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on b1 b2)
(on-table b2)
(on-table b3)
(on b4 b10)
(on b5 b1)
(on b6 b5)
(on b7 b12)
(on b8 b11)
(on b9 b4)
(on b10 b7)
(on b11 b3)
(on b12 b6)
(clear b8)
(clear b9)
)
(:goal
(and
(on b1 b2)
(on b2 b7)
(on b5 b6)
(on b6 b11)
(on b7 b5)
(on b8 b12)
(on b9 b4)
(on b10 b8)
(on b11 b9)
(on b12 b1))
)
)


