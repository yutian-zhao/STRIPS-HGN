

(define (problem blocksworld13-9371)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 )
(:init
(arm-empty)
(on b1 b8)
(on b2 b13)
(on b3 b6)
(on b4 b11)
(on b5 b7)
(on-table b6)
(on b7 b9)
(on b8 b5)
(on b9 b10)
(on-table b10)
(on-table b11)
(on b12 b2)
(on b13 b1)
(clear b3)
(clear b4)
(clear b12)
)
(:goal
(and
(on b1 b7)
(on b3 b5)
(on b4 b12)
(on b5 b6)
(on b6 b13)
(on b7 b2)
(on b8 b4)
(on b13 b10))
)
)


