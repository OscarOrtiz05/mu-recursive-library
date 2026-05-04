#lang racket

(require "../primitives.rkt"
         "core.rkt")

(provide Pow Fact)

(define RPow
  (rho (C-k-n 1 1)
       (compose Mul (P-k-i 3 2) (P-k-i 3 3))))

(define Pow
  (compose RPow (P-k-i 2 2) (P-k-i 2 1)))

(define Fact
  (rho (C-k-n 0 1)
       (compose Mul
                (compose S (P-k-i 2 1))
                (P-k-i 2 2))))