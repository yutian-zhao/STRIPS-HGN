

(define (problem blocksworld10-1636)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 )
(:init
(arm-empty)
(on b1 b4)
(on b2 b9)
(on b3 b8)
(on b4 b10)
(on b5 b7)
(on-table b6)
(on b7 b6)
(on-table b8)
(on b9 b1)
(on b10 b5)
(clear b2)
(clear b3)
)
(:goal
(and
(on b1 b8)
(on b2 b5)
(on b3 b2)
(on b5 b10)
(on b6 b3)
(on b8 b6)
(on b9 b1)
(on b10 b7))
)
)


