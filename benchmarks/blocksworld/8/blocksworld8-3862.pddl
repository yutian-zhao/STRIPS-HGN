

(define (problem blocksworld8-3862)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 )
(:init
(arm-empty)
(on b1 b4)
(on b2 b6)
(on-table b3)
(on b4 b7)
(on-table b5)
(on b6 b1)
(on-table b7)
(on b8 b2)
(clear b3)
(clear b5)
(clear b8)
)
(:goal
(and
(on b1 b2)
(on b2 b4)
(on b3 b1)
(on b4 b7)
(on b6 b3))
)
)


