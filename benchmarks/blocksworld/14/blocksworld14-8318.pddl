

(define (problem blocksworld14-8318)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 )
(:init
(arm-empty)
(on-table b1)
(on b2 b6)
(on b3 b5)
(on b4 b12)
(on b5 b14)
(on b6 b3)
(on b7 b4)
(on b8 b13)
(on b9 b8)
(on-table b10)
(on b11 b7)
(on b12 b2)
(on b13 b11)
(on-table b14)
(clear b1)
(clear b9)
(clear b10)
)
(:goal
(and
(on b1 b6)
(on b2 b7)
(on b3 b13)
(on b4 b3)
(on b5 b4)
(on b6 b12)
(on b9 b8)
(on b14 b10))
)
)


