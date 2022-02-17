

(define (problem BW-rand-10)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 )
(:init
(arm-empty)
(on-table b1)
(on b2 b9)
(on-table b3)
(on b4 b2)
(on b5 b1)
(on b6 b4)
(on b7 b5)
(on b8 b3)
(on-table b9)
(on-table b10)
(clear b6)
(clear b7)
(clear b8)
(clear b10)
)
(:goal
(and
(on b2 b5)
(on b3 b2)
(on b4 b6)
(on b5 b9)
(on b7 b3)
(on b9 b1)
(on b10 b4))
)
)


