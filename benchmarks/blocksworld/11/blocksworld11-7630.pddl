

(define (problem blocksworld11-7630)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 )
(:init
(arm-empty)
(on-table b1)
(on b2 b5)
(on-table b3)
(on-table b4)
(on b5 b10)
(on b6 b8)
(on b7 b4)
(on b8 b11)
(on b9 b3)
(on-table b10)
(on b11 b2)
(clear b1)
(clear b6)
(clear b7)
(clear b9)
)
(:goal
(and
(on b1 b5)
(on b2 b3)
(on b4 b7)
(on b7 b2)
(on b8 b1)
(on b9 b8)
(on b10 b6)
(on b11 b10))
)
)


