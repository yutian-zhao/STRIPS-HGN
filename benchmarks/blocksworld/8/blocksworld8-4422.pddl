

(define (problem blocksworld8-4422)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 )
(:init
(arm-empty)
(on b1 b8)
(on-table b2)
(on b3 b1)
(on-table b4)
(on b5 b2)
(on b6 b5)
(on b7 b3)
(on b8 b4)
(clear b6)
(clear b7)
)
(:goal
(and
(on b1 b2)
(on b2 b4)
(on b3 b5)
(on b4 b8)
(on b5 b1)
(on b6 b7)
(on b8 b6))
)
)


