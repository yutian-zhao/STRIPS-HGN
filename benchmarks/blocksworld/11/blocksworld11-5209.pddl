

(define (problem blocksworld11-5209)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 )
(:init
(arm-empty)
(on-table b1)
(on b2 b10)
(on b3 b7)
(on b4 b6)
(on b5 b11)
(on b6 b9)
(on b7 b4)
(on b8 b1)
(on b9 b5)
(on-table b10)
(on b11 b8)
(clear b2)
(clear b3)
)
(:goal
(and
(on b2 b7)
(on b4 b9)
(on b5 b1)
(on b6 b3)
(on b7 b10)
(on b8 b6)
(on b9 b2)
(on b10 b11))
)
)


