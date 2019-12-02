(define (square x) (* x x))

(define (square-sum-two a b) (+ (square a) (square b)))

(define (square-sum-larger a b c)
  (cond ((and (< c a) (< c b)) (square-sum-two a b))
        ((and (< b a) (< b c)) (square-sum-two a c)) 
        ((and (< a b) (< a c)) (square-sum-two b c))
  )
)
