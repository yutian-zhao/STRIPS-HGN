

(define (problem blocksworld9-1208)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 )
(:init
(arm-empty)
(on b1 b7)
(on b2 b6)
(on b3 b4)
(on-table b4)
(on b5 b8)
(on-table b6)
(on-table b7)
(on b8 b2)
(on b9 b5)
(clear b1)
(clear b3)
(clear b9)
)
(:goal
(and
(on b2 b7)
(on b3 b2)
(on b5 b3)
(on b6 b5)
(on b7 b8)
(on b8 b4)
(on b9 b6))
)
)


