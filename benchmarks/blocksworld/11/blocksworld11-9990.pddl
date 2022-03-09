

(define (problem blocksworld11-9990)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 )
(:init
(arm-empty)
(on-table b1)
(on b2 b8)
(on b3 b6)
(on b4 b11)
(on b5 b3)
(on b6 b4)
(on b7 b10)
(on-table b8)
(on b9 b5)
(on-table b10)
(on b11 b7)
(clear b1)
(clear b2)
(clear b9)
)
(:goal
(and
(on b1 b10)
(on b2 b1)
(on b3 b2)
(on b4 b7)
(on b6 b8)
(on b7 b5)
(on b8 b11)
(on b10 b9)
(on b11 b4))
)
)


