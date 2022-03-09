

(define (problem blocksworld13-1974)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 )
(:init
(arm-empty)
(on b1 b6)
(on-table b2)
(on b3 b13)
(on b4 b8)
(on b5 b7)
(on b6 b9)
(on b7 b4)
(on b8 b2)
(on-table b9)
(on b10 b1)
(on b11 b5)
(on b12 b10)
(on b13 b12)
(clear b3)
(clear b11)
)
(:goal
(and
(on b1 b11)
(on b2 b5)
(on b3 b8)
(on b4 b7)
(on b5 b4)
(on b6 b10)
(on b9 b2)
(on b10 b12)
(on b12 b9)
(on b13 b1))
)
)


