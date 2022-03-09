

(define (problem blocksworld12-1933)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(arm-empty)
(on-table b1)
(on-table b2)
(on b3 b10)
(on b4 b6)
(on b5 b2)
(on b6 b12)
(on b7 b4)
(on b8 b7)
(on b9 b1)
(on-table b10)
(on-table b11)
(on b12 b11)
(clear b3)
(clear b5)
(clear b8)
(clear b9)
)
(:goal
(and
(on b1 b2)
(on b3 b11)
(on b4 b10)
(on b6 b12)
(on b7 b6)
(on b8 b7)
(on b9 b1))
)
)


