

(define (problem blocksworld5-8492)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 )
(:init
(arm-empty)
(on-table b1)
(on b2 b3)
(on b3 b1)
(on b4 b2)
(on b5 b4)
(clear b5)
)
(:goal
(and
(on b2 b1)
(on b4 b3)
(on b5 b4))
)
)


