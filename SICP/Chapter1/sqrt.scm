(define (square x) (* x x))

(define (average x y) 
        (/ (+ x y) 2))

;; it's the library 
(display (sqrt 2)) ; why the answer is same with line24
(newline)

(define (sqrt-iter guess x)
        (if (good-enough? guess x)
         guess
         (sqrt-iter (improve guess x)
                    x)))

(define (improve guess x)
        (average guess (/ x guess)))

(define (good-enough? guess x)
        (< (abs (- (square guess) x))  0.0001))

(define (sqrt x)
        (sqrt-iter 1.0 x))

;;(display (sqrt 2))
(display (sqrt 2)) ;;精度不够，调整为0.0000001完全一致
(newline)



(define (new-if predicate then-clause else-clause)
        (cond (predicate then-clause)
              (else else-clause)))

(define (new-sqrt-iter guess x)
        (new-if (good-enough? guess x)
         guess
         (new-sqrt-iter (improve guess x)
                    x)))
(define (new-sqrt x)
        (new-sqrt-iter 1.0 x))

;;(display (new-sqrt 2))
;;(newline)
