(define (new-if predicate then-clause else-clause) 
(cond (predicate then-clause) (else else-clause)))
 (display (new-if (= 2 3) 0 5))

(define (good-enough? guess x) (< (abs (- (square guess) x)) 0.001))
(define (improve guess x) (average guess (/ x guess)))
(define (average x y) (/ (+ x y) 2)) 
(define (square x) (* x x) )

(define (sqrt-iter guess x)
    (new-if (good-enough? guess x)
            guess
            (sqrt-iter (improve guess x)
                        x)))
(display (sqrt-iter 1.0 5)) ;new-if会导致无限递归，不会有结果输出
; 用if就可以正常输出结果

