

(define (problem blocksworld10-6427)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 )
(:init
(arm-empty)
(on-table b1)
(on b2 b5)
(on-table b3)
(on b4 b7)
(on b5 b4)
(on b6 b1)
(on b7 b6)
(on b8 b2)
(on-table b9)
(on b10 b3)
(clear b8)
(clear b9)
(clear b10)
)
(:goal
(and
(on b1 b4)
(on b2 b8)
(on b3 b7)
(on b4 b2)
(on b5 b10)
(on b6 b1)
(on b8 b3)
(on b9 b5))
)
)


