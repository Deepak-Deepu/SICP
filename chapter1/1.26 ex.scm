(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (* (expmod base (/ exp 2) m)
                       (expmod base (/ exp 2) m))
                    m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))


By replacing the call to square with explicit multiplication,
we've transformed expmod from a linear recursive process (like the factorial example) into a tree recursion
(like the original Fibonacci example). This causes the number of recursive calls to expmod to grow exponentially
instead of simply doubling
What was once a O(log n) process is now O(log 2n), which simplifies to O(n).
