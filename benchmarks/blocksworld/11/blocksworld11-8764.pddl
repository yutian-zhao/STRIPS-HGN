

(define (problem blocksworld11-8764)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 )
(:init
(arm-empty)
(on-table b1)
(on b2 b11)
(on-table b3)
(on b4 b2)
(on b5 b3)
(on b6 b10)
(on b7 b5)
(on-table b8)
(on b9 b4)
(on b10 b8)
(on b11 b1)
(clear b6)
(clear b7)
(clear b9)
)
(:goal
(and
(on b1 b2)
(on b2 b3)
(on b3 b8)
(on b5 b9)
(on b7 b4)
(on b8 b7)
(on b9 b1)
(on b11 b6))
)
)


