

(define (problem blocksworld4-7575)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 )
(:init
(arm-empty)
(on b1 b3)
(on-table b2)
(on-table b3)
(on b4 b2)
(clear b1)
(clear b4)
)
(:goal
(and
(on b2 b4)
(on b3 b1))
)
)


