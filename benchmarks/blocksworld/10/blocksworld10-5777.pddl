

(define (problem blocksworld10-5777)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 )
(:init
(arm-empty)
(on-table b1)
(on b2 b10)
(on b3 b4)
(on-table b4)
(on b5 b8)
(on b6 b2)
(on b7 b5)
(on-table b8)
(on-table b9)
(on-table b10)
(clear b1)
(clear b3)
(clear b6)
(clear b7)
(clear b9)
)
(:goal
(and
(on b1 b3)
(on b2 b6)
(on b3 b4)
(on b4 b8)
(on b5 b1)
(on b7 b2)
(on b9 b10))
)
)


