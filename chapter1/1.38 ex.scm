(define (cont-frac n d k)
(define (recur i)
(if ( > i k)
0
(/ (n i) (+ (d i) (recur (+ i 1))))))
(recur 1))



(define (appro-e k)
(+ (cont-frac (lambda (i) 1.0)
              (lambda (i) (if (= (remainder i 3) 2)
                          (* 2 (/ (+ i 1) 3)) 1)) k) 2))



(appro-e 7)
;Value: 2.7183098591549295
