

(define (problem blocksworld9-7894)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 )
(:init
(arm-empty)
(on b1 b9)
(on b2 b4)
(on b3 b7)
(on b4 b5)
(on b5 b6)
(on b6 b3)
(on-table b7)
(on-table b8)
(on b9 b2)
(clear b1)
(clear b8)
)
(:goal
(and
(on b2 b3)
(on b3 b8)
(on b4 b5)
(on b5 b2)
(on b6 b9)
(on b7 b1)
(on b8 b7)
(on b9 b4))
)
)


