;Newton's method for cube root

(define (cube x) (* x x x))

(define (cube-iter guess x)
(if (good-enough? guess x)
guess
(cube-iter (improve guess x)
x)))

(define (improve guess x)
(average (* 2 guess) (/ x (* guess guess))))

(define (average x y)
(/ (+ x y) 3))

(define (good-enough? guess x)
(< (abs (- (cube guess) x)) 0.001))

(define (cuber x)
(cube-iter 1.0 x))



