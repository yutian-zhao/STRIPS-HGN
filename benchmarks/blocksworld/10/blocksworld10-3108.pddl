

(define (problem blocksworld10-3108)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 )
(:init
(arm-empty)
(on b1 b5)
(on-table b2)
(on b3 b7)
(on b4 b10)
(on-table b5)
(on-table b6)
(on b7 b8)
(on b8 b1)
(on b9 b6)
(on-table b10)
(clear b2)
(clear b3)
(clear b4)
(clear b9)
)
(:goal
(and
(on b2 b7)
(on b3 b10)
(on b4 b6)
(on b6 b2)
(on b8 b9)
(on b9 b3)
(on b10 b1))
)
)


