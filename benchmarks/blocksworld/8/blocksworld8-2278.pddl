

(define (problem blocksworld8-2278)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 )
(:init
(arm-empty)
(on b1 b3)
(on b2 b6)
(on b3 b8)
(on b4 b1)
(on-table b5)
(on b6 b4)
(on-table b7)
(on-table b8)
(clear b2)
(clear b5)
(clear b7)
)
(:goal
(and
(on b1 b2)
(on b2 b6)
(on b4 b5)
(on b7 b3))
)
)


