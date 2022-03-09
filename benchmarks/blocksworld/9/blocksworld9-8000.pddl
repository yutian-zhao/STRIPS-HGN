

(define (problem blocksworld9-8000)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 )
(:init
(arm-empty)
(on b1 b4)
(on b2 b9)
(on b3 b5)
(on-table b4)
(on-table b5)
(on-table b6)
(on b7 b6)
(on b8 b2)
(on b9 b7)
(clear b1)
(clear b3)
(clear b8)
)
(:goal
(and
(on b3 b1)
(on b4 b9)
(on b7 b3)
(on b8 b7)
(on b9 b8))
)
)


