

(define (problem blocksworld13-5158)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 )
(:init
(arm-empty)
(on-table b1)
(on b2 b10)
(on b3 b12)
(on b4 b5)
(on b5 b6)
(on b6 b8)
(on b7 b13)
(on b8 b11)
(on b9 b2)
(on b10 b3)
(on b11 b1)
(on-table b12)
(on b13 b4)
(clear b7)
(clear b9)
)
(:goal
(and
(on b3 b7)
(on b4 b11)
(on b5 b13)
(on b8 b12)
(on b9 b1)
(on b10 b5)
(on b11 b8)
(on b13 b6))
)
)


