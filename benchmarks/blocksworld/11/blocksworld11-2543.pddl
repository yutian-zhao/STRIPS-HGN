

(define (problem blocksworld11-2543)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 )
(:init
(arm-empty)
(on b1 b4)
(on-table b2)
(on b3 b2)
(on b4 b11)
(on b5 b8)
(on-table b6)
(on b7 b1)
(on b8 b9)
(on-table b9)
(on b10 b6)
(on b11 b5)
(clear b3)
(clear b7)
(clear b10)
)
(:goal
(and
(on b1 b11)
(on b2 b8)
(on b4 b6)
(on b5 b9)
(on b6 b10)
(on b8 b7)
(on b9 b4)
(on b10 b2)
(on b11 b5))
)
)


