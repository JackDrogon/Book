;; Factorial Improve
;; Use liner itretator

(define (factorial x)
  (define (iter i v)
    (if (> i x)
        v
        (iter (+ i 1) (* v i))))
  (iter 1 1))

(display (factorial 5))
(newline)

(display (factorial 6))
(newline)
