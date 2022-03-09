

(define (problem blocksworld13-3231)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 )
(:init
(arm-empty)
(on b1 b13)
(on b2 b5)
(on b3 b2)
(on b4 b11)
(on-table b5)
(on-table b6)
(on b7 b1)
(on b8 b4)
(on b9 b7)
(on-table b10)
(on b11 b3)
(on b12 b9)
(on b13 b8)
(clear b6)
(clear b10)
(clear b12)
)
(:goal
(and
(on b2 b7)
(on b3 b6)
(on b4 b1)
(on b5 b8)
(on b6 b5)
(on b9 b10)
(on b10 b3)
(on b11 b9)
(on b13 b12))
)
)


