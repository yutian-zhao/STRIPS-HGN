

(define (problem blocksworld11-8144)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 )
(:init
(arm-empty)
(on b1 b11)
(on b2 b6)
(on b3 b5)
(on b4 b9)
(on b5 b1)
(on-table b6)
(on b7 b8)
(on-table b8)
(on b9 b2)
(on-table b10)
(on b11 b10)
(clear b3)
(clear b4)
(clear b7)
)
(:goal
(and
(on b1 b4)
(on b3 b11)
(on b4 b7)
(on b5 b3)
(on b7 b5)
(on b8 b10)
(on b9 b2)
(on b10 b9)
(on b11 b8))
)
)


