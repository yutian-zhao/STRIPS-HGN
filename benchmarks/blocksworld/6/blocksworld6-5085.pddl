

(define (problem blocksworld6-5085)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 )
(:init
(arm-empty)
(on-table b1)
(on-table b2)
(on b3 b2)
(on b4 b3)
(on b5 b1)
(on b6 b4)
(clear b5)
(clear b6)
)
(:goal
(and
(on b1 b6)
(on b2 b1)
(on b3 b4)
(on b4 b2)
(on b6 b5))
)
)


