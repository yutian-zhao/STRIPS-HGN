

(define (problem blocksworld8-8507)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 )
(:init
(arm-empty)
(on-table b1)
(on b2 b5)
(on-table b3)
(on b4 b1)
(on-table b5)
(on-table b6)
(on-table b7)
(on b8 b2)
(clear b3)
(clear b4)
(clear b6)
(clear b7)
(clear b8)
)
(:goal
(and
(on b1 b5)
(on b5 b7)
(on b7 b8)
(on b8 b4))
)
)


