

(define (problem blocksworld10-8162)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 )
(:init
(arm-empty)
(on b1 b5)
(on-table b2)
(on b3 b6)
(on b4 b7)
(on b5 b8)
(on b6 b9)
(on b7 b3)
(on b8 b4)
(on b9 b10)
(on b10 b2)
(clear b1)
)
(:goal
(and
(on b1 b10)
(on b3 b8)
(on b4 b1)
(on b5 b2)
(on b6 b4)
(on b7 b3)
(on b9 b5))
)
)


