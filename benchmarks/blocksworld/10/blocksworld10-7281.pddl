

(define (problem blocksworld10-7281)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 )
(:init
(arm-empty)
(on b1 b10)
(on b2 b6)
(on b3 b4)
(on b4 b1)
(on b5 b3)
(on b6 b8)
(on b7 b9)
(on-table b8)
(on b9 b2)
(on-table b10)
(clear b5)
(clear b7)
)
(:goal
(and
(on b2 b7)
(on b3 b4)
(on b4 b9)
(on b6 b2)
(on b7 b8)
(on b8 b10)
(on b10 b1))
)
)


