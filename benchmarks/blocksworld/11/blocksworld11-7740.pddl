

(define (problem blocksworld11-7740)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 )
(:init
(arm-empty)
(on b1 b11)
(on b2 b7)
(on b3 b4)
(on b4 b10)
(on b5 b6)
(on-table b6)
(on b7 b3)
(on b8 b9)
(on-table b9)
(on-table b10)
(on b11 b5)
(clear b1)
(clear b2)
(clear b8)
)
(:goal
(and
(on b1 b8)
(on b3 b5)
(on b4 b6)
(on b6 b2)
(on b7 b3)
(on b8 b9)
(on b9 b4)
(on b10 b11)
(on b11 b1))
)
)


