

(define (problem blocksworld14-2869)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 )
(:init
(arm-empty)
(on b1 b13)
(on-table b2)
(on-table b3)
(on b4 b11)
(on b5 b3)
(on b6 b8)
(on b7 b9)
(on b8 b4)
(on b9 b12)
(on b10 b2)
(on b11 b10)
(on b12 b14)
(on b13 b7)
(on-table b14)
(clear b1)
(clear b5)
(clear b6)
)
(:goal
(and
(on b1 b7)
(on b2 b14)
(on b4 b13)
(on b5 b1)
(on b6 b2)
(on b7 b9)
(on b9 b3)
(on b11 b6)
(on b12 b5)
(on b13 b11)
(on b14 b10))
)
)


