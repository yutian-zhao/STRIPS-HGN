

(define (problem blocksworld8-9715)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 )
(:init
(arm-empty)
(on b1 b2)
(on-table b2)
(on b3 b7)
(on-table b4)
(on b5 b1)
(on b6 b5)
(on b7 b6)
(on b8 b4)
(clear b3)
(clear b8)
)
(:goal
(and
(on b2 b7)
(on b4 b2)
(on b5 b3)
(on b7 b1)
(on b8 b5))
)
)


