;求立方根
; y = (x/y^2+2y)/3
; (display 2)
(define (good-enough? guess x) (< (abs (- (cube guess) x)) 0.001))
(define (average x y) (/ (+ x y) 2)) 
(define (square x) (* x x ))
(define (improve guess x) 
    (average guess (/ (+ (/ x (square guess)) (* 2 guess)) 3))
    )

(define (cube x) (* (* x x) x))


(define (cube-iter guess x)
    (if (good-enough? guess x)
            guess
            (cube-iter (improve guess x)
                        x)))
(display (cube-iter 1.0 8)) ;new-if会导致无限递归，不会有结果输出
; ; 用if就可以正常输出结果 写的对的

