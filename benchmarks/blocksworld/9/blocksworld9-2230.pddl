

(define (problem blocksworld9-2230)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 )
(:init
(arm-empty)
(on b1 b5)
(on b2 b8)
(on-table b3)
(on-table b4)
(on b5 b4)
(on b6 b1)
(on-table b7)
(on-table b8)
(on b9 b3)
(clear b2)
(clear b6)
(clear b7)
(clear b9)
)
(:goal
(and
(on b2 b5)
(on b3 b2)
(on b7 b4)
(on b8 b6)
(on b9 b8))
)
)


