

(define (problem blocksworld8-3409)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 )
(:init
(arm-empty)
(on b1 b2)
(on b2 b8)
(on b3 b7)
(on-table b4)
(on b5 b3)
(on b6 b1)
(on-table b7)
(on b8 b4)
(clear b5)
(clear b6)
)
(:goal
(and
(on b1 b2)
(on b2 b5)
(on b3 b6)
(on b5 b4)
(on b6 b8)
(on b7 b3)
(on b8 b1))
)
)


