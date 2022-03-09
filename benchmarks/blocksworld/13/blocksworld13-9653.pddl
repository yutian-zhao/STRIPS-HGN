

(define (problem blocksworld13-9653)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 )
(:init
(arm-empty)
(on-table b1)
(on b2 b8)
(on b3 b10)
(on b4 b12)
(on b5 b2)
(on-table b6)
(on b7 b13)
(on b8 b9)
(on b9 b3)
(on b10 b4)
(on b11 b7)
(on b12 b6)
(on b13 b5)
(clear b1)
(clear b11)
)
(:goal
(and
(on b2 b1)
(on b4 b5)
(on b6 b12)
(on b8 b3)
(on b9 b8)
(on b10 b2)
(on b11 b4)
(on b12 b11)
(on b13 b6))
)
)


