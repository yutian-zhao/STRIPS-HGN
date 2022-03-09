

(define (problem blocksworld10-5376)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 )
(:init
(arm-empty)
(on b1 b2)
(on b2 b9)
(on b3 b4)
(on b4 b5)
(on b5 b1)
(on b6 b7)
(on-table b7)
(on-table b8)
(on b9 b8)
(on b10 b6)
(clear b3)
(clear b10)
)
(:goal
(and
(on b1 b7)
(on b2 b6)
(on b3 b10)
(on b5 b9)
(on b6 b8)
(on b9 b1)
(on b10 b5))
)
)


