

(define (problem blocksworld11-9510)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 )
(:init
(arm-empty)
(on-table b1)
(on b2 b10)
(on b3 b4)
(on-table b4)
(on b5 b11)
(on-table b6)
(on b7 b6)
(on-table b8)
(on b9 b8)
(on b10 b9)
(on b11 b2)
(clear b1)
(clear b3)
(clear b5)
(clear b7)
)
(:goal
(and
(on b1 b4)
(on b2 b9)
(on b3 b7)
(on b5 b2)
(on b6 b10)
(on b7 b5)
(on b8 b11)
(on b10 b3))
)
)


