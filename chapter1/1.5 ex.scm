APPLICATION ORDER EVALUATION
In the case of applicative order evaluation of ( test 0 (p) ), you are supposed to evaluate the argument subxpressions first. These are 0 and (p).

evaluation of a literal value like 0 yield that value.

the second argument however is a procedure call to a parameter-less procedure called p. It has no parameter, so that we have no worry about evaluation order. Then, in order to pursue evaluation, we have to replace the call by the body of the procedure which follows the list of arguments, and then evaluate that body. The body of procedure p, as defined by the declaration (define (p) (p) ), is (p), so that we are left with the evaluation of what we were just trying to evaluate. In order words, the evaluation process is caught in a loop, and will not terminate.
... and you never get to actually finish the call to the function test, since evaluation of its arguments does not terminate. Your program does not terminate.

This risk of non termination, even when the guilty argument will never be used in the call, is one of the reasons to use instead normal order evaluation, which may be a bit harder to implement, but may have better termination properties.

NORMAL ORDER EVALUATION
Under normal order evaluation, you do not touch the argument sub-expressions. What you do is replace the call ( test 0 (p) ) by the body of the function test, i.e. (if (= x 0) 0 y), where the names of the (formal) arguments x and y are replaced by the corresponding actual arguments 0 and (p) (up to environment, or renaming issues, that are important but would complicate the explanation here, and are the main difference between the original Lisp and the Scheme language).

Hence you replace the evaluation of ( test 0 (p) ) by the evaluation of (if (= 0 0) 0 (p)).

Now the function if is a primitive function that usually always evaluate its first argument, but evaluates its last 2 arguments in normal order, evaluating only the useful one, depending on whether the first evaluates to false or true (actually NIL or #f for false, or some other value for true, in the case of Scheme - if my memory does not fail me). Since (= 0 0) evaluates to true, evaluation of the conditional amount to evaluating the yet unevaluated second argument, which is 0, which unsurprisingly (except in old Fortran) evaluates to 0
