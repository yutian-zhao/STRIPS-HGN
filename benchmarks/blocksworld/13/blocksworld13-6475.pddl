

(define (problem blocksworld13-6475)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 )
(:init
(arm-empty)
(on-table b1)
(on b2 b3)
(on b3 b13)
(on-table b4)
(on b5 b12)
(on-table b6)
(on-table b7)
(on b8 b11)
(on b9 b1)
(on b10 b9)
(on b11 b10)
(on b12 b2)
(on b13 b6)
(clear b4)
(clear b5)
(clear b7)
(clear b8)
)
(:goal
(and
(on b1 b12)
(on b2 b11)
(on b3 b9)
(on b5 b13)
(on b6 b2)
(on b8 b4)
(on b9 b5)
(on b10 b1)
(on b11 b3)
(on b12 b8))
)
)


