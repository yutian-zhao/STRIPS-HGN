

(define (problem blocksworld8-1161)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 )
(:init
(arm-empty)
(on b1 b5)
(on-table b2)
(on-table b3)
(on-table b4)
(on b5 b3)
(on b6 b8)
(on b7 b1)
(on b8 b7)
(clear b2)
(clear b4)
(clear b6)
)
(:goal
(and
(on b2 b4)
(on b3 b6))
)
)


