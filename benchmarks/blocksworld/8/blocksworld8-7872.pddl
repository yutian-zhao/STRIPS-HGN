

(define (problem blocksworld8-7872)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 )
(:init
(arm-empty)
(on b1 b2)
(on b2 b7)
(on-table b3)
(on b4 b6)
(on-table b5)
(on b6 b1)
(on-table b7)
(on b8 b3)
(clear b4)
(clear b5)
(clear b8)
)
(:goal
(and
(on b1 b7)
(on b2 b3)
(on b3 b6)
(on b4 b8)
(on b6 b1)
(on b7 b4)
(on b8 b5))
)
)


