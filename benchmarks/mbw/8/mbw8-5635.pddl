

(define (problem mbw8-5635)
(:domain matching-bw-typed)
(:objects h1 h2 - hand b1 b2 b3 b4 b5 b6 b7 b8  - block)
(:init
 (empty h1)
 (empty h2)
 (hand-positive h1)
 (hand-negative h2)
 (solid b1)
 (block-positive b1)
 (on b1 b2)
 (solid b2)
 (block-positive b2)
 (on b2 b8)
 (solid b3)
 (block-positive b3)
 (on-table b3)
 (solid b4)
 (block-positive b4)
 (on b4 b5)
 (solid b5)
 (block-negative b5)
 (on-table b5)
 (solid b6)
 (block-negative b6)
 (on b6 b4)
 (solid b7)
 (block-negative b7)
 (on b7 b1)
 (solid b8)
 (block-negative b8)
 (on-table b8)
 (clear b3)
 (clear b6)
 (clear b7)
)
(:goal
(and
 (on b2 b6)
 (on b4 b7)
 (on b5 b2)
 (on b6 b1))
)
)


