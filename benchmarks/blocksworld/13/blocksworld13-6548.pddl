

(define (problem blocksworld13-6548)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 )
(:init
(arm-empty)
(on b1 b2)
(on b2 b13)
(on-table b3)
(on b4 b10)
(on b5 b12)
(on b6 b8)
(on b7 b3)
(on b8 b11)
(on b9 b5)
(on b10 b1)
(on-table b11)
(on-table b12)
(on-table b13)
(clear b4)
(clear b6)
(clear b7)
(clear b9)
)
(:goal
(and
(on b2 b11)
(on b5 b1)
(on b6 b12)
(on b7 b13)
(on b9 b2)
(on b10 b7)
(on b12 b4)
(on b13 b5))
)
)


