

(define (problem mbw8-2436)
(:domain matching-bw-typed)
(:objects h1 h2 - hand b1 b2 b3 b4 b5 b6 b7 b8  - block)
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
 (on b2 b7)
 (solid b3)
 (block-positive b3)
 (on b3 b6)
 (solid b4)
 (block-positive b4)
 (on-table b4)
 (solid b5)
 (block-negative b5)
 (on-table b5)
 (solid b6)
 (block-negative b6)
 (on b6 b1)
 (solid b7)
 (block-negative b7)
 (on b7 b3)
 (solid b8)
 (block-negative b8)
 (on b8 b4)
 (clear b2)
 (clear b8)
)
(:goal
(and
 (on b2 b4)
 (on b4 b7)
 (on b5 b3)
 (on b8 b2))
)
)


