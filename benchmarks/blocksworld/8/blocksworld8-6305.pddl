

(define (problem blocksworld8-6305)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 )
(:init
(arm-empty)
(on-table b1)
(on-table b2)
(on-table b3)
(on b4 b6)
(on b5 b4)
(on-table b6)
(on b7 b5)
(on b8 b2)
(clear b1)
(clear b3)
(clear b7)
(clear b8)
)
(:goal
(and
(on b4 b2)
(on b5 b6)
(on b6 b3)
(on b7 b8)
(on b8 b4))
)
)


