

(define (problem blocksworld13-8092)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 )
(:init
(arm-empty)
(on b1 b12)
(on-table b2)
(on b3 b2)
(on-table b4)
(on b5 b8)
(on-table b6)
(on b7 b6)
(on b8 b13)
(on b9 b7)
(on b10 b11)
(on b11 b3)
(on b12 b10)
(on b13 b4)
(clear b1)
(clear b5)
(clear b9)
)
(:goal
(and
(on b1 b13)
(on b3 b8)
(on b6 b1)
(on b7 b11)
(on b8 b7)
(on b9 b3)
(on b10 b5)
(on b12 b9))
)
)


