;; "In real computers, arithmetic operations are almost always performed with
;;  limited precision." 

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))


(define (good-enough? guess x) 
  (= x (* guess guess))) ;; "limited precision"


(define (my-sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (my-sqrt-iter (improve guess x)
                 x)))

(define (my-sqrt x)
  (my-sqrt-iter 1.0 x))

(square (my-sqrt 0.0009))
