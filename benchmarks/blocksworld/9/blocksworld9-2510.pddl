

(define (problem blocksworld9-2510)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 )
(:init
(arm-empty)
(on-table b1)
(on b2 b1)
(on-table b3)
(on-table b4)
(on b5 b6)
(on b6 b9)
(on b7 b8)
(on b8 b4)
(on b9 b7)
(clear b2)
(clear b3)
(clear b5)
)
(:goal
(and
(on b1 b4)
(on b2 b7)
(on b4 b8)
(on b5 b6)
(on b7 b9)
(on b9 b5))
)
)


