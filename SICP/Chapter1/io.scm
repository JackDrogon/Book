(define (println x)
  (display x)
  (newline))
(println current-input-port)
(println current-output-port)
;; (read)

(define name (read))  ;; 此处的scheme也是省略了'\n'
(println name)
