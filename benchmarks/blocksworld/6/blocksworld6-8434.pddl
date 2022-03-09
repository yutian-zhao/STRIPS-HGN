

(define (problem blocksworld6-8434)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 )
(:init
(arm-empty)
(on b1 b4)
(on b2 b5)
(on-table b3)
(on-table b4)
(on-table b5)
(on b6 b3)
(clear b1)
(clear b2)
(clear b6)
)
(:goal
(and
(on b1 b5)
(on b5 b2)
(on b6 b1))
)
)


