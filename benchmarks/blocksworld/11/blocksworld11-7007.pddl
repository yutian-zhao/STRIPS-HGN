

(define (problem blocksworld11-7007)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 )
(:init
(arm-empty)
(on b1 b3)
(on b2 b4)
(on-table b3)
(on b4 b7)
(on b5 b1)
(on-table b6)
(on-table b7)
(on-table b8)
(on b9 b2)
(on b10 b8)
(on b11 b6)
(clear b5)
(clear b9)
(clear b10)
(clear b11)
)
(:goal
(and
(on b1 b4)
(on b2 b5)
(on b3 b8)
(on b4 b2)
(on b5 b9)
(on b6 b1)
(on b7 b11)
(on b8 b7)
(on b11 b10))
)
)


