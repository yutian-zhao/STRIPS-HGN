

(define (problem blocksworld9-3606)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 )
(:init
(arm-empty)
(on b1 b9)
(on b2 b8)
(on b3 b5)
(on b4 b1)
(on b5 b4)
(on b6 b7)
(on-table b7)
(on b8 b3)
(on-table b9)
(clear b2)
(clear b6)
)
(:goal
(and
(on b2 b4)
(on b3 b7)
(on b5 b3)
(on b6 b5)
(on b7 b9)
(on b8 b1)
(on b9 b8))
)
)


