

(define (problem blocksworld10-6515)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 )
(:init
(arm-empty)
(on b1 b4)
(on b2 b6)
(on-table b3)
(on b4 b3)
(on b5 b7)
(on b6 b10)
(on-table b7)
(on-table b8)
(on b9 b1)
(on b10 b9)
(clear b2)
(clear b5)
(clear b8)
)
(:goal
(and
(on b1 b3)
(on b2 b10)
(on b3 b6)
(on b5 b4)
(on b7 b9)
(on b9 b1)
(on b10 b5))
)
)


