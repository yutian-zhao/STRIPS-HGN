

(define (problem blocksworld13-4028)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 )
(:init
(arm-empty)
(on b1 b13)
(on b2 b1)
(on b3 b7)
(on b4 b3)
(on-table b5)
(on-table b6)
(on b7 b2)
(on b8 b9)
(on b9 b10)
(on b10 b12)
(on-table b11)
(on-table b12)
(on b13 b5)
(clear b4)
(clear b6)
(clear b8)
(clear b11)
)
(:goal
(and
(on b4 b2)
(on b6 b12)
(on b7 b8)
(on b8 b5)
(on b9 b6)
(on b10 b7)
(on b12 b1))
)
)


