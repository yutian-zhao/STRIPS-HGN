

(define (problem blocksworld8-3594)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 )
(:init
(arm-empty)
(on-table b1)
(on-table b2)
(on-table b3)
(on b4 b1)
(on-table b5)
(on b6 b5)
(on b7 b3)
(on b8 b2)
(clear b4)
(clear b6)
(clear b7)
(clear b8)
)
(:goal
(and
(on b3 b2)
(on b4 b5)
(on b5 b8)
(on b6 b7)
(on b7 b1))
)
)


