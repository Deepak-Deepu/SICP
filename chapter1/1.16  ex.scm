(define (fast-expt b n)
(fast-iter b n 1))

(define (fast-iter b counter product)
(if (= counter 0)
product
(if (even? counter)
(fast-iter (square b) (/ counter 2) product)
(fast-iter  b (- counter 1) (* product b)))))

(fast-expt 2 8)
