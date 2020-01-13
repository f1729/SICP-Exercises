
(define (double n) (* n 2))
(define (halve n) (/ n 2))

(define (mul a b)
  (cond ((= b 0) 0)
        ((= a 0) 0)
        ((even? a) (double (mul b (halve a))))
        (else (+ b (mul b (- a 1))) )))

