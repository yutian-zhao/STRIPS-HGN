

(define (problem blocksworld6-4480)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 )
(:init
(arm-empty)
(on-table b1)
(on b2 b5)
(on b3 b1)
(on-table b4)
(on b5 b6)
(on b6 b3)
(clear b2)
(clear b4)
)
(:goal
(and
(on b1 b5)
(on b2 b6)
(on b3 b4)
(on b5 b3))
)
)


