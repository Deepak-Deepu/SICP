(define (tree n)
(cond ((< n 3) n)
(else (+ (tree (- n 1))
 (* 2 (tree (- n 2)))
 (* 3  (tree (- n 3 )))))))






(define (treeIt n)
(tree-iter 0 1 2 n))

(define (tree-iter a b c count)
(if (= count 0)
a
(if ( = count 1)
b
(if (< count 3)
c
(tree-iter b c (+ (* a 3) (* 2 b) c) (- count 1))))))


