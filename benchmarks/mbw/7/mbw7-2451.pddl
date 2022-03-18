

(define (problem mbw7-2451)
(:domain matching-bw-typed)
(:objects h1 h2 - hand b1 b2 b3 b4 b5 b6 b7  - block)
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
 (block-positive b3)
 (on b3 b5)
 (solid b4)
 (block-negative b4)
 (on b4 b1)
 (solid b5)
 (block-negative b5)
 (on-table b5)
 (solid b6)
 (block-negative b6)
 (on-table b6)
 (solid b7)
 (block-negative b7)
 (on b7 b6)
 (clear b2)
 (clear b3)
 (clear b7)
)
(:goal
(and
 (on b1 b3)
 (on b3 b4)
 (on b6 b7)
 (on b7 b5))
)
)


