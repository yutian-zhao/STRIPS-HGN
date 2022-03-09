

(define (problem blocksworld9-4815)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 )
(:init
(arm-empty)
(on-table b1)
(on b2 b6)
(on b3 b4)
(on b4 b9)
(on b5 b8)
(on b6 b1)
(on b7 b2)
(on-table b8)
(on b9 b5)
(clear b3)
(clear b7)
)
(:goal
(and
(on b1 b9)
(on b2 b8)
(on b3 b4)
(on b5 b1)
(on b6 b7)
(on b7 b2)
(on b8 b5))
)
)


