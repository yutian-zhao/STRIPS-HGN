

(define (problem BW-rand-10)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 )
(:init
(arm-empty)
(on-table b1)
(on b2 b9)
(on-table b3)
(on b4 b3)
(on b5 b10)
(on-table b6)
(on-table b7)
(on-table b8)
(on b9 b7)
(on-table b10)
(clear b1)
(clear b2)
(clear b4)
(clear b5)
(clear b6)
(clear b8)
)
(:goal
(and
(on b1 b4)
(on b2 b7)
(on b4 b3)
(on b5 b10)
(on b6 b2)
(on b8 b9)
(on b9 b1))
)
)


