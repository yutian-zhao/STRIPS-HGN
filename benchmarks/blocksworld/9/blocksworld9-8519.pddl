

(define (problem blocksworld9-8519)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 )
(:init
(arm-empty)
(on b1 b8)
(on b2 b1)
(on b3 b4)
(on b4 b6)
(on b5 b9)
(on-table b6)
(on b7 b3)
(on b8 b5)
(on b9 b7)
(clear b2)
)
(:goal
(and
(on b1 b3)
(on b2 b7)
(on b4 b5)
(on b5 b9)
(on b6 b4)
(on b8 b2))
)
)


