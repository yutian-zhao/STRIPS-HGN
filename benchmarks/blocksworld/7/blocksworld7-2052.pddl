

(define (problem blocksworld7-2052)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 )
(:init
(arm-empty)
(on-table b1)
(on-table b2)
(on b3 b4)
(on b4 b5)
(on b5 b7)
(on-table b6)
(on-table b7)
(clear b1)
(clear b2)
(clear b3)
(clear b6)
)
(:goal
(and
(on b1 b5)
(on b2 b6)
(on b4 b1)
(on b5 b2)
(on b6 b7))
)
)


