

(define (problem blocksworld8-6221)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 )
(:init
(arm-empty)
(on b1 b7)
(on b2 b8)
(on b3 b4)
(on b4 b5)
(on b5 b1)
(on-table b6)
(on-table b7)
(on-table b8)
(clear b2)
(clear b3)
(clear b6)
)
(:goal
(and
(on b2 b1)
(on b3 b8)
(on b4 b2)
(on b7 b6)
(on b8 b7))
)
)


