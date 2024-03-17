;应用序会导致每个函数参数先被求值，而求值（p）会导致无限递归 
;所有scheme实现都用应用序 所以会不输出结果
;正则序会先将函数参数原封不动展开再求值，因此结果为0
(define (p) (p))
(define (test x y)
    (if (= x 0)
    0
    y))

(display (test 0 (p)))