

(define (problem blocksworld11-8298)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 )
(:init
(arm-empty)
(on-table b1)
(on b2 b9)
(on b3 b6)
(on-table b4)
(on-table b5)
(on b6 b10)
(on b7 b4)
(on b8 b3)
(on b9 b5)
(on b10 b11)
(on b11 b7)
(clear b1)
(clear b2)
(clear b8)
)
(:goal
(and
(on b2 b5)
(on b4 b10)
(on b5 b11)
(on b6 b9)
(on b9 b2)
(on b11 b8))
)
)


