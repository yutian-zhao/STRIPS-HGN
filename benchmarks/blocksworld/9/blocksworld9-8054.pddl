

(define (problem blocksworld9-8054)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 )
(:init
(arm-empty)
(on b1 b3)
(on b2 b5)
(on b3 b9)
(on b4 b1)
(on-table b5)
(on b6 b4)
(on-table b7)
(on-table b8)
(on b9 b8)
(clear b2)
(clear b6)
(clear b7)
)
(:goal
(and
(on b1 b4)
(on b2 b9)
(on b3 b5)
(on b6 b3)
(on b7 b6)
(on b8 b2)
(on b9 b7))
)
)


