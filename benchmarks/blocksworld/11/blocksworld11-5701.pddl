

(define (problem blocksworld11-5701)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 )
(:init
(arm-empty)
(on b1 b2)
(on-table b2)
(on b3 b9)
(on b4 b3)
(on b5 b8)
(on b6 b1)
(on b7 b6)
(on-table b8)
(on-table b9)
(on-table b10)
(on b11 b5)
(clear b4)
(clear b7)
(clear b10)
(clear b11)
)
(:goal
(and
(on b2 b11)
(on b3 b2)
(on b5 b1)
(on b6 b8)
(on b8 b10)
(on b9 b7)
(on b10 b3)
(on b11 b4))
)
)


