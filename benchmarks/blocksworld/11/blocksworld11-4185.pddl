

(define (problem blocksworld11-4185)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 )
(:init
(arm-empty)
(on-table b1)
(on b2 b3)
(on-table b3)
(on b4 b7)
(on b5 b4)
(on-table b6)
(on b7 b9)
(on-table b8)
(on b9 b10)
(on b10 b8)
(on b11 b2)
(clear b1)
(clear b5)
(clear b6)
(clear b11)
)
(:goal
(and
(on b5 b2)
(on b6 b5)
(on b7 b11)
(on b8 b3)
(on b9 b10)
(on b10 b4)
(on b11 b6))
)
)


