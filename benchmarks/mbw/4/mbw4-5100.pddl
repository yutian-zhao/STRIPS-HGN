

(define (problem mbw4-5100)
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
 (on b3 b2)
 (solid b4)
 (block-negative b4)
 (on b4 b3)
 (clear b1)
 (clear b4)
)
(:goal
(and
 (on b1 b3)
 (on b4 b2))
)
)


