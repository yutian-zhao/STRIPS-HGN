

(define (problem mbw4-4034)
(:domain matching-bw-typed)
(:objects h1 h2 - hand b1 b2 b3 b4  - block)
(:init
 (empty h1)
 (empty h2)
 (hand-positive h1)
 (hand-negative h2)
 (solid b1)
 (block-positive b1)
 (on b1 b3)
 (solid b2)
 (block-positive b2)
 (on-table b2)
 (solid b3)
 (block-negative b3)
 (on b3 b4)
 (solid b4)
 (block-negative b4)
 (on b4 b2)
 (clear b1)
)
(:goal
(and
 (on b3 b1)
 (on b4 b2))
)
)


