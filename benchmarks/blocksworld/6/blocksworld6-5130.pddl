

(define (problem blocksworld6-5130)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 )
(:init
(arm-empty)
(on b1 b6)
(on b2 b3)
(on b3 b5)
(on b4 b2)
(on b5 b1)
(on-table b6)
(clear b4)
)
(:goal
(and
(on b1 b2)
(on b2 b6)
(on b3 b5)
(on b4 b3)
(on b6 b4))
)
)


