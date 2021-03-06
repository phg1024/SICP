(define (make-account balance secret_password)
  (define count 0)
  (define (withdraw amount)
    (if (>= balance amount)
        (begin (set! balance (- balance amount))
               balance)
        "Insufficient funds"))
  (define (deposit amount)
    (set! balance (+ balance amount))
          balance)
  (define (call-the-cops) "Calling the cops")
  (define (dispatch password m)
      (if (eq? password secret_password)
          (cond ((eq? m 'withdraw) withdraw)
                ((eq? m 'deposit) deposit)
                (else (error "Unknown request: MAKE-ACCOUNT" m)))
          (lambda (x) (begin (set! count (+ count 1))
                             (if (> count 7)
                                 (call-the-cops)
                                 "Incorrect password.")))))
  dispatch)
