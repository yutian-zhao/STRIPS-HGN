

(define (problem blocksworld8-6321)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 )
(:init
(arm-empty)
(on b1 b6)
(on b2 b5)
(on b3 b1)
(on b4 b8)
(on-table b5)
(on-table b6)
(on-table b7)
(on b8 b3)
(clear b2)
(clear b4)
(clear b7)
)
(:goal
(and
(on b2 b6)
(on b3 b5)
(on b5 b1)
(on b6 b4)
(on b8 b2))
)
)


