

(define (problem blocksworld5-2652)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 )
(:init
(arm-empty)
(on b1 b5)
(on-table b2)
(on b3 b4)
(on b4 b1)
(on b5 b2)
(clear b3)
)
(:goal
(and
(on b1 b3)
(on b2 b1)
(on b3 b5))
)
)


