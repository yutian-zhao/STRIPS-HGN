

(define (problem blocksworld14-1758)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 )
(:init
(arm-empty)
(on b1 b7)
(on b2 b10)
(on b3 b14)
(on b4 b9)
(on b5 b4)
(on-table b6)
(on b7 b13)
(on b8 b2)
(on b9 b11)
(on b10 b3)
(on b11 b8)
(on-table b12)
(on-table b13)
(on b14 b1)
(clear b5)
(clear b6)
(clear b12)
)
(:goal
(and
(on b1 b8)
(on b2 b1)
(on b3 b14)
(on b5 b2)
(on b8 b11)
(on b9 b7)
(on b10 b3)
(on b12 b6)
(on b13 b12)
(on b14 b5))
)
)


