(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (divides? a b)
  (= (remainder b a) 0))



(define (prime? n)
  (= n (smallest-divisor n)))



(define (timed-prime-test n range count)
  (start-prime-test n (runtime) range count))

(define (start-prime-test n start-time range count)
  (if (prime? n) 
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





