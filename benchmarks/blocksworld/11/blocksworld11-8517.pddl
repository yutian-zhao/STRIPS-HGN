

(define (problem blocksworld11-8517)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 )
(:init
(arm-empty)
(on b1 b4)
(on b2 b5)
(on-table b3)
(on b4 b3)
(on b5 b11)
(on b6 b9)
(on b7 b10)
(on-table b8)
(on b9 b2)
(on b10 b6)
(on-table b11)
(clear b1)
(clear b7)
(clear b8)
)
(:goal
(and
(on b1 b5)
(on b2 b6)
(on b3 b7)
(on b4 b11)
(on b5 b2)
(on b6 b3)
(on b7 b4)
(on b9 b1)
(on b10 b9))
)
)


