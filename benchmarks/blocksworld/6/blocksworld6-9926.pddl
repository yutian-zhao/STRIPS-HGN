

(define (problem blocksworld6-9926)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 )
(:init
(arm-empty)
(on b1 b2)
(on b2 b6)
(on-table b3)
(on-table b4)
(on-table b5)
(on b6 b5)
(clear b1)
(clear b3)
(clear b4)
)
(:goal
(and
(on b2 b4)
(on b3 b2)
(on b4 b1)
(on b5 b3)
(on b6 b5))
)
)


