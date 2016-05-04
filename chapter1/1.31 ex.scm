(define (square x)
(* x x))

(define (product term a next b)
(if (> a b)
1
(* (term a)
(product term (next a) next b))))

(define (identity x) x)

(define (inc x) (+ x 1))

(define (factorial x)
(product identity 1 inc x))

;(factorial 6)
;Value: 720

(define (appro-pi n)
(define (term x)
(/ (* 4.0 (square x))
(- (* 4.0 (square x)) 1)))
(* 2.0 (product term 1 inc n)))

;(appro-pi 10)
;Value: 3.0677038066434994

;(appro-pi 100)
;Value: 3.133787490628163

;iterative version

(define (sum term a next b)
  (define (iter a result)
    (if (> a b)
        result
       (iter (next a) (* (term a) result))))
(iter a 1))


