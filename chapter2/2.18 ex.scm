(define (reverse items)
(if (null? items)
    items
    (append (reverse (cdr items)) (list (car items)))))


(reverse (list 1 2 3 4))
;Value (4 3 2 1)
