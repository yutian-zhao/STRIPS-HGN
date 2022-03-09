

(define (problem blocksworld11-6275)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 )
(:init
(arm-empty)
(on-table b1)
(on-table b2)
(on-table b3)
(on b4 b9)
(on b5 b6)
(on-table b6)
(on-table b7)
(on b8 b7)
(on b9 b10)
(on-table b10)
(on b11 b4)
(clear b1)
(clear b2)
(clear b3)
(clear b5)
(clear b8)
(clear b11)
)
(:goal
(and
(on b1 b9)
(on b2 b5)
(on b5 b11)
(on b6 b7)
(on b8 b3)
(on b9 b10)
(on b10 b8)
(on b11 b4))
)
)


