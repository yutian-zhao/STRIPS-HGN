

(define (problem blocksworld10-3937)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 )
(:init
(arm-empty)
(on b1 b10)
(on b2 b5)
(on b3 b6)
(on b4 b8)
(on b5 b1)
(on-table b6)
(on-table b7)
(on b8 b3)
(on-table b9)
(on b10 b4)
(clear b2)
(clear b7)
(clear b9)
)
(:goal
(and
(on b1 b6)
(on b2 b3)
(on b3 b4)
(on b4 b5)
(on b5 b7)
(on b6 b9)
(on b7 b8)
(on b8 b1))
)
)


