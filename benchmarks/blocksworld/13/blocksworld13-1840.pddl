

(define (problem blocksworld13-1840)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 )
(:init
(arm-empty)
(on b1 b3)
(on b2 b9)
(on b3 b7)
(on b4 b11)
(on b5 b13)
(on b6 b2)
(on b7 b12)
(on b8 b1)
(on b9 b4)
(on b10 b8)
(on b11 b10)
(on b12 b5)
(on-table b13)
(clear b6)
)
(:goal
(and
(on b3 b6)
(on b5 b12)
(on b6 b11)
(on b7 b8)
(on b8 b10)
(on b9 b4)
(on b10 b13)
(on b11 b1)
(on b12 b2)
(on b13 b9))
)
)


