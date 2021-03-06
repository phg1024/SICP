(define (make-monitored f)
  (let ((count 0))
    (lambda (args)
      (cond ((eq? args 'how-many-calls?) count)
            (else (begin (set! count (+ count 1))
                          (f args)))))))
