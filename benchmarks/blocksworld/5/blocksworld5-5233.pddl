

(define (problem blocksworld5-5233)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 )
(:init
(arm-empty)
(on-table b1)
(on b2 b5)
(on b3 b4)
(on b4 b1)
(on b5 b3)
(clear b2)
)
(:goal
(and
(on b2 b4)
(on b3 b5)
(on b4 b1)
(on b5 b2))
)
)


