

(define (problem blocksworld12-4693)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on b1 b8)
(on-table b2)
(on-table b3)
(on b4 b12)
(on b5 b11)
(on b6 b5)
(on b7 b4)
(on b8 b2)
(on b9 b3)
(on b10 b1)
(on b11 b10)
(on b12 b9)
(clear b6)
(clear b7)
)
(:goal
(and
(on b2 b6)
(on b3 b12)
(on b4 b7)
(on b5 b10)
(on b7 b1)
(on b8 b11)
(on b9 b5)
(on b10 b2)
(on b12 b4))
)
)


