

(define (problem blocksworld10-2134)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 )
(:init
(arm-empty)
(on-table b1)
(on b2 b5)
(on-table b3)
(on b4 b8)
(on b5 b7)
(on b6 b10)
(on b7 b9)
(on-table b8)
(on-table b9)
(on-table b10)
(clear b1)
(clear b2)
(clear b3)
(clear b4)
(clear b6)
)
(:goal
(and
(on b2 b9)
(on b3 b1)
(on b4 b6)
(on b5 b4)
(on b6 b10)
(on b7 b3)
(on b9 b8)
(on b10 b7))
)
)


