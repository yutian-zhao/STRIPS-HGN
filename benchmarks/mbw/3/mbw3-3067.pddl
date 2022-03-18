

(define (problem mbw3-3067)
(:domain matching-bw-typed)
(:objects h1 h2 - hand b1 b2 b3  - block)
(:init
 (empty h1)
 (empty h2)
 (hand-positive h1)
 (hand-negative h2)
 (solid b1)
 (block-positive b1)
 (on b1 b3)
 (solid b2)
 (block-negative b2)
 (on-table b2)
 (solid b3)
 (block-negative b3)
 (on b3 b2)
 (clear b1)
)
(:goal
(and
 (on b1 b2)
 (on b3 b1))
)
)


