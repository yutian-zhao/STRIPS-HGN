

(define (problem blocksworld9-2441)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 )
(:init
(arm-empty)
(on b1 b5)
(on b2 b6)
(on b3 b9)
(on b4 b2)
(on-table b5)
(on b6 b3)
(on-table b7)
(on b8 b4)
(on b9 b1)
(clear b7)
(clear b8)
)
(:goal
(and
(on b2 b6)
(on b3 b7)
(on b4 b5)
(on b5 b1)
(on b6 b9)
(on b7 b8)
(on b8 b2))
)
)


