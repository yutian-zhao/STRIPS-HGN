

(define (problem blocksworld10-8273)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 )
(:init
(arm-empty)
(on b1 b9)
(on b2 b1)
(on b3 b5)
(on-table b4)
(on b5 b4)
(on-table b6)
(on b7 b8)
(on-table b8)
(on b9 b6)
(on b10 b2)
(clear b3)
(clear b7)
(clear b10)
)
(:goal
(and
(on b1 b6)
(on b2 b4)
(on b4 b1)
(on b5 b2)
(on b7 b3)
(on b9 b7)
(on b10 b5))
)
)


