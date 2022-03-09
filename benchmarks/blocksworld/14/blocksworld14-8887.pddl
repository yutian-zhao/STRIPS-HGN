

(define (problem blocksworld14-8887)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 )
(:init
(arm-empty)
(on b1 b4)
(on b2 b10)
(on b3 b11)
(on-table b4)
(on b5 b9)
(on b6 b13)
(on-table b7)
(on b8 b7)
(on b9 b8)
(on b10 b12)
(on b11 b2)
(on b12 b6)
(on b13 b1)
(on b14 b3)
(clear b5)
(clear b14)
)
(:goal
(and
(on b1 b9)
(on b2 b3)
(on b3 b1)
(on b4 b6)
(on b5 b14)
(on b6 b7)
(on b7 b5)
(on b10 b12)
(on b11 b4))
)
)


