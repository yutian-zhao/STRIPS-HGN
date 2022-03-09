

(define (problem blocksworld11-1269)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 )
(:init
(arm-empty)
(on b1 b5)
(on b2 b8)
(on b3 b9)
(on-table b4)
(on b5 b10)
(on b6 b2)
(on b7 b3)
(on b8 b1)
(on-table b9)
(on b10 b7)
(on b11 b4)
(clear b6)
(clear b11)
)
(:goal
(and
(on b1 b4)
(on b2 b5)
(on b3 b10)
(on b4 b8)
(on b5 b11)
(on b6 b3)
(on b8 b9)
(on b9 b2)
(on b10 b1))
)
)


