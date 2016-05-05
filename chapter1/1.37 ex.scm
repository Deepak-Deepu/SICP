(define (cont-frac n d k)
  (define (recur i)
    (if (> i k)
        0
        (/ (n i) (+ (d i) (recur (+ i 1))))))
  (recur 1))


(define (cont-fracI n d k)
(define (iter i result)
(if (= i 0)
result
(iter (- i 1) (/ (n i) (+ (d i) result )))))
(iter k 0))


(cont-frac (lambda (i)  1.0) (lambda (i) 1.0) 12)
;Value: .6180257510729613


(cont-fracI (lambda (i) 1.0) (lambda (i) 1.0) 12)
;Value: .6180257510729613

