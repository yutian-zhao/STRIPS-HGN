

(define (problem blocksworld13-9105)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 )
(:init
(arm-empty)
(on b1 b10)
(on-table b2)
(on b3 b5)
(on b4 b3)
(on-table b5)
(on b6 b13)
(on b7 b12)
(on b8 b9)
(on b9 b4)
(on b10 b2)
(on b11 b1)
(on b12 b11)
(on-table b13)
(clear b6)
(clear b7)
(clear b8)
)
(:goal
(and
(on b1 b6)
(on b2 b3)
(on b3 b5)
(on b4 b7)
(on b6 b4)
(on b7 b8)
(on b8 b12)
(on b10 b11)
(on b11 b2)
(on b13 b1))
)
)


