

(define (problem blocksworld6-9909)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 )
(:init
(arm-empty)
(on-table b1)
(on b2 b1)
(on b3 b6)
(on-table b4)
(on-table b5)
(on b6 b4)
(clear b2)
(clear b3)
(clear b5)
)
(:goal
(and
(on b2 b4)
(on b3 b5)
(on b4 b3)
(on b5 b6))
)
)


