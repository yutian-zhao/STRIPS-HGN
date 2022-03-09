

(define (problem blocksworld10-2318)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 )
(:init
(arm-empty)
(on b1 b9)
(on b2 b4)
(on-table b3)
(on b4 b1)
(on-table b5)
(on b6 b10)
(on-table b7)
(on b8 b6)
(on b9 b7)
(on b10 b3)
(clear b2)
(clear b5)
(clear b8)
)
(:goal
(and
(on b1 b6)
(on b2 b3)
(on b4 b2)
(on b5 b8)
(on b6 b7)
(on b8 b4)
(on b10 b1))
)
)


