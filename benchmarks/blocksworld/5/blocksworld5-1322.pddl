

(define (problem blocksworld5-1322)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 )
(:init
(arm-empty)
(on-table b1)
(on b2 b3)
(on-table b3)
(on-table b4)
(on-table b5)
(clear b1)
(clear b2)
(clear b4)
(clear b5)
)
(:goal
(and
(on b1 b2)
(on b2 b4)
(on b3 b1))
)
)


