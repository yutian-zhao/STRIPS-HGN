

(define (problem blocksworld11-7485)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 )
(:init
(arm-empty)
(on b1 b9)
(on-table b2)
(on b3 b10)
(on b4 b11)
(on b5 b7)
(on b6 b4)
(on-table b7)
(on b8 b3)
(on b9 b5)
(on-table b10)
(on b11 b8)
(clear b1)
(clear b2)
(clear b6)
)
(:goal
(and
(on b2 b8)
(on b3 b9)
(on b4 b6)
(on b5 b2)
(on b6 b1)
(on b7 b10)
(on b9 b11)
(on b10 b5)
(on b11 b7))
)
)


