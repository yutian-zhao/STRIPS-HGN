

(define (problem blocksworld6-8643)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 )
(:init
(arm-empty)
(on b1 b3)
(on-table b2)
(on b3 b6)
(on b4 b2)
(on-table b5)
(on b6 b4)
(clear b1)
(clear b5)
)
(:goal
(and
(on b1 b3)
(on b4 b2)
(on b6 b1))
)
)


