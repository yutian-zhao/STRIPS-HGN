

(define (problem blocksworld13-1272)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 )
(:init
(arm-empty)
(on-table b1)
(on b2 b9)
(on b3 b7)
(on b4 b11)
(on b5 b1)
(on b6 b10)
(on b7 b8)
(on b8 b5)
(on b9 b6)
(on-table b10)
(on b11 b12)
(on b12 b2)
(on b13 b4)
(clear b3)
(clear b13)
)
(:goal
(and
(on b1 b4)
(on b2 b9)
(on b4 b5)
(on b5 b2)
(on b6 b7)
(on b7 b10)
(on b9 b11)
(on b11 b6)
(on b12 b8)
(on b13 b12))
)
)


