

(define (problem blocksworld6-5733)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 )
(:init
(arm-empty)
(on b1 b2)
(on-table b2)
(on-table b3)
(on b4 b1)
(on b5 b6)
(on-table b6)
(clear b3)
(clear b4)
(clear b5)
)
(:goal
(and
(on b1 b2)
(on b2 b3)
(on b4 b6)
(on b5 b4))
)
)


