

(define (problem blocksworld7-8629)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 )
(:init
(arm-empty)
(on b1 b2)
(on b2 b3)
(on b3 b4)
(on-table b4)
(on b5 b6)
(on-table b6)
(on-table b7)
(clear b1)
(clear b5)
(clear b7)
)
(:goal
(and
(on b1 b3)
(on b2 b1)
(on b3 b4)
(on b4 b7)
(on b6 b2)
(on b7 b5))
)
)


