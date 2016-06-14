(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))


(define (count-leaves-recursive t) 
   (accumulate + 0 (map (lambda (node) 
                          (if (pair? node) 
                              (count-leaves-recursive node) 
                              1)) 
                        t))) 


