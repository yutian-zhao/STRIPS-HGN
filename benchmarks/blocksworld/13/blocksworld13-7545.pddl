

(define (problem blocksworld13-7545)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 )
(:init
(arm-empty)
(on b1 b2)
(on b2 b13)
(on b3 b4)
(on-table b4)
(on b5 b9)
(on b6 b5)
(on-table b7)
(on-table b8)
(on-table b9)
(on b10 b12)
(on b11 b10)
(on-table b12)
(on b13 b8)
(clear b1)
(clear b3)
(clear b6)
(clear b7)
(clear b11)
)
(:goal
(and
(on b1 b8)
(on b2 b3)
(on b6 b4)
(on b7 b10)
(on b8 b13)
(on b9 b7)
(on b10 b5)
(on b11 b2)
(on b12 b6)
(on b13 b9))
)
)


