

(define (problem blocksworld13-2698)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 )
(:init
(arm-empty)
(on-table b1)
(on b2 b10)
(on b3 b5)
(on-table b4)
(on b5 b9)
(on b6 b11)
(on b7 b3)
(on b8 b7)
(on-table b9)
(on b10 b1)
(on-table b11)
(on-table b12)
(on b13 b6)
(clear b2)
(clear b4)
(clear b8)
(clear b12)
(clear b13)
)
(:goal
(and
(on b1 b9)
(on b2 b7)
(on b3 b2)
(on b4 b12)
(on b6 b13)
(on b7 b11)
(on b8 b1)
(on b9 b5)
(on b10 b4)
(on b13 b3))
)
)


