

(define (problem blocksworld7-7354)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 )
(:init
(arm-empty)
(on b1 b5)
(on-table b2)
(on b3 b2)
(on-table b4)
(on b5 b7)
(on-table b6)
(on-table b7)
(clear b1)
(clear b3)
(clear b4)
(clear b6)
)
(:goal
(and
(on b1 b7)
(on b2 b6)
(on b3 b5)
(on b4 b1)
(on b5 b4))
)
)


