(define (f g)
(g 2))

(define (square x)
(* x x))

(f square)
;4

(f (lambda (z) (* z (+ z 1))))
;6

(f f)
(f 2)
(2 2)

In the first substitution the argument f (a procedure) is applied to
the value 2,so a recursive call is made.

In the second substitution,
the argument 2 is applied to 2.
Since 2 isn't a procedure, an error is reported.
