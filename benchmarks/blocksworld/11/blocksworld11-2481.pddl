

(define (problem blocksworld11-2481)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 )
(:init
(arm-empty)
(on-table b1)
(on b2 b1)
(on b3 b10)
(on b4 b11)
(on-table b5)
(on-table b6)
(on b7 b9)
(on b8 b7)
(on b9 b3)
(on b10 b6)
(on b11 b8)
(clear b2)
(clear b4)
(clear b5)
)
(:goal
(and
(on b1 b3)
(on b3 b5)
(on b4 b6)
(on b5 b10)
(on b7 b11)
(on b8 b9)
(on b9 b7)
(on b10 b2)
(on b11 b1))
)
)


