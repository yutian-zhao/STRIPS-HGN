

(define (problem blocksworld13-7575)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 )
(:init
(arm-empty)
(on b1 b9)
(on b2 b12)
(on b3 b11)
(on b4 b8)
(on-table b5)
(on b6 b10)
(on b7 b2)
(on b8 b13)
(on b9 b3)
(on-table b10)
(on-table b11)
(on b12 b5)
(on b13 b6)
(clear b1)
(clear b4)
(clear b7)
)
(:goal
(and
(on b1 b10)
(on b2 b1)
(on b4 b6)
(on b5 b7)
(on b6 b2)
(on b8 b5)
(on b9 b11)
(on b10 b8)
(on b13 b12))
)
)


