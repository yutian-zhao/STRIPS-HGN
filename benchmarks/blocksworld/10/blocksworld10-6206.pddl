

(define (problem blocksworld10-6206)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 )
(:init
(arm-empty)
(on b1 b9)
(on b2 b4)
(on b3 b8)
(on b4 b3)
(on-table b5)
(on b6 b10)
(on-table b7)
(on b8 b5)
(on b9 b2)
(on b10 b1)
(clear b6)
(clear b7)
)
(:goal
(and
(on b1 b9)
(on b2 b5)
(on b5 b1)
(on b6 b8)
(on b7 b6)
(on b8 b4)
(on b9 b7))
)
)


