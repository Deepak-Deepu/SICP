(define (inc x)
(+ x 1))

(define (square x)
(* x x))

(define (compose x y)
(lambda(z) (x (y z))))

((compose square inc) 6)                  
;Value: 49
