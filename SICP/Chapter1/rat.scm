(define (print-rat x)
  (newline)
  (display (car x))
  (display "/")
  (display (cdr x)))

(print-rat (cons 1 2))
