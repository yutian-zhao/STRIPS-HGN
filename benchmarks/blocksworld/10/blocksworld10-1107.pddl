

(define (problem blocksworld10-1107)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 )
(:init
(arm-empty)
(on-table b1)
(on b2 b7)
(on b3 b2)
(on b4 b3)
(on-table b5)
(on b6 b1)
(on b7 b10)
(on b8 b9)
(on b9 b5)
(on b10 b8)
(clear b4)
(clear b6)
)
(:goal
(and
(on b1 b4)
(on b2 b3)
(on b3 b1)
(on b6 b2)
(on b7 b10)
(on b10 b9))
)
)


