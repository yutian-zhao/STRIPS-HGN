

(define (problem blocksworld17-6115)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 )
(:init
(arm-empty)
(on b1 b17)
(on-table b2)
(on-table b3)
(on b4 b8)
(on b5 b12)
(on b6 b7)
(on b7 b1)
(on b8 b15)
(on b9 b14)
(on b10 b6)
(on b11 b10)
(on b12 b3)
(on b13 b2)
(on b14 b4)
(on-table b15)
(on b16 b5)
(on b17 b9)
(clear b11)
(clear b13)
(clear b16)
)
(:goal
(and
(on b2 b5)
(on b3 b17)
(on b4 b1)
(on b5 b3)
(on b6 b8)
(on b7 b13)
(on b8 b14)
(on b10 b7)
(on b11 b2)
(on b13 b15)
(on b14 b11)
(on b15 b6)
(on b16 b12)
(on b17 b16))
)
)


