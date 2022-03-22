

(define (problem mbw4-5205)
(:domain matching-bw-typed)
(:objects h1 h2 - hand b1 b2 b3 b4  - block)
(:init
 (empty h1)
 (empty h2)
 (hand-positive h1)
 (hand-negative h2)
 (solid b1)
 (block-positive b1)
 (on-table b1)
 (solid b2)
 (block-positive b2)
 (on-table b2)
 (solid b3)
 (block-negative b3)
 (on b3 b4)
 (solid b4)
 (block-negative b4)
 (on-table b4)
 (clear b1)
 (clear b2)
 (clear b3)
)
(:goal
(and
 (on b1 b4)
 (on b2 b1)
 (on b4 b3))
)
)

