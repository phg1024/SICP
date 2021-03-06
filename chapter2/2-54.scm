(define (equal? a b)
  (cond ((and (list? a) (list? b))
           (cond ((and (null? a) (not (null? b))) false)
                 ((and (null? b) (not (null? a))) false)
                 ((eq? (car a) (car b)) (equal? (cdr a) (cdr b)))
                 (else false)))
        ((and (not (list? a)) (not (list? b))) (eq? a b))
        (else false)))
