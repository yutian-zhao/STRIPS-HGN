

(define (problem mbw3-3256)
(:domain matching-bw-typed)
(:objects h1 h2 - hand b1 b2 b3  - block)
(:init
 (empty h1)
 (empty h2)
 (hand-positive h1)
 (hand-negative h2)
 (solid b1)
 (block-positive b1)
 (on-table b1)
 (solid b2)
 (block-negative b2)
 (on b2 b1)
 (solid b3)
 (block-negative b3)
 (on-table b3)
 (clear b2)
 (clear b3)
)
(:goal
(and
 (on b1 b2)
 (on b2 b3))
)
)


