

(define (problem blocksworld9-4626)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 )
(:init
(arm-empty)
(on-table b1)
(on b2 b6)
(on b3 b7)
(on-table b4)
(on-table b5)
(on b6 b5)
(on b7 b1)
(on-table b8)
(on-table b9)
(clear b2)
(clear b3)
(clear b4)
(clear b8)
(clear b9)
)
(:goal
(and
(on b1 b2)
(on b2 b6)
(on b3 b9)
(on b4 b5)
(on b6 b3)
(on b7 b8)
(on b9 b4))
)
)


