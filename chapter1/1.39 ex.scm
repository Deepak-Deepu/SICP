(define (cont-frac n d k)
(define (recur i)
(if ( > i k)
0
(/ (n i) (+ (d i) (recur (+ i 1))))))
(recur 1))





(define (tan-cf x k)
(cont-frac  (lambda (i) (if (= i 1)
             x
            (- (square x))))
              (lambda (i) (- (* 2 i) 1))
             k))

;(tan-cf 1.0 2)
;Value: 1.4999999999999998


;(tan-cf 1.0 3)
;Value: 1.5555555555555558

;(tan-cf 1.0 5)
;Value: 1.5574074074074076

