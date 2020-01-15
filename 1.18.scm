
(define (double n) (* n 2))
(define (halve n) (/ n 2))

(define (mul a b)
  (mul-iter a b 0))

(define (mul-iter a b product)
  (cond ((= b 0) product)
	((= b 1) product)
        ((even? b) (mul-iter a (halve b) (+ product (double a))))
        (else (mul-iter a (halve (- b 1)) (+ a product (double a))))))

