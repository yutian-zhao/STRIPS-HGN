

(define (problem blocksworld6-7734)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 )
(:init
(arm-empty)
(on b1 b2)
(on b2 b4)
(on b3 b5)
(on b4 b3)
(on-table b5)
(on-table b6)
(clear b1)
(clear b6)
)
(:goal
(and
(on b2 b6)
(on b3 b2)
(on b4 b1))
)
)


