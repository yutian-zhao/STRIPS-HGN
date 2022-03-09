

(define (problem blocksworld9-8972)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 )
(:init
(arm-empty)
(on-table b1)
(on b2 b5)
(on b3 b4)
(on b4 b9)
(on b5 b8)
(on b6 b1)
(on-table b7)
(on b8 b6)
(on b9 b7)
(clear b2)
(clear b3)
)
(:goal
(and
(on b1 b3)
(on b3 b5)
(on b4 b1)
(on b5 b9)
(on b7 b8)
(on b8 b2)
(on b9 b6))
)
)


