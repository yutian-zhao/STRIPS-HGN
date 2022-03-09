

(define (problem blocksworld10-4449)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 )
(:init
(arm-empty)
(on b1 b3)
(on b2 b8)
(on-table b3)
(on-table b4)
(on b5 b1)
(on-table b6)
(on b7 b9)
(on b8 b5)
(on b9 b6)
(on b10 b4)
(clear b2)
(clear b7)
(clear b10)
)
(:goal
(and
(on b5 b7)
(on b6 b10)
(on b7 b3)
(on b8 b9)
(on b9 b1)
(on b10 b8))
)
)


