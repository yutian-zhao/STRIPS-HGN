

(define (problem blocksworld6-5684)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 )
(:init
(arm-empty)
(on b1 b5)
(on b2 b4)
(on-table b3)
(on b4 b6)
(on-table b5)
(on b6 b1)
(clear b2)
(clear b3)
)
(:goal
(and
(on b2 b5)
(on b3 b6)
(on b4 b2)
(on b5 b3)
(on b6 b1))
)
)


