

(define (problem blocksworld10-3918)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 )
(:init
(arm-empty)
(on-table b1)
(on b2 b8)
(on b3 b7)
(on b4 b6)
(on b5 b1)
(on b6 b9)
(on b7 b4)
(on-table b8)
(on-table b9)
(on-table b10)
(clear b2)
(clear b3)
(clear b5)
(clear b10)
)
(:goal
(and
(on b2 b8)
(on b3 b10)
(on b4 b6)
(on b5 b9)
(on b6 b1)
(on b7 b3)
(on b10 b5))
)
)


