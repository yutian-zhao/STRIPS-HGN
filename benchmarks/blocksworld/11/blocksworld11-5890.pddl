

(define (problem blocksworld11-5890)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 )
(:init
(arm-empty)
(on b1 b6)
(on-table b2)
(on b3 b1)
(on b4 b8)
(on b5 b11)
(on b6 b2)
(on-table b7)
(on-table b8)
(on b9 b7)
(on b10 b9)
(on b11 b4)
(clear b3)
(clear b5)
(clear b10)
)
(:goal
(and
(on b1 b9)
(on b2 b7)
(on b4 b3)
(on b5 b10)
(on b8 b11)
(on b9 b2)
(on b10 b1))
)
)


