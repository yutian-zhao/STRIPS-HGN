

(define (problem blocksworld9-1278)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 )
(:init
(arm-empty)
(on b1 b4)
(on b2 b9)
(on b3 b6)
(on b4 b8)
(on-table b5)
(on-table b6)
(on b7 b2)
(on-table b8)
(on-table b9)
(clear b1)
(clear b3)
(clear b5)
(clear b7)
)
(:goal
(and
(on b1 b5)
(on b2 b1)
(on b5 b4)
(on b9 b8))
)
)


