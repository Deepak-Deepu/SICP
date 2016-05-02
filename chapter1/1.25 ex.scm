(define (expmod base exp m)
   (remainder (fast-expt base exp) m))

(define (fast-expt b n)
   (cond ((= n 0) 1)
         ((even? n) (square (fast-expt b (/ n 2))))
         (else (* b (fast-expt b (- n 1))))))

;The modified version of expmod computes huge intermediate results.
;Scheme is able to handle arbitrary-precision arithmetic, but arithmetic with arbitrarily long numbers is computationally expensive.
;This means  that we get the same (correct) results, but it takes considerably longer.


(fast-iter 3 7)
