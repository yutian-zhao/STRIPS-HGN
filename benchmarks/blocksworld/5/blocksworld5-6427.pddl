

(define (problem blocksworld5-6427)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 )
(:init
(arm-empty)
(on b1 b5)
(on b2 b1)
(on-table b3)
(on-table b4)
(on b5 b4)
(clear b2)
(clear b3)
)
(:goal
(and
(on b1 b3)
(on b4 b2)
(on b5 b4))
)
)


