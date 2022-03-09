

(define (problem blocksworld11-4894)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 )
(:init
(arm-empty)
(on b1 b7)
(on b2 b8)
(on b3 b2)
(on b4 b10)
(on b5 b9)
(on b6 b3)
(on-table b7)
(on b8 b5)
(on b9 b4)
(on b10 b1)
(on b11 b6)
(clear b11)
)
(:goal
(and
(on b1 b7)
(on b2 b3)
(on b3 b5)
(on b4 b10)
(on b5 b6)
(on b6 b9)
(on b9 b11)
(on b10 b8)
(on b11 b1))
)
)


