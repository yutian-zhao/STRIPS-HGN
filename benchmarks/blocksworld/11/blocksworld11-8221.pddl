

(define (problem blocksworld11-8221)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 )
(:init
(arm-empty)
(on b1 b3)
(on b2 b1)
(on b3 b11)
(on b4 b8)
(on b5 b7)
(on-table b6)
(on b7 b4)
(on b8 b6)
(on b9 b10)
(on-table b10)
(on-table b11)
(clear b2)
(clear b5)
(clear b9)
)
(:goal
(and
(on b1 b9)
(on b2 b11)
(on b4 b7)
(on b5 b3)
(on b6 b5)
(on b7 b1)
(on b9 b8)
(on b10 b4)
(on b11 b10))
)
)


