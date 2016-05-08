(define (cube x)
(* x x x))

(define (inc x)
(+ x 1))


(define (sum term a next b)
(if (> a b)
0
(+ (term a)
(sum term (next a) next b))))

(define (product term a next b)
(if (> a b)
1
(* (term a)
(product term (next a) next b))))

(define (accumulate combiner null-value term a next b)
(if (> a b)
null-value
(combiner (term a)
(accumulate combiner null-value term (next a) next b))))

(define (sum term a next b)
(accumulate + 0 term a next b))

;(sum cube 2 inc 4)
;Value: 99

(define (accum-iter combiner null-value term a next b)
(define (iter a result)
(if (> a b)
result
(iter (next a) (combiner (term a) result))))
(iter a null-value))

(define (sumI term a next b)
(accum-iter + 0 term a next b))

;(sumI cube 2 inc 4)
;Value: 99  
