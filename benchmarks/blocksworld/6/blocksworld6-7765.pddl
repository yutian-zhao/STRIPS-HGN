

(define (problem blocksworld6-7765)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 )
(:init
(arm-empty)
(on b1 b2)
(on b2 b4)
(on b3 b6)
(on-table b4)
(on b5 b3)
(on b6 b1)
(clear b5)
)
(:goal
(and
(on b1 b6)
(on b2 b1)
(on b4 b2))
)
)


