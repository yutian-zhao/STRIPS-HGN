

(define (problem mbw5-3622)
(:domain matching-bw-typed)
(:objects h1 h2 - hand b1 b2 b3 b4 b5  - block)
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
 (on b2 b4)
 (solid b3)
 (block-negative b3)
 (on b3 b2)
 (solid b4)
 (block-negative b4)
 (on-table b4)
 (solid b5)
 (block-negative b5)
 (on b5 b1)
 (clear b3)
 (clear b5)
)
(:goal
(and
 (on b1 b4)
 (on b3 b5)
 (on b5 b1))
)
)


