

(define (problem blocksworld20-8329)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 )
(:init
(arm-empty)
(on b1 b10)
(on b2 b7)
(on b3 b20)
(on b4 b14)
(on b5 b6)
(on b6 b4)
(on b7 b15)
(on b8 b12)
(on b9 b3)
(on b10 b9)
(on b11 b13)
(on b12 b16)
(on b13 b1)
(on b14 b18)
(on-table b15)
(on b16 b11)
(on b17 b8)
(on-table b18)
(on b19 b5)
(on-table b20)
(clear b2)
(clear b17)
(clear b19)
)
(:goal
(and
(on b1 b19)
(on b2 b5)
(on b3 b17)
(on b4 b14)
(on b5 b16)
(on b7 b9)
(on b8 b18)
(on b9 b11)
(on b11 b4)
(on b12 b1)
(on b13 b12)
(on b14 b2)
(on b15 b3)
(on b18 b10)
(on b20 b6))
)
)


