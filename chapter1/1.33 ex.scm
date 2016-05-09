(define (cube x)
(* x x x))

(define (inc x)
(+ x 1))

(define (square x)
(* x x))

(define (identity x) x)

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

(define (smallest-divisor n)
(find-divisor n 2))
(define (find-divisor n test-divisor)
(cond ((> (square test-divisor) n) n)
((divides? test-divisor n) test-divisor)
(else (find-divisor n (+ test-divisor 1)))))

(define (divides? a b)
(= (remainder b a) 0))

(define (prime? n)
(= n (smallest-divisor n)))

(define (gcd a b)
(if (= b 0)
a
(gcd b (remainder a b))))




(define (filtered-accumulate filter  combiner null-value term a next b)
(if (> a b)
null-value
(if (filter a)
(combiner (term a)
(filtered-accumulate filter combiner null-value term (next a) next b))
(filtered-accumulate filter combiner null-value term (next a) next b))))


(define (sum-squared-primes a b)
(filtered-accumulate prime? + 0 square a inc b))

;(sum-squared-primes 2 10)
;Value: 87

(define (product-of-primes n)
(define (coprime? i)
(= 1 (gcd i n)))
(filtered-accumulate coprime? * 1 identity 1 inc (- n 1)))

;(product-of-primes 10)
;Value: 189
