

(define (problem blocksworld13-9710)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 )
(:init
(arm-empty)
(on b1 b13)
(on b2 b4)
(on b3 b12)
(on b4 b1)
(on-table b5)
(on b6 b3)
(on-table b7)
(on b8 b7)
(on b9 b10)
(on-table b10)
(on b11 b8)
(on-table b12)
(on b13 b11)
(clear b2)
(clear b5)
(clear b6)
(clear b9)
)
(:goal
(and
(on b1 b6)
(on b2 b8)
(on b4 b2)
(on b5 b7)
(on b6 b10)
(on b7 b9)
(on b8 b12)
(on b11 b1)
(on b13 b3))
)
)


