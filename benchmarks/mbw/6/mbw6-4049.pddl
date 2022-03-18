

(define (problem mbw6-4049)
(:domain matching-bw-typed)
(:objects h1 h2 - hand b1 b2 b3 b4 b5 b6  - block)
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
 (on-table b2)
 (solid b3)
 (block-positive b3)
 (on b3 b1)
 (solid b4)
 (block-negative b4)
 (on b4 b5)
 (solid b5)
 (block-negative b5)
 (on b5 b3)
 (solid b6)
 (block-negative b6)
 (on b6 b4)
 (clear b6)
)
(:goal
(and
 (on b4 b2)
 (on b5 b1)
 (on b6 b3))
)
)


