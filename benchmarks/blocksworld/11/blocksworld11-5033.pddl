

(define (problem blocksworld11-5033)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 )
(:init
(arm-empty)
(on b1 b11)
(on b2 b8)
(on b3 b2)
(on b4 b7)
(on b5 b1)
(on-table b6)
(on-table b7)
(on-table b8)
(on b9 b6)
(on-table b10)
(on b11 b4)
(clear b3)
(clear b5)
(clear b9)
(clear b10)
)
(:goal
(and
(on b1 b8)
(on b2 b9)
(on b4 b10)
(on b6 b3)
(on b7 b2)
(on b8 b7)
(on b9 b4)
(on b10 b6)
(on b11 b5))
)
)


