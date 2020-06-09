(define (square x) (* x x))
(define (abs x) (if (<= x 0) (- x) x))

(define (cube-root x)
    (define (good-enough? new_guess prev_guess) (< (abs (- new_guess prev_guess)) 0.000001))
    (define (improve guess) (/ (+ (/ x (square guess)) (* 2 guess)) 3))
    (define (cubic-iter guess)
        (define new_guess (improve guess))
            (if (good-enough? new_guess guess)
            new_guess
            (cubic-iter new_guess)))
    (cubic-iter 1.0))

(cube-root 40353607)
(cube-root 343)
