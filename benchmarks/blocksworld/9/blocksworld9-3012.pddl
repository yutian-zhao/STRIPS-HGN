

(define (problem blocksworld9-3012)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 )
(:init
(arm-empty)
(on-table b1)
(on b2 b5)
(on b3 b8)
(on b4 b9)
(on b5 b3)
(on-table b6)
(on-table b7)
(on-table b8)
(on-table b9)
(clear b1)
(clear b2)
(clear b4)
(clear b6)
(clear b7)
)
(:goal
(and
(on b1 b2)
(on b2 b8)
(on b4 b7)
(on b5 b9)
(on b6 b4)
(on b7 b5)
(on b8 b3)
(on b9 b1))
)
)


