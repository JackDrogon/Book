;;#!/usr/bin/env guile
;; Hello,World

(+ 1 2 3)
(display (+ 1 2 3))
(newline)

(display "Hello,World!\n")

;; 对齐的时候括号的匹配，看缩进的程度到要匹配的层级,如果是完全的缩进
;; 比如(+ 4 
;;        5)
;; 那么缩进就是层级数
;; 如果出现(+ 3 5)这样的非完全展开的式子，出现几次加机，下面的例子是加1
(+ (* 3
      (+ (* 2 4)
         (+ 3 5)))
   (+ (- 10 7)
      6))

(define size 2)
(define pi 3.1415926)

;; (define (<name> <formal parameters>) <body>)
(define (square x) (* x x))
(display (square 10))
(newline)

;; 本质上面来说function就是类似于+/-等得symbol 因而 +/-只是预定义了
;; ? 变长形参列表如何
(define (sum x y) (+ x y))
(display (sum 10 20))
(newline)

;; (cond (<p1> <e1>)
;;       (<p2> <e2>) 
;;       (<pn> <en>))
(define (abs x)
 (cond  ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) -x)))

(define (abs_ x)
 (cond  ((> x 0) x)
        (else (- x))))
