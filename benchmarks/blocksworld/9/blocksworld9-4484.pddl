

(define (problem blocksworld9-4484)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 )
(:init
(arm-empty)
(on b1 b5)
(on-table b2)
(on b3 b7)
(on b4 b6)
(on-table b5)
(on-table b6)
(on b7 b1)
(on-table b8)
(on b9 b3)
(clear b2)
(clear b4)
(clear b8)
(clear b9)
)
(:goal
(and
(on b1 b3)
(on b2 b5)
(on b3 b6)
(on b6 b4)
(on b7 b8)
(on b9 b1))
)
)


