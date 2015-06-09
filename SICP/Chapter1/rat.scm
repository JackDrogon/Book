(define (print-rat x)
  (display (car x))
  (display "/")
  (display (cdr x))
  (newline))

(print-rat (cons 1 2))
