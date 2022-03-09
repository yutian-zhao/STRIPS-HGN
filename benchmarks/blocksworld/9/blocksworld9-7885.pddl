

(define (problem blocksworld9-7885)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 )
(:init
(arm-empty)
(on-table b1)
(on-table b2)
(on-table b3)
(on b4 b5)
(on-table b5)
(on b6 b4)
(on b7 b6)
(on b8 b1)
(on b9 b8)
(clear b2)
(clear b3)
(clear b7)
(clear b9)
)
(:goal
(and
(on b1 b4)
(on b3 b9)
(on b5 b1)
(on b7 b8)
(on b8 b5))
)
)


