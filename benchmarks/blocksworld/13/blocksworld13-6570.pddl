

(define (problem blocksworld13-6570)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 )
(:init
(arm-empty)
(on b1 b7)
(on b2 b11)
(on b3 b6)
(on b4 b12)
(on b5 b10)
(on-table b6)
(on b7 b13)
(on-table b8)
(on b9 b8)
(on b10 b1)
(on b11 b3)
(on b12 b5)
(on b13 b9)
(clear b2)
(clear b4)
)
(:goal
(and
(on b1 b12)
(on b2 b3)
(on b3 b9)
(on b4 b8)
(on b6 b5)
(on b8 b13)
(on b10 b1)
(on b11 b6)
(on b12 b7))
)
)


