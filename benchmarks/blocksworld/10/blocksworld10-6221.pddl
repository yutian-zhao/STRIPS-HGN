

(define (problem blocksworld10-6221)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 )
(:init
(arm-empty)
(on b1 b3)
(on b2 b5)
(on-table b3)
(on-table b4)
(on b5 b6)
(on-table b6)
(on-table b7)
(on b8 b2)
(on-table b9)
(on-table b10)
(clear b1)
(clear b4)
(clear b7)
(clear b8)
(clear b9)
(clear b10)
)
(:goal
(and
(on b3 b5)
(on b4 b10)
(on b6 b3)
(on b7 b9)
(on b8 b4)
(on b9 b6)
(on b10 b2))
)
)


