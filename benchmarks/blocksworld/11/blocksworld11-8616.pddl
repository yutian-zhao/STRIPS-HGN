

(define (problem blocksworld11-8616)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 )
(:init
(arm-empty)
(on b1 b9)
(on b2 b4)
(on-table b3)
(on b4 b10)
(on-table b5)
(on b6 b5)
(on-table b7)
(on b8 b7)
(on b9 b8)
(on b10 b11)
(on b11 b3)
(clear b1)
(clear b2)
(clear b6)
)
(:goal
(and
(on b1 b2)
(on b3 b9)
(on b4 b7)
(on b6 b11)
(on b7 b1)
(on b9 b4)
(on b11 b5))
)
)


