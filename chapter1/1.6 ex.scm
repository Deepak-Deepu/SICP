;Your new-if is a procedure. Procedure arguments are evaluated before being passed to the procedure.
;Therefore, your recursive sqrt-iter call is going to be evaluated fully before new-if is called. 


;Your new-if needs to be a macro to function correctly. Something like:

; (define-syntax new-if
;  (syntax-rules ()
;    ((_ predicate then-clause else-clause)
;    (cond (predicate then-clause)
;           (else else-clause)))))
           
; The cond statement is wrapped as a function. Therefore, 
; in the applicative-order interpreter, 
; the ``sqrt-iter'' function in the else-clause will be
; evaluated, and this will lead to an infinite recursion until
; stack overflow.
