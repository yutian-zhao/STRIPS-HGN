

(define (problem blocksworld11-2321)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 )
(:init
(arm-empty)
(on b1 b2)
(on-table b2)
(on-table b3)
(on-table b4)
(on-table b5)
(on-table b6)
(on b7 b4)
(on b8 b7)
(on b9 b11)
(on-table b10)
(on b11 b10)
(clear b1)
(clear b3)
(clear b5)
(clear b6)
(clear b8)
(clear b9)
)
(:goal
(and
(on b1 b2)
(on b2 b4)
(on b4 b11)
(on b5 b9)
(on b8 b7)
(on b9 b3)
(on b10 b5)
(on b11 b6))
)
)


