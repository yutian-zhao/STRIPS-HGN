

(define (problem blocksworld13-7748)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 )
(:init
(arm-empty)
(on b1 b7)
(on b2 b4)
(on b3 b8)
(on b4 b1)
(on b5 b10)
(on b6 b12)
(on b7 b9)
(on b8 b13)
(on b9 b11)
(on b10 b6)
(on-table b11)
(on-table b12)
(on-table b13)
(clear b2)
(clear b3)
(clear b5)
)
(:goal
(and
(on b1 b4)
(on b2 b8)
(on b3 b12)
(on b5 b6)
(on b6 b11)
(on b8 b7)
(on b9 b1)
(on b10 b3)
(on b11 b2)
(on b12 b5)
(on b13 b9))
)
)

