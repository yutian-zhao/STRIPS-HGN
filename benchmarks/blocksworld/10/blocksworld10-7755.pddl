

(define (problem blocksworld10-7755)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 )
(:init
(arm-empty)
(on b1 b7)
(on-table b2)
(on b3 b1)
(on b4 b6)
(on b5 b10)
(on-table b6)
(on b7 b4)
(on b8 b2)
(on b9 b8)
(on b10 b3)
(clear b5)
(clear b9)
)
(:goal
(and
(on b1 b9)
(on b3 b1)
(on b4 b6)
(on b5 b2)
(on b6 b8)
(on b7 b10)
(on b8 b5)
(on b9 b7))
)
)


