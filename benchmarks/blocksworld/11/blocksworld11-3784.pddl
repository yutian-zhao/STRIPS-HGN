

(define (problem blocksworld11-3784)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 )
(:init
(arm-empty)
(on b1 b11)
(on b2 b4)
(on b3 b6)
(on-table b4)
(on-table b5)
(on-table b6)
(on b7 b3)
(on b8 b7)
(on b9 b2)
(on b10 b1)
(on b11 b9)
(clear b5)
(clear b8)
(clear b10)
)
(:goal
(and
(on b2 b7)
(on b3 b4)
(on b4 b6)
(on b6 b8)
(on b7 b10)
(on b8 b2)
(on b9 b11)
(on b10 b9))
)
)


