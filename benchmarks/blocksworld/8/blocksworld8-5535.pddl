

(define (problem blocksworld8-5535)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 )
(:init
(arm-empty)
(on b1 b5)
(on b2 b6)
(on-table b3)
(on b4 b8)
(on b5 b7)
(on-table b6)
(on b7 b4)
(on-table b8)
(clear b1)
(clear b2)
(clear b3)
)
(:goal
(and
(on b1 b2)
(on b3 b8)
(on b4 b7)
(on b7 b6)
(on b8 b5))
)
)


