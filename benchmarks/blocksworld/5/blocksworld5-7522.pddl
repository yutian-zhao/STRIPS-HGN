

(define (problem blocksworld5-7522)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 )
(:init
(arm-empty)
(on-table b1)
(on-table b2)
(on b3 b2)
(on b4 b5)
(on-table b5)
(clear b1)
(clear b3)
(clear b4)
)
(:goal
(and
(on b2 b3)
(on b5 b1))
)
)


