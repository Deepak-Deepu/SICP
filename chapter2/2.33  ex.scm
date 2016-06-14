(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))


(define (map p sequence)
(accumulate (lambda (x y) (cons (p x) y)) '() sequence))

(define (double x)
(* 2 x))

(map double (list 1 2 3 4 5))
;Value  (2 4 6 8 10)

(define (append seq1 seq2)
(accumulate cons seq1 seq2))

(append (list 1 2 3) (list 4 5 6))
;Value  (4 5 6 1 2 3)

(define (length sequence)
(accumulate (lambda (x y) (+ 1 y)) 0 sequence))

(length (list 2 4 6))
;Value: 3
