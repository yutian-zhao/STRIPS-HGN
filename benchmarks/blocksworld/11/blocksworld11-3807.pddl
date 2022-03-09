

(define (problem blocksworld11-3807)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 )
(:init
(arm-empty)
(on b1 b2)
(on b2 b3)
(on b3 b9)
(on b4 b10)
(on b5 b6)
(on b6 b1)
(on-table b7)
(on b8 b5)
(on b9 b11)
(on b10 b7)
(on-table b11)
(clear b4)
(clear b8)
)
(:goal
(and
(on b2 b3)
(on b3 b5)
(on b4 b1)
(on b5 b4)
(on b7 b6)
(on b8 b2)
(on b10 b8)
(on b11 b7))
)
)


