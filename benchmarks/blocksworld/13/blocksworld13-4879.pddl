

(define (problem blocksworld13-4879)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 )
(:init
(arm-empty)
(on b1 b7)
(on b2 b11)
(on b3 b9)
(on-table b4)
(on b5 b10)
(on b6 b4)
(on b7 b12)
(on b8 b5)
(on b9 b1)
(on b10 b2)
(on-table b11)
(on b12 b13)
(on b13 b6)
(clear b3)
(clear b8)
)
(:goal
(and
(on b1 b3)
(on b2 b1)
(on b5 b2)
(on b6 b7)
(on b7 b12)
(on b8 b11)
(on b9 b13)
(on b10 b6)
(on b11 b10))
)
)


