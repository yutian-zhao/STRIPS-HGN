

(define (problem blocksworld9-1429)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 )
(:init
(arm-empty)
(on b1 b5)
(on b2 b9)
(on b3 b7)
(on b4 b1)
(on-table b5)
(on-table b6)
(on b7 b8)
(on b8 b6)
(on-table b9)
(clear b2)
(clear b3)
(clear b4)
)
(:goal
(and
(on b2 b8)
(on b3 b5)
(on b4 b7)
(on b5 b6)
(on b6 b9)
(on b7 b1)
(on b8 b4)
(on b9 b2))
)
)


