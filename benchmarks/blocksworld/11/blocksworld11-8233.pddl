

(define (problem blocksworld11-8233)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 )
(:init
(arm-empty)
(on b1 b11)
(on b2 b6)
(on-table b3)
(on b4 b5)
(on b5 b1)
(on b6 b9)
(on b7 b2)
(on b8 b4)
(on b9 b3)
(on b10 b8)
(on-table b11)
(clear b7)
(clear b10)
)
(:goal
(and
(on b1 b7)
(on b2 b6)
(on b3 b9)
(on b4 b10)
(on b5 b4)
(on b6 b5)
(on b7 b3)
(on b8 b2)
(on b11 b1))
)
)


