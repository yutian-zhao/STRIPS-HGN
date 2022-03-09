

(define (problem blocksworld11-8006)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 )
(:init
(arm-empty)
(on-table b1)
(on b2 b4)
(on b3 b2)
(on b4 b11)
(on-table b5)
(on b6 b10)
(on-table b7)
(on b8 b5)
(on b9 b1)
(on b10 b8)
(on b11 b9)
(clear b3)
(clear b6)
(clear b7)
)
(:goal
(and
(on b2 b8)
(on b3 b2)
(on b5 b3)
(on b6 b9)
(on b7 b1)
(on b8 b10)
(on b10 b7)
(on b11 b5))
)
)


