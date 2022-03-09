

(define (problem blocksworld13-1986)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 )
(:init
(arm-empty)
(on b1 b10)
(on b2 b6)
(on b3 b4)
(on b4 b11)
(on b5 b9)
(on b6 b13)
(on b7 b1)
(on b8 b3)
(on-table b9)
(on b10 b5)
(on b11 b2)
(on-table b12)
(on b13 b7)
(clear b8)
(clear b12)
)
(:goal
(and
(on b2 b13)
(on b3 b8)
(on b4 b12)
(on b5 b11)
(on b6 b10)
(on b7 b6)
(on b9 b7)
(on b10 b2)
(on b11 b9)
(on b13 b3))
)
)


