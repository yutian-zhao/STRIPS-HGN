

(define (problem blocksworld6-9199)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 )
(:init
(arm-empty)
(on b1 b3)
(on b2 b1)
(on b3 b6)
(on-table b4)
(on b5 b4)
(on b6 b5)
(clear b2)
)
(:goal
(and
(on b3 b5)
(on b4 b3)
(on b5 b6)
(on b6 b1))
)
)


