(define (square x) (* x x))

(define (abs x) (if (<= x 0) (- x) x))

(define (average x y) (/ (+ x y) 2))

(define (improve guess x) (average guess (/ x guess)))

(define (good-enough? new_guess old_guess) (< (abs (- new_guess old_guess)) 0.000000000000001))

(define (sqrt-iter guess x)
    (define new_guess (improve guess x))
    (if (good-enough? new_guess guess)
        new_guess
        (sqrt-iter new_guess x)))

(define (sqrt x) (sqrt-iter 1.0 x))

(sqrt 100000000)
