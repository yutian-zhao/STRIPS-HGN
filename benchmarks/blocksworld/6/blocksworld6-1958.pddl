

(define (problem blocksworld6-1958)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 )
(:init
(arm-empty)
(on b1 b3)
(on b2 b1)
(on-table b3)
(on-table b4)
(on b5 b4)
(on-table b6)
(clear b2)
(clear b5)
(clear b6)
)
(:goal
(and
(on b2 b5)
(on b4 b3)
(on b5 b1)
(on b6 b4))
)
)


