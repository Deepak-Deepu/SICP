(define (double x)
(+ x x))

(define (halve x)
(/ x 2))

(define (even? n)
(= (remainder n 2) 0))

(define (sum b n)
(sum-iter b n 0))

(define (sum-iter b counter add)
(if (= counter 0)
add
(if (even? counter)
(sum-iter (double b) (halve counter) add)
(sum-iter b (- counter 1) (+ b add)))))



