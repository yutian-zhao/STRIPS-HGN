

(define (problem blocksworld15-4779)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 )
(:init
(arm-empty)
(on b1 b2)
(on b2 b3)
(on-table b3)
(on b4 b1)
(on b5 b12)
(on b6 b15)
(on b7 b6)
(on b8 b7)
(on b9 b10)
(on-table b10)
(on b11 b8)
(on b12 b4)
(on b13 b14)
(on b14 b9)
(on b15 b5)
(clear b11)
(clear b13)
)
(:goal
(and
(on b1 b2)
(on b3 b10)
(on b6 b12)
(on b7 b4)
(on b9 b3)
(on b10 b14)
(on b11 b5)
(on b12 b8)
(on b13 b1)
(on b14 b6))
)
)


