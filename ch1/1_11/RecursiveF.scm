(define (f_rec n)
    (if (< n 3) n
        (+ (f_rec (- n 1)) (f_rec (- n 2)) (f_rec (- n 3)))))

(define (f n)
    (define (f_iter p p1 p2 counter)
        (define res (+ p p1 p2))
        (define new_counter (+ counter 1))
        (if (= new_counter (- n 2)) res (f_iter p1 p2 res new_counter))
    )
    (if (< n 3) n (f_iter 0 1 2 0)))

(f_rec 20)
(f 20)
