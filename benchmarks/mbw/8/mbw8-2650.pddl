

(define (problem mbw8-2650)
(:domain matching-bw-typed)
(:objects h1 h2 - hand b1 b2 b3 b4 b5 b6 b7 b8  - block)
(:init
 (empty h1)
 (empty h2)
 (hand-positive h1)
 (hand-negative h2)
 (solid b1)
 (block-positive b1)
 (on b1 b8)
 (solid b2)
 (block-positive b2)
 (on b2 b3)
 (solid b3)
 (block-positive b3)
 (on b3 b7)
 (solid b4)
 (block-positive b4)
 (on b4 b1)
 (solid b5)
 (block-negative b5)
 (on b5 b2)
 (solid b6)
 (block-negative b6)
 (on b6 b5)
 (solid b7)
 (block-negative b7)
 (on-table b7)
 (solid b8)
 (block-negative b8)
 (on b8 b6)
 (clear b4)
)
(:goal
(and
 (on b1 b8)
 (on b2 b6)
 (on b3 b7)
 (on b4 b1)
 (on b6 b3)
 (on b7 b4)
 (on b8 b5))
)
)

