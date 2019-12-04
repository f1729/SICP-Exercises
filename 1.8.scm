;; Exercise 1.8
;; Newton's method for cube roots, which uses the approximation function:
;; (x / (y^2) + 2y) / 3

(define (cube-root x)
  (cube-root-iter 1.0 x))

(define (cube-root-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-root-iter (improve guess x) x)))

(define (good-enough? guess x)
  (= x (* guess guess guess)))


(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))
