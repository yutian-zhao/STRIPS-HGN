

(define (problem blocksworld8-5386)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 )
(:init
(arm-empty)
(on b1 b5)
(on b2 b8)
(on-table b3)
(on-table b4)
(on-table b5)
(on b6 b2)
(on-table b7)
(on-table b8)
(clear b1)
(clear b3)
(clear b4)
(clear b6)
(clear b7)
)
(:goal
(and
(on b1 b3)
(on b2 b6)
(on b3 b5)
(on b6 b7)
(on b7 b8))
)
)


