

(define (problem blocksworld6-3162)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 )
(:init
(arm-empty)
(on-table b1)
(on-table b2)
(on b3 b6)
(on b4 b3)
(on b5 b2)
(on b6 b5)
(clear b1)
(clear b4)
)
(:goal
(and
(on b2 b4)
(on b3 b2)
(on b4 b6)
(on b5 b1)
(on b6 b5))
)
)


