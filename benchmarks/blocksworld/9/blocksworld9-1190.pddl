

(define (problem blocksworld9-1190)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 )
(:init
(arm-empty)
(on b1 b9)
(on b2 b1)
(on b3 b5)
(on-table b4)
(on-table b5)
(on b6 b2)
(on b7 b6)
(on b8 b3)
(on b9 b8)
(clear b4)
(clear b7)
)
(:goal
(and
(on b1 b7)
(on b2 b8)
(on b4 b5)
(on b6 b2)
(on b7 b6)
(on b9 b1))
)
)


