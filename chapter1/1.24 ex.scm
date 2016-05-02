(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m))
                    m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))        



(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1)))))



(define (timed-prime-test n range count)
  (start-prime-test n (runtime) range count))

(define (start-prime-test n start-time range count)
  (if (fermat-test n) 
      (cond ((< n range) (report-prime n (- (runtime) start-time) range count)))
      (timed-prime-test (+ n 1) range count)))

(define (report-prime n elapsed-time range count)
  (newline)
  (display n)
  (display " *** ")
  (display elapsed-time)
  (if (< count 3) 
  (timed-prime-test (+ n 1) range (+ count 1))
  (display "over")))


(timed-prime-test  1000 1050 1)
