(define (inc x)
(+ x 1))

(define (double x)
(lambda(y) ( x (x y))))





;(((double (double double )) inc) 5)
;Value: 21
;      2  *    2   *     2 = 8 times

;same as
;((double (double (double (double inc)))) 5) 
;Value: 21
;               2       * 2    * 2=8 times
                  
