(define (even? x) (= (remainder x 2) 0))

(define (log-pow-iter b n mult)
    (newline)
    (display mult)
    (cond ((= n 0) mult)
        ((even? n) (log-pow-iter (* b b) (/ n 2) mult))        
        (else (log-pow-iter b (- n 1) (* mult b)))))

(define (log-pow b n)
    (log-pow-iter b n 1))

(log-pow 2 16)
