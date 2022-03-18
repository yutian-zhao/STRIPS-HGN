

(define (problem mbw5-8021)
(:domain matching-bw-typed)
(:objects h1 h2 - hand b1 b2 b3 b4 b5  - block)
(:init
 (empty h1)
 (empty h2)
 (hand-positive h1)
 (hand-negative h2)
 (solid b1)
 (block-positive b1)
 (on b1 b5)
 (solid b2)
 (block-positive b2)
 (on-table b2)
 (solid b3)
 (block-negative b3)
 (on b3 b1)
 (solid b4)
 (block-negative b4)
 (on-table b4)
 (solid b5)
 (block-negative b5)
 (on-table b5)
 (clear b2)
 (clear b3)
 (clear b4)
)
(:goal
(and
 (on b2 b3)
 (on b4 b2)
 (on b5 b4))
)
)


