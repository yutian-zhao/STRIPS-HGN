

(define (problem blocksworld6-5399)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 )
(:init
(arm-empty)
(on b1 b4)
(on-table b2)
(on-table b3)
(on b4 b2)
(on-table b5)
(on b6 b1)
(clear b3)
(clear b5)
(clear b6)
)
(:goal
(and
(on b1 b4)
(on b2 b5)
(on b3 b6)
(on b5 b1))
)
)


