

(define (problem blocksworld13-3543)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 )
(:init
(arm-empty)
(on-table b1)
(on b2 b10)
(on-table b3)
(on-table b4)
(on b5 b4)
(on b6 b13)
(on b7 b8)
(on b8 b5)
(on b9 b2)
(on b10 b1)
(on b11 b12)
(on b12 b6)
(on b13 b9)
(clear b3)
(clear b7)
(clear b11)
)
(:goal
(and
(on b2 b7)
(on b4 b3)
(on b5 b10)
(on b6 b11)
(on b8 b1)
(on b9 b8)
(on b12 b5)
(on b13 b4))
)
)


