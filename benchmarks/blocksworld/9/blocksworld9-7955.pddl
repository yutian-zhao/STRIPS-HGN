

(define (problem blocksworld9-7955)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 )
(:init
(arm-empty)
(on-table b1)
(on b2 b7)
(on b3 b8)
(on b4 b6)
(on b5 b3)
(on b6 b1)
(on-table b7)
(on b8 b9)
(on b9 b2)
(clear b4)
(clear b5)
)
(:goal
(and
(on b1 b8)
(on b5 b3)
(on b6 b4)
(on b7 b1)
(on b8 b2)
(on b9 b7))
)
)


