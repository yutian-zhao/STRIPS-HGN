

(define (problem blocksworld11-3843)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 )
(:init
(arm-empty)
(on b1 b2)
(on b2 b11)
(on-table b3)
(on-table b4)
(on b5 b7)
(on b6 b5)
(on-table b7)
(on b8 b9)
(on b9 b3)
(on-table b10)
(on b11 b10)
(clear b1)
(clear b4)
(clear b6)
(clear b8)
)
(:goal
(and
(on b1 b3)
(on b2 b7)
(on b5 b11)
(on b6 b4)
(on b7 b1)
(on b8 b5)
(on b10 b9)
(on b11 b2))
)
)


