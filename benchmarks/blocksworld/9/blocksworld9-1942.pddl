

(define (problem blocksworld9-1942)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 )
(:init
(arm-empty)
(on b1 b9)
(on-table b2)
(on b3 b8)
(on-table b4)
(on-table b5)
(on b6 b1)
(on b7 b2)
(on b8 b5)
(on-table b9)
(clear b3)
(clear b4)
(clear b6)
(clear b7)
)
(:goal
(and
(on b1 b3)
(on b2 b4)
(on b3 b6)
(on b8 b2)
(on b9 b1))
)
)


