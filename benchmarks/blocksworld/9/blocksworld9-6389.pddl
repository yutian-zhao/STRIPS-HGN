

(define (problem blocksworld9-6389)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 )
(:init
(arm-empty)
(on-table b1)
(on-table b2)
(on b3 b1)
(on b4 b6)
(on b5 b9)
(on b6 b7)
(on b7 b5)
(on b8 b4)
(on b9 b2)
(clear b3)
(clear b8)
)
(:goal
(and
(on b2 b1)
(on b3 b5)
(on b5 b8)
(on b6 b3)
(on b8 b9)
(on b9 b2))
)
)


