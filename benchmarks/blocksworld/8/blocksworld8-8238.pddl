

(define (problem blocksworld8-8238)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 )
(:init
(arm-empty)
(on b1 b5)
(on b2 b6)
(on-table b3)
(on b4 b1)
(on-table b5)
(on b6 b3)
(on b7 b8)
(on-table b8)
(clear b2)
(clear b4)
(clear b7)
)
(:goal
(and
(on b2 b5)
(on b4 b6)
(on b7 b2)
(on b8 b7))
)
)


