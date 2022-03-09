

(define (problem blocksworld9-3496)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 )
(:init
(arm-empty)
(on b1 b4)
(on b2 b9)
(on b3 b5)
(on b4 b2)
(on-table b5)
(on-table b6)
(on b7 b3)
(on b8 b6)
(on-table b9)
(clear b1)
(clear b7)
(clear b8)
)
(:goal
(and
(on b4 b1)
(on b6 b7)
(on b7 b9)
(on b8 b5)
(on b9 b4))
)
)


