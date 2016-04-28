(define (square x) (* x x))

(define (sum3 x y z)
( + (if (and (>= x y) (>= x z))
(square x)
(if (and (>= y x) (>= y z))
(square y)
(if (and (>= z x) (>= z y))
(square z))))


(if (and (>= x y) (<= x z))
(square x)
(if (and (>= y x) (<= y z))
(square y)
(if (and (>= z x) (<= z y))
(square z)


(if (and (<= x y) (>= x z))
(square x)
(if (and (<= y x) (>= y z))
(square y)
(if (and (<= z x) (>= z y))
(square z)))))))))





