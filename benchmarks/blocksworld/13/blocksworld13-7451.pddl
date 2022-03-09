

(define (problem blocksworld13-7451)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 )
(:init
(arm-empty)
(on-table b1)
(on b2 b6)
(on b3 b11)
(on b4 b3)
(on b5 b1)
(on b6 b8)
(on b7 b9)
(on b8 b5)
(on b9 b12)
(on-table b10)
(on b11 b10)
(on b12 b2)
(on-table b13)
(clear b4)
(clear b7)
(clear b13)
)
(:goal
(and
(on b2 b6)
(on b4 b3)
(on b6 b8)
(on b7 b13)
(on b8 b5)
(on b9 b1)
(on b10 b11)
(on b11 b7)
(on b13 b12))
)
)


