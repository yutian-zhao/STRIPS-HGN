

(define (problem BW-rand-10)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 )
(:init
(arm-empty)
(on-table b1)
(on-table b2)
(on b3 b9)
(on b4 b3)
(on b5 b6)
(on b6 b1)
(on b7 b2)
(on b8 b4)
(on b9 b5)
(on b10 b7)
(clear b8)
(clear b10)
)
(:goal
(and
(on b1 b2)
(on b2 b4)
(on b3 b10)
(on b4 b7)
(on b5 b3)
(on b6 b1)
(on b10 b9))
)
)


