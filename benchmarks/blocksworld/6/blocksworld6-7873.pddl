

(define (problem blocksworld6-7873)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 )
(:init
(arm-empty)
(on b1 b2)
(on-table b2)
(on b3 b5)
(on b4 b1)
(on b5 b6)
(on-table b6)
(clear b3)
(clear b4)
)
(:goal
(and
(on b1 b4)
(on b3 b6)
(on b5 b3)
(on b6 b1))
)
)


