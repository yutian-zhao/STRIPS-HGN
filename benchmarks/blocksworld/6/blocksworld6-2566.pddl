

(define (problem blocksworld6-2566)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 )
(:init
(arm-empty)
(on b1 b3)
(on b2 b6)
(on b3 b2)
(on b4 b5)
(on-table b5)
(on b6 b4)
(clear b1)
)
(:goal
(and
(on b2 b6)
(on b5 b3)
(on b6 b1))
)
)


