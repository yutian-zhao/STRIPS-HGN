

(define (problem blocksworld9-5611)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 )
(:init
(arm-empty)
(on-table b1)
(on b2 b1)
(on b3 b7)
(on b4 b9)
(on-table b5)
(on-table b6)
(on-table b7)
(on b8 b5)
(on b9 b3)
(clear b2)
(clear b4)
(clear b6)
(clear b8)
)
(:goal
(and
(on b1 b3)
(on b3 b6)
(on b6 b5)
(on b8 b7)
(on b9 b8))
)
)


