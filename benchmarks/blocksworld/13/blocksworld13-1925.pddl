

(define (problem blocksworld13-1925)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 )
(:init
(arm-empty)
(on-table b1)
(on b2 b7)
(on b3 b6)
(on-table b4)
(on b5 b1)
(on b6 b8)
(on b7 b13)
(on b8 b9)
(on-table b9)
(on b10 b11)
(on b11 b4)
(on b12 b5)
(on b13 b12)
(clear b2)
(clear b3)
(clear b10)
)
(:goal
(and
(on b1 b2)
(on b2 b4)
(on b3 b8)
(on b5 b6)
(on b6 b7)
(on b8 b13)
(on b9 b10)
(on b10 b11)
(on b13 b12))
)
)


