(define (pascal_triangle row coeff_number)
    (cond ((or (> coeff_number row) (< coeff_number 1)) -1)
        ((or (= coeff_number row) (= coeff_number 1)) 1)
        (else (+ (pascal_triangle (- row 1) coeff_number) (pascal_triangle (- row 1) (- coeff_number 1)))))
)

(pascal_triangle 20 8)
