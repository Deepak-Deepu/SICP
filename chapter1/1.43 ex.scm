(define (inc x)
(+ x 1))

(define (square x)
(* x x))

(define (compose x y)
(lambda(z) (x (y z))))


(define (repeated f n)
(if (= n 1)
f
(compose f (repeated f (- n 1)))))

((repeated square 2) 5)
