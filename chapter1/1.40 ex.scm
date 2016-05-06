(define (cubic a b c)
  (lambda (x) (+ (* x x x)
		 (* a x x)
		 (* b x)
		 c)))

(define (deriv g)
  (define dx 0.00001)
  (lambda (x)
    (/ (- (g (+ x dx)) (g x))
       dx)))

(define (newton-transform g)
  (lambda (x)
    (- x (/ (g x) ((deriv g) x)))))

(define (fixed-point f first-guess)
  (define tolerance 0.00001)
  (define (close-enough? v1 v2)
    (< (abs(- v1 v2)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
	  next
	  (try next))))
  (try first-guess))

(define (newtons-method g guess)
  (fixed-point (newton-transform g) guess))

(define (cube x) (* x x x))
(define (square x) (* x x))



(newtons-method (cubic1 3 -2 6) 1)
;Value: -3.9054740060659268

(newtons-method (cubic1 -5 3 1) 4)
;Value: 4.236067977501216





