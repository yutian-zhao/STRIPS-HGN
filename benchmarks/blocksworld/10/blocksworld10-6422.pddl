

(define (problem blocksworld10-6422)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 )
(:init
(arm-empty)
(on-table b1)
(on b2 b10)
(on b3 b4)
(on b4 b6)
(on b5 b3)
(on-table b6)
(on b7 b9)
(on b8 b2)
(on b9 b1)
(on-table b10)
(clear b5)
(clear b7)
(clear b8)
)
(:goal
(and
(on b2 b7)
(on b3 b4)
(on b4 b10)
(on b5 b9)
(on b6 b3)
(on b7 b8)
(on b8 b1)
(on b9 b6)
(on b10 b2))
)
)


