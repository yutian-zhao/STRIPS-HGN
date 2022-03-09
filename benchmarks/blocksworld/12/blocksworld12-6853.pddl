

(define (problem blocksworld12-6853)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on b1 b3)
(on-table b2)
(on b3 b5)
(on b4 b6)
(on b5 b7)
(on b6 b2)
(on b7 b9)
(on b8 b10)
(on b9 b4)
(on b10 b12)
(on b11 b8)
(on b12 b1)
(clear b11)
)
(:goal
(and
(on b1 b7)
(on b2 b11)
(on b3 b5)
(on b4 b6)
(on b5 b8)
(on b7 b2)
(on b8 b12)
(on b11 b10)
(on b12 b1))
)
)


