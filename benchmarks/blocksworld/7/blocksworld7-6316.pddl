

(define (problem blocksworld7-6316)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 )
(:init
(arm-empty)
(on-table b1)
(on b2 b3)
(on-table b3)
(on b4 b1)
(on-table b5)
(on-table b6)
(on b7 b5)
(clear b2)
(clear b4)
(clear b6)
(clear b7)
)
(:goal
(and
(on b2 b5)
(on b3 b6)
(on b5 b1)
(on b6 b7)
(on b7 b2))
)
)


