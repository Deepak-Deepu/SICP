(define (encode-symbol symbol tree)
  (cond ((not (memq symbol (symbols tree)))
         (error "bad symbol" symbol))
        ((leaf? tree) '())
        ((memq symbol (symbols (left-branch tree)))
         (cons 0 (encode-symbol symbol (left-branch tree))))
        ((memq symbol (symbols (right-branch tree)))
         (cons 1 (encode-symbol symbol (right-branch tree))))))

 (define sample-tree 
   (make-code-tree (make-leaf 'A 4) 
                   (make-code-tree 
                    (make-leaf 'B 2) 
                    (make-code-tree (make-leaf 'D 1) 
                                    (make-leaf 'C 1))))) 



(encode '(A D A B B C A) sample-tree)
;'(0 1 1 0 0 1 0 1 0 1 1 1 0)
