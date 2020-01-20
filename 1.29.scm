(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (inc x) (+ x 1))

(define (cub x) (* x x x))

(define (simpson f a b n)
  (define h (/ (- b a) n))
  
  (define (yk k)
    (* (if (or (= k 0) (= k n)) 
        1
        (if (odd? k) 4 2))
       (f (+ a (* k h)))))
  
  (* (/ h 3) (sum yk 0 inc n)))
