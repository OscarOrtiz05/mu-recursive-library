#lang racket

(require "../primitives.rkt")

(provide Add Double Mul Pred Sub)

(define Add (rho (P-k-i 1 1) (compose S (P-k-i 3 2))))
(define Double (compose Add (P-k-i 1 1) (P-k-i 1 1)))

(define Mul (rho (C-k-n 1 0) (compose Add (P-k-i 3 2) (P-k-i 3 3))))

(define Pred (rho (C-k-n 0 0) (P-k-i 2 1)))

(define RSub (rho (P-k-i 1 1) (compose Pred (P-k-i 3 2))))
(define Sub (compose RSub (P-k-i 2 2) (P-k-i 2 1)))