

(define (problem blocksworld6-5230)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 )
(:init
(arm-empty)
(on-table b1)
(on b2 b6)
(on-table b3)
(on-table b4)
(on-table b5)
(on-table b6)
(clear b1)
(clear b2)
(clear b3)
(clear b4)
(clear b5)
)
(:goal
(and
(on b2 b6)
(on b4 b2)
(on b5 b4)
(on b6 b3))
)
)


