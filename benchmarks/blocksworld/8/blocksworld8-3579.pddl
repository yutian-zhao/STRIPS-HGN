

(define (problem blocksworld8-3579)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 )
(:init
(arm-empty)
(on b1 b6)
(on b2 b5)
(on-table b3)
(on b4 b3)
(on-table b5)
(on-table b6)
(on-table b7)
(on b8 b4)
(clear b1)
(clear b2)
(clear b7)
(clear b8)
)
(:goal
(and
(on b1 b5)
(on b2 b1)
(on b4 b8)
(on b8 b3))
)
)


