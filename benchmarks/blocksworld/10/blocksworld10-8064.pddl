

(define (problem blocksworld10-8064)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 )
(:init
(arm-empty)
(on b1 b5)
(on b2 b10)
(on b3 b7)
(on-table b4)
(on b5 b3)
(on b6 b8)
(on b7 b9)
(on b8 b2)
(on b9 b4)
(on-table b10)
(clear b1)
(clear b6)
)
(:goal
(and
(on b1 b9)
(on b2 b1)
(on b3 b4)
(on b4 b7)
(on b5 b10)
(on b7 b2)
(on b8 b6)
(on b9 b5))
)
)


