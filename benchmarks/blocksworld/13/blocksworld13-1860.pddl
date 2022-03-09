

(define (problem blocksworld13-1860)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 )
(:init
(arm-empty)
(on-table b1)
(on b2 b11)
(on b3 b13)
(on-table b4)
(on b5 b8)
(on b6 b3)
(on b7 b1)
(on b8 b2)
(on b9 b4)
(on-table b10)
(on b11 b6)
(on b12 b7)
(on b13 b9)
(clear b5)
(clear b10)
(clear b12)
)
(:goal
(and
(on b1 b4)
(on b2 b7)
(on b3 b8)
(on b6 b13)
(on b7 b5)
(on b8 b9)
(on b9 b6)
(on b10 b12)
(on b12 b2))
)
)


