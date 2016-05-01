(define (pascal n d)
(cond ((= d 0) 1)
      ((= d n) 1)
(else (+ (pascal (- n 1) (- d 1))
(pascal (- n 1) d)))))



