

(define (problem blocksworld4-5296)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 )
(:init
(arm-empty)
(on b1 b4)
(on b2 b1)
(on-table b3)
(on b4 b3)
(clear b2)
)
(:goal
(and
(on b1 b4)
(on b2 b1)
(on b3 b2))
)
)


