

(define (problem blocksworld5-1785)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 )
(:init
(arm-empty)
(on-table b1)
(on b2 b4)
(on b3 b5)
(on b4 b1)
(on-table b5)
(clear b2)
(clear b3)
)
(:goal
(and
(on b2 b4)
(on b5 b3))
)
)


