

(define (problem blocksworld9-5085)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 )
(:init
(arm-empty)
(on b1 b6)
(on-table b2)
(on b3 b7)
(on b4 b3)
(on b5 b8)
(on b6 b9)
(on b7 b1)
(on b8 b2)
(on b9 b5)
(clear b4)
)
(:goal
(and
(on b2 b7)
(on b3 b9)
(on b4 b1)
(on b5 b3)
(on b8 b4)
(on b9 b2))
)
)


