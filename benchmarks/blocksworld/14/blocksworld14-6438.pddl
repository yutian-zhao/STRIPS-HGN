

(define (problem blocksworld14-6438)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 )
(:init
(arm-empty)
(on b1 b8)
(on b2 b11)
(on b3 b14)
(on-table b4)
(on-table b5)
(on-table b6)
(on b7 b13)
(on b8 b3)
(on-table b9)
(on-table b10)
(on-table b11)
(on b12 b5)
(on b13 b10)
(on b14 b12)
(clear b1)
(clear b2)
(clear b4)
(clear b6)
(clear b7)
(clear b9)
)
(:goal
(and
(on b3 b14)
(on b4 b8)
(on b6 b13)
(on b8 b10)
(on b10 b12)
(on b13 b7)
(on b14 b11))
)
)


