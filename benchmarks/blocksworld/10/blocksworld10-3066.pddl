

(define (problem blocksworld10-3066)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 )
(:init
(arm-empty)
(on-table b1)
(on-table b2)
(on b3 b2)
(on-table b4)
(on-table b5)
(on b6 b9)
(on b7 b6)
(on-table b8)
(on b9 b3)
(on b10 b5)
(clear b1)
(clear b4)
(clear b7)
(clear b8)
(clear b10)
)
(:goal
(and
(on b2 b6)
(on b3 b10)
(on b5 b2)
(on b6 b3)
(on b7 b9)
(on b8 b5)
(on b10 b7))
)
)


