

(define (problem blocksworld10-8058)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 )
(:init
(arm-empty)
(on-table b1)
(on b2 b10)
(on b3 b7)
(on b4 b5)
(on-table b5)
(on b6 b2)
(on b7 b6)
(on-table b8)
(on b9 b8)
(on-table b10)
(clear b1)
(clear b3)
(clear b4)
(clear b9)
)
(:goal
(and
(on b1 b5)
(on b3 b4)
(on b4 b9)
(on b5 b6)
(on b6 b8)
(on b7 b10)
(on b8 b2)
(on b10 b1))
)
)


