

(define (problem blocksworld8-8224)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 )
(:init
(arm-empty)
(on b1 b8)
(on-table b2)
(on-table b3)
(on b4 b5)
(on b5 b7)
(on b6 b2)
(on b7 b3)
(on b8 b4)
(clear b1)
(clear b6)
)
(:goal
(and
(on b3 b6)
(on b4 b3)
(on b5 b2)
(on b6 b5)
(on b8 b1))
)
)


