

(define (problem blocksworld11-1038)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 )
(:init
(arm-empty)
(on b1 b5)
(on-table b2)
(on-table b3)
(on b4 b1)
(on b5 b11)
(on-table b6)
(on b7 b8)
(on-table b8)
(on-table b9)
(on b10 b7)
(on b11 b9)
(clear b2)
(clear b3)
(clear b4)
(clear b6)
(clear b10)
)
(:goal
(and
(on b1 b3)
(on b2 b6)
(on b6 b7)
(on b7 b5)
(on b9 b11)
(on b11 b4))
)
)


