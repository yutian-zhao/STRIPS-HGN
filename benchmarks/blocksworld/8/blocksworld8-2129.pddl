

(define (problem blocksworld8-2129)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 )
(:init
(arm-empty)
(on b1 b4)
(on-table b2)
(on-table b3)
(on-table b4)
(on b5 b1)
(on b6 b5)
(on b7 b8)
(on b8 b6)
(clear b2)
(clear b3)
(clear b7)
)
(:goal
(and
(on b1 b3)
(on b2 b1)
(on b4 b2)
(on b5 b4)
(on b7 b5)
(on b8 b6))
)
)


