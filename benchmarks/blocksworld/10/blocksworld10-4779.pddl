

(define (problem blocksworld10-4779)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 )
(:init
(arm-empty)
(on-table b1)
(on b2 b1)
(on-table b3)
(on b4 b8)
(on-table b5)
(on-table b6)
(on b7 b4)
(on b8 b5)
(on b9 b7)
(on b10 b9)
(clear b2)
(clear b3)
(clear b6)
(clear b10)
)
(:goal
(and
(on b1 b9)
(on b4 b5)
(on b5 b1)
(on b6 b4)
(on b7 b10)
(on b8 b6)
(on b9 b3))
)
)


