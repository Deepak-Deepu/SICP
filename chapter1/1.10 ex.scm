(define (A x y)
(cond ((= y 0) 0)
      ((= x 0) ( * 2 y))
      (( = y 1) 2)
      (else (A (- x 1)
               (A x (- y 1))))))


;(A 1 10) ;value 1024

;(A 2 4) ;value 65536

;(A 3 3) ;value 65536




(define (f n) (A 0 n))
;(f 1)   ;2
;(f 2)   ;4
;(f 3)   ;6
;(f 4)   ;8
;(f 5)   ;10
;(f 6)   ;12
computes 2*n



(define (g n) (A 1 n))
;(g 1)  ;2
;(g 2)  ;4
;(g 3)  ;8
;(g 4)  ;16
;(g 5)  ;32
;(g 6)  ;64
computes 2^n


(define (h n) (A 2 n))
;(h 1)  ;2 = 2^1
;(h 2)  ;4 = 2^2
;(h 3)  ;16 = 2^4
;(h 4)  ;65536 = 2^16
computes 2^h(n-1)


(define (k n) (* 5 n n))
;(k 1) ;5
;(k 2) ;20
;(k 3) ;45
;(k 4) ;80
;(k 5) ;125
computes 5*n^2

 
