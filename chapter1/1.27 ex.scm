(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m))
                    m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))        
                    
                    
(define (fermat-test-all n)
 (define (try-it a)
    (cond ((= a n) n)
          ((= (expmod a n n) a) (try-it (+ a 1)))
          (else a))) 
(try-it 1)) 

(define (charmichael? n)
 (= n (fermat-test-all n)))                     

  
;(charmichael? 561)  
;value: #t

;(charmichael? 1105)  
;value: #t

;(charmichael? 1729)
;value: #t

;(charmichael? 2465)                      
;value: #t

;(charmichael? 2821)
;value: #t
                      
;(charmichael? 6601)
;value: #t


                      

                      
