

(define (problem blocksworld9-4369)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 )
(:init
(arm-empty)
(on b1 b4)
(on-table b2)
(on-table b3)
(on b4 b5)
(on b5 b2)
(on-table b6)
(on b7 b1)
(on b8 b9)
(on-table b9)
(clear b3)
(clear b6)
(clear b7)
(clear b8)
)
(:goal
(and
(on b1 b4)
(on b3 b6)
(on b4 b9)
(on b5 b3)
(on b9 b7))
)
)


