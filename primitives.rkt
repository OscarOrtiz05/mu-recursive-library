#lang racket

(provide
  (contract-out
    [C-k-n (-> exact-nonnegative-integer? any/c procedure?)]
    [S (-> integer? integer?)]
    [P-k-i (-> exact-nonnegative-integer?
               exact-nonnegative-integer?
               procedure?)]
    [compose (->* (procedure?) () #:rest (listof procedure?) procedure?)]
    [rho (-> procedure? procedure? procedure?)]
    [mu (-> procedure? procedure?)]
    [mu/bounded (-> procedure? integer? procedure?)]))

;; Constant function
(define C-k-n
  (lambda (k n)
    (lambda args
      (if (= (length args) k)
          n
          (error 'C-k-n "expected ~a arguments, got ~a" k (length args))))))

;; Successor
(define S
  (lambda (x) (+ x 1)))

;; Projection
(define P-k-i
  (lambda (k i)
    (lambda args
      (cond
        [(not (= (length args) k))
         (error 'P-k-i "expected ~a arguments, got ~a" k (length args))]
        [(or (< i 1) (> i k))
         (error 'P-k-i "index ~a out of bounds for arity ~a" i k)]
        [else
         (list-ref args (- i 1))]))))

;; Composition
(define compose
  (lambda (h . gs)
    (lambda args
      (apply h
             (map (lambda (g) (apply g args))
                  gs)))))

;; Primitive recursion
(define rho
  (lambda (g h)
    (lambda (n . args)
      (when (< n 0)
        (error 'rho "expected nonnegative n, got ~a" n))
      (define (rec n)
        (if (= n 0)
            (apply g args)
            (apply h
                   (cons (- n 1)
                         (cons (rec (- n 1)) args)))))
      (rec n))))

;; Minimization
(define mu
  (lambda (f)
    (lambda args
      (define (search y)
        (if (= (apply f (cons y args)) 0)
            y
            (search (+ y 1))))
      (search 0))))

;; Minimization (bounded) *Note: this functions isn't mathematically pure
;; should only be used to test for possible partial functions
(define mu/bounded
  (lambda (f limit)
    (lambda args
      (define (search y)
        (cond
          [(> y limit)
           (error 'mu/bounded "no solution up to ~a" limit)]
          [(= (apply f (cons y args)) 0)
           y]
          [else
           (search (+ y 1))]))
      (search 0))))